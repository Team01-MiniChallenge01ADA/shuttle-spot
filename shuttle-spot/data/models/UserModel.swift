//
//  UserModel.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 04/04/24.
//

import Foundation


struct UserModel : Decodable, Identifiable{
    var id: Int
    var name: String
    var img: String
    var email: String
}
