//
//  PostListFetchState.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/19/22.
//

import Foundation

struct PostListFetchState {
    var posts: [Post] = []
    var error: Error?
    var isLoading: Bool = true

    init(posts: [Post], error: Error? = nil, isLoading: Bool) {
        self.posts = posts
        self.error = error
        self.isLoading = isLoading
    }
}
