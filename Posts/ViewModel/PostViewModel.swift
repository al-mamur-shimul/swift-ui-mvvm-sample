//
//  PostViewModel.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/19/22.
//

import Foundation
import Combine

class PostViewModel: ObservableObject {
    let postService: PostService!

    @Published var postListFetchState: PostListFetchState = PostListFetchState(posts: [], isLoading: true)


    init() {
        postService = PostService()
        fetchPosts()
    }

    func fetchPosts() {
        postService?.fetchPosts(onSuccess: { posts in

            DispatchQueue.main.async {
                self.postListFetchState.posts = posts!
                self.postListFetchState.isLoading.toggle()
            }
        }, onFailure: { error in

            DispatchQueue.main.async {
                self.postListFetchState.error = error
                self.postListFetchState.isLoading.toggle()
            }
        })
    }
}
