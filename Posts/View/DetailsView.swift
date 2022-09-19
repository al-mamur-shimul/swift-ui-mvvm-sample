//
//  DetailsView.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/14/22.
//

import SwiftUI

struct DetailsView: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(post.title).font(.title3).fontWeight(.bold)
            Text(post.body).font(.caption)
            Spacer()
        }
                .navigationTitle("Post details")
                .navigationBarTitleDisplayMode(.inline)


    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(post: Post(id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderi", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"))
    }
}
