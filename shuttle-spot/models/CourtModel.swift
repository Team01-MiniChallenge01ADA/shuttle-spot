//
//  CourtModel.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 03/04/24.
//

import Foundation

struct CourtModel : Decodable, Identifiable{
    var id: Int
    var name: String
    var img: String
    var address: String
    var priceStart: Int
    var priceEnd: Int
    var coordinate: String
}
