//
//  ChatDetailPage.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 04/04/24.
//

import Foundation
import SwiftUI
import Firebase

struct Message: Identifiable {
    var id = UUID()
    var sender: String
    var receiver: String
    var content: String
}

class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()
    
    private let db = Firestore.firestore()
    private var listener: ListenerRegistration?
    
    func fetchData() {
        listener = db.collection("messages")
            .order(by: "timestamp", descending: false)
            .addSnapshotListener { snapshot, error in
                guard let documents = snapshot?.documents else {
                    print("Error fetching documents: \(error!)")
                    return
                }
                self.messages = documents.map { document in
                    let data = document.data()
                    let sender = data["sender"] as? String ?? ""
                    let content = data["content"] as? String ?? ""
                    return Message(sender: sender, receiver: "d4sontiovino@gmail.com", content: content)
                }
            }
    }
    
    func sendMessage(sender: String, content: String) {
        db.collection("messages").addDocument(data: [
            "sender": sender,
            "content": content,
            "timestamp": Date()
        ])
    }
}

struct ChatDetailPage: View {
    @ObservedObject var viewModel: ChatViewModel
    @State private var newMessage: String = ""
    @State private var sender: String = "User" // Change this to use different email
    
    var body: some View {
        VStack {
            List(viewModel.messages) { message in
                Text("\(message.sender): \(message.content)")
            }
            HStack {
                TextField("Type a message", text: $newMessage)
                Button(action: sendMessage) {
                    Text("Send")
                }
            }.padding()
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
    
    func sendMessage() {
        viewModel.sendMessage(sender: sender, content: newMessage)
        newMessage = ""
    }
}

struct ContentView: View {
    let viewModel = ChatViewModel()
    
    var body: some View {
        NavigationView {
            ChatDetailPage(viewModel: viewModel)
                .navigationTitle("Chat")
        }
    }
}

struct ChatDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatDetailPage(viewModel: ChatViewModel())
    }
}
