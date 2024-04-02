//
//  TabPage.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 02/04/24.
//

import Foundation
import SwiftUI

struct TabPage : View {
    var body: some View {
        TabView{
            HomePage()
                .tabItem {
                    Label("Court", systemImage: "sportscourt.fill")
                }
            
            ChatPage()
                .tabItem {
                    Label("Inbox", systemImage: "bubble.fill")
                }
            
            ProfilePage()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .transition(.slide)
    }
}

struct TabPagePreviews_Previews: PreviewProvider {
    static var previews: some View {
        TabPage()
    }
}
