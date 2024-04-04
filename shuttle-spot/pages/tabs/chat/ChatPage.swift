//
//  ChatPage.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 02/04/24.
//

import Foundation
import SwiftUI

struct ChatPage : View {
    var body: some View {
        GeometryReader{geometry in
            ScrollView{
                Spacer().frame(height: geometry.size.height / 100 * 10)
                ChatCardComponent()
                ChatCardComponent()
                ChatCardComponent()
            }
        }.ignoresSafeArea()
    }
}

struct ChatPagePreviews_Previews: PreviewProvider {
    static var previews: some View {
        ChatPage()
    }
}
