//
//  ToggleView.swift
//  SmashFinal
//
//  Created by Valentinus Kenji on 03/04/24.
//

import SwiftUI

struct ToggleView: View {
    @State var isOn: Bool = false
    var body: some View {
        HStack(){
            Text("Remember Me").font(.footnote)
            Toggle("", isOn: $isOn).labelsHidden()}
    }
}
    

#Preview {
    ToggleView()
}
