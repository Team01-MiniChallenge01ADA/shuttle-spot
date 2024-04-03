//
//  CourtCardComponent.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 03/04/24.
//

import Foundation
import SwiftUI

extension Int{
    var formattedPriceToK: String{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 1
        
        if self >= 1000 && self < 1000000{
            return "\(formatter.string(from: NSNumber(value: Double(self) / 1000)) ?? "")K"
        }else{
            return "\(formatter.string(from: NSNumber(value: self)) ?? "")"
        }
    }
}


struct CourtCardComponent: View {
    var detail: CourtModel
    
    var body: some View {
        NavigationLink(destination: CourtDetailPage(detail: detail)){
            HStack{
                Image(systemName: "photo.artframe")
                    .foregroundColor(.black)
                    .frame(width: 125, height: 125)
                    .background(.black.opacity(0.1))
                VStack (alignment: .leading){
                    Text(detail.name)
                        .font(.body)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    HStack{
                        Image(systemName: "mappin.and.ellipse.circle.fill")
                            .foregroundColor(.accent)
                        Text(detail.address)
                            .font(.caption)
                    }
                    
                    HStack{
                        Image(systemName: "dollarsign.circle.fill")
                            .foregroundColor(.accent)
                        Text("Rp.\(detail.priceStart.formattedPriceToK) - \(detail.priceEnd.formattedPriceToK) ")
                            .font(.caption)
                    }
                    
                    HStack{
                        Image(systemName: "car.circle.fill")
                            .foregroundColor(.accent)
                        Text("2km")
                            .font(.caption)
                    }
                    
                }.padding()
                .foregroundColor(.black)
            }
            Spacer()
        }
        .frame(height: 125)
        .background(.white)
        .mask(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal, 15)
        .padding(.vertical,8)
        .shadow(color: .black.opacity(0.1), radius:5)
            
    }
}

