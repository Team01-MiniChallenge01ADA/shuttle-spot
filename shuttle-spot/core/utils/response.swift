//
//  response.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 03/04/24.
//

import Foundation

struct Response<T:Decodable> : Decodable{
    var data : T
}
