//
//  ChatCardComponent.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 04/04/24.
//

import Foundation
import SwiftUI

struct ChatCardComponent: View {
    var data: UserModel? = nil
    var body: some View {
        NavigationLink(destination: ChatDetailPage(viewModel:ChatViewModel())){
            HStack{
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: 60, height: 60)
                VStack{
                    HStack {
                        Text("Istora Senayan")
                            .font(.title2)
                        Spacer()
                        Text("2 min ago")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("Penuh kak hari ini")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                        Spacer()
                    }
                }
            }
            .padding(.horizontal)

        }
    }
}
