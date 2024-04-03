//
//  HomePage.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 02/04/24.
//

import Foundation
import SwiftUI

struct HomePage : View {
    @State var searchInput: String = ""
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView (){
                // Information Card
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                    RoundedRectangle(cornerRadius: 0)
                        .fill(
                            LinearGradient(
                                colors: [.clear, .white.opacity(0.05)],
                                startPoint: UnitPoint(x: -1, y: -1),
                                endPoint: UnitPoint(x: 0, y: 0)
                            )
                        )
                        .frame(
                            width: geometry.size.width,
                            height: 60
                        ).rotationEffect(.degrees(-38.24))
                        .offset(x:-50,y:0)
                    
                    RoundedRectangle(cornerRadius: 0)
                        .fill(
                            LinearGradient(
                                colors: [.clear, .white.opacity(0.05)],
                                startPoint: UnitPoint(x: -20, y: -1),
                                endPoint: UnitPoint(x:0, y: 0)
                            )
                        )
                        .frame(
                            width: geometry.size.width,
                            height: 100
                        )
                        .rotationEffect(.degrees(-38.24))
                        .offset(
                            x:-200 + 100/2,
                            y: -10
                        )
                    
                    HStack{
                        VStack (alignment:.leading){
                            Text("Hello, Dason")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            HStack (alignment: .center){
                                Image(systemName: "mappin.circle.fill")
                                    .foregroundColor(.white)
                                Text("BSD City, Tangerang")
                                    .foregroundColor(.white)
                            }
                        }
                    }.padding(.horizontal, 25)
                        .padding(.top, 40)
                    
                    Image("shuttlecock")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 220)
                        .offset(x: geometry.size.width - 200, y: 0)
                    
                }.frame(
                    width: geometry.size.width,
                    height: geometry.size.height / 100 * 20
                ).background(.gray)
                    .mask(UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 0, bottomLeading: 40, bottomTrailing: 40, topTrailing: 0)))
                
                // Reminder Section
                VStack(alignment:.leading){
                    Text("Reminder")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.bottom, -5)
                    
                    ZStack(alignment: Alignment(
                        horizontal: .leading, vertical: .center)){
                            RoundedRectangle(cornerRadius: 25.0)
                                .fill(.black.opacity(0.78))
                            
                            HStack(alignment:.center){
                                VStack(alignment:.leading){
                                    Text("29 MAR")
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.8))
                                    
                                    Text("Istora Senayan")
                                        .font(.title2)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    
                                    Text("09:00 AM - 10:00 AM")
                                        .font(.callout)
                                        .foregroundColor(.white.opacity(0.8))
                                }
                                
                                Spacer()
                                
                                VStack{
                                    HStack{
                                        Text("0")
                                            .font(.system(size: 52))
                                            .foregroundColor(.white)
                                        Text("2")
                                            .font(.system(size: 52))
                                            .foregroundColor(.white)
                                    }.padding(.horizontal)
                                    Text("days remaining")
                                        .font(.caption)
                                        .foregroundColor(.white)
                                }
                                
                            }.padding(.horizontal, 20)
                            .padding()
                        }.padding(.horizontal)
                }.scaledToFit()
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.filterStyle)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray.opacity(0.5))
                            TextField("Search", text: $searchInput)
                        }.padding(.horizontal)
                    ).frame(
                        height:40
                    )
                    .padding(.vertical, 5)
                    .padding(.horizontal)
                    .padding(.top,10)
                

                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        FilterComponent(action: {
                            
                        }, icon: "line.3.horizontal.decrease.circle.fill")
                        
                        FilterComponent(action: {
                            
                        }, icon: "mappin.and.ellipse.circle.fill", label: "Nearest")
                        
                        FilterComponent(action: {
                            
                        }, icon: "dollarsign.circle.fill", label: "Price")
                        
                        FilterComponent(action: {
                            
                        }, icon: "sportscourt.fill", label: "Open")
                    }
                    .frame(height: 100)
                    .padding(.horizontal)
                }
                .frame(height: 50)
                
                    
                
                CourtCardComponent(detail: CourtModel(
                    id: 1,
                    name: "Soedirman",
                    img: "Dummy",
                    address: "Jl. Adi Sucipto no 31B",
                    priceStart: 40_000,
                    priceEnd: 50_000,
                    coordinate: "somewhat here")
                )
                
                CourtCardComponent(detail: CourtModel(
                    id: 1,
                    name: "Istora Senayan",
                    img: "Dummy",
                    address: "Jl. Adi Sucipto no 31B",
                    priceStart: 40_000,
                    priceEnd: 50_000,
                    coordinate: "somewhat here")
                )
                
                CourtCardComponent(detail: CourtModel(
                    id: 1,
                    name: "Gajah Mada",
                    img: "Dummy",
                    address: "Jl. Adi Sucipto no 31B",
                    priceStart: 40_000,
                    priceEnd: 50_000,
                    coordinate: "somewhat here")
                )
                
                CourtCardComponent(detail: CourtModel(
                    id: 1,
                    name: "Smash",
                    img: "Dummy",
                    address: "Jl. Adi Sucipto no 31B",
                    priceStart: 40_000,
                    priceEnd: 50_000,
                    coordinate: "somewhat here")
                )
                
                CourtCardComponent(detail: CourtModel(
                    id: 1,
                    name: "Ayani",
                    img: "Dummy",
                    address: "Jl. Adi Sucipto no 31B",
                    priceStart: 40_000,
                    priceEnd: 50_000,
                    coordinate: "somewhat here")
                )
                
                Spacer()
                    .frame(height: 100)
            }
        }.ignoresSafeArea()
    }
}




struct HomePagePreviews_Previews: PreviewProvider {
    static var previews: some View {
        TabPage()
    }
}
