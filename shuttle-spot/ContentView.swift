//
//  ContentView.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 26/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .leading){
                        HStack(spacing: 0){
                            Text("Hello, ")
                            Text("Dason Tiovino")
                                .font(.headline)
                        }
                        HStack(spacing:10){
                            Image(systemName: "pin.figll")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 10)
                                .foregroundColor(.gray)
                            Text("Indonesia, Jakarta")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:geometry.size.width/100 * 10)
                }.padding()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .stroke(Color.gray.opacity(0.3))
                        .frame(height:70)

                    VStack(alignment: .leading){
                        Text("Court Booking Reminder")
                            .font(.caption)
                        Text("12 March 2024")
                            .font(.caption)
                    }
                }.padding(.horizontal)
            }.frame(width: geometry.size.width, height: geometry.size.height, alignment: .topLeading)
        }
    }
}

#Preview {
    ContentView()
}
