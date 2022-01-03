//
//  BusinessSearch.swift
//  City Sights App
//
//  Created by G. Michael Fortin Jr on 1/3/22.
//

import Foundation

struct BusinessSearch: Decodable {
    var businesses = [Business]()
    var total = 0
    var region = Region()
}

struct Region: Decodable {
    var center = Coordinate()
}
