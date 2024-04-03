//
//  ChatModel.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 04/04/24.
//

import Foundation


struct ChatModel : Decodable, Identifiable{
    var id: Int
    var name: String
    var img: String
    var address: String
    var priceStart: Int
    var priceEnd: Int
    var coordinate: String
}
