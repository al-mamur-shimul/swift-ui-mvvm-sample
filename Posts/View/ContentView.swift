//
//  ContentView.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    @State private var posts: [Post] = []
    
    
    var body: some View {
        NavigationView{
            VStack {
                List(posts, id: \.id){ post in
                    NavigationLink{
                        DetailsView(post: post)
                    } label: {
                        PostRow(post: post)
                    }
                }
            }.navigationTitle("Posts")
            .onAppear{
                loadPosts()
            }
        }
    }
    
    func loadPosts(){
     

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
