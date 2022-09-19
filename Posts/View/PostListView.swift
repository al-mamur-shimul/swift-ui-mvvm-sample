//
//  PostListView.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/19/22.
//

import SwiftUI
import Combine

struct PostListView: View {

    @ObservedObject var postViewModel: PostViewModel = PostViewModel()


    var body: some View {

        if postViewModel.postListFetchState.isLoading && postViewModel.postListFetchState.error == nil {
            HStack(alignment: VerticalAlignment.center) {
                ProgressView()
                        .foregroundColor(.white)
                        .padding(.all, 20)
                        .background(.gray.opacity(0.5))
                        .navigationTitle(Text("Posts"))
                        .navigationBarTitleDisplayMode(.large)
            }
        } else if !postViewModel.postListFetchState.isLoading && postViewModel.postListFetchState.error != nil {
            HStack(alignment: VerticalAlignment.center, spacing: 16.0) {
                VStack {
                    Image(systemName: "x.circle").resizable()
                            .frame(width: 40, height: 40)
                    Text(postViewModel.postListFetchState.error?.localizedDescription ?? "").padding()
                            .multilineTextAlignment(.center)
                }
                        .navigationBarTitleDisplayMode(.large)
            }
        } else {
            List(postViewModel.postListFetchState.posts) { post in
                NavigationLink(destination: DetailsView(post: post)) {
                    PostRow(post: post)
                }
            }
                    .listStyle(.plain)
                    .navigationTitle(Text("Posts"))
                    .navigationBarTitleDisplayMode(.large)
        }


    }

    struct PostListView_Preview: PreviewProvider {
        static var previews: some View {
            PostListView()
        }
    }
}
