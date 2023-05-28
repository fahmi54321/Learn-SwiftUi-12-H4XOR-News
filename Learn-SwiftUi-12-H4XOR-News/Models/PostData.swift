//
//  PostData.swift
//  Learn-SwiftUi-12-H4XOR-News
//
//  Created by Fahmi Aziz on 30/04/23.
//

import Foundation

struct Result: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
