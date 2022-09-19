//
//  PostsApp.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/14/22.
//

import SwiftUI

@main
struct PostsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                PostListView()
            }
        }
    }
}
