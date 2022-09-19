//
//  Post.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/14/22.
//

import Foundation

struct Post: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
