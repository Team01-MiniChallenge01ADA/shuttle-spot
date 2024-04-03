//
//  FilterComponent.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 03/04/24.
//

import Foundation
import SwiftUI

struct FilterComponent: View {
    var action: ()->Void
    var icon: String
    var label: String?
    
    var body: some View {
        Button(action: action){
            Image(systemName: "\(icon)")
                .foregroundColor(.black)
            
            if label != nil{
                Text("\(label!)")
                    .font(.footnote)
                    .foregroundStyle(.black)
            }
        }.padding(.horizontal, 15)
        .padding(.vertical,8)
        .background(.filterStyle)
        .mask(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black.opacity(0.1), radius:5)

    }
}
