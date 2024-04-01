//
//  ContentView.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 26/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var progress = 0.5;
    @State var searchInput :String = "";
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
                            Image(systemName: "pin.fill")
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
                
                ZStack(alignment: .leading){
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .stroke(Color.gray.opacity(0.3))
                        .frame(height:85)
                    HStack{
                        VStack(alignment: .leading){
                            Text("Reminder -12 March 2024")
                                .font(.caption2)
                                .foregroundColor(.gray)
                            Text("Gading Badminton Court")
                                .font(.subheadline)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("09:00 AM - 12:00 PM")
                                .font(.footnote)
                        }
                        Spacer()
                        ProgressView(value: progress)
                            .progressViewStyle(CircularBarProgressViewStyle())
                            .scaleEffect(2.0)
                            .frame(width: 25, height: 25)
                            .padding(.horizontal)
                    }.padding()
                }.padding(.horizontal)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.clear)
                        .stroke(Color.gray.opacity(0.3))
                        .frame(height:55)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                        TextField("Search badminton court ...", text: $searchInput)
                            .padding(.horizontal, 5)
                            .font(.body)
                    }.padding(.horizontal)
                }.padding(.horizontal)
                    .padding(.vertical,10)
                
                HStack{
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 15, height: 15)
                        .padding(10)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray.opacity(0.3))
                        )
                    
                    Text("Nearest")
                        .font(.caption)
                        .frame(height: 15)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray.opacity(0.3))
                        )
                
                    Text("Lowest")
                        .font(.caption)
                        .frame(height: 15)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray.opacity(0.3))
                        )
                    
                    Text("Highest")
                        .font(.caption)
                        .frame(height: 15)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray.opacity(0.3))
                        )
                }.padding(.horizontal)
                
                ScrollView{
                    VStack(spacing: 20){
                        ForEach(1...20, id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.gray.opacity(0.3))
                                    .frame(height: 100)
                            }
                        }
                    }
                }.padding(.horizontal)
                    .padding(.top,20)
            }.frame(width: geometry.size.width, height: geometry.size.height, alignment: .topLeading)
        }
    }
}

struct CircularBarProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Circle()
                   .trim(from: 0.0, to: 1.0)
                   .stroke(lineWidth: 4.0) // Adjust line width as needed
                   .opacity(0.3)
                   .foregroundColor(Color(.black)) // Customize color as needed

               Circle()
                   .trim(from: 0.0, to: CGFloat(min(configuration.fractionCompleted ?? 0, 1)))
                   .stroke(lineWidth: 4.0) // Adjust line width as needed
                   .foregroundColor(Color(.black)) // Customize color as needed
                   .rotationEffect(Angle(degrees: -90))
            }
        }
    }
}

#Preview {
    ContentView()
}
