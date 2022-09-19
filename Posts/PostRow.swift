//
//  PostRow.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/14/22.
//

import SwiftUI

struct PostRow: View {
    let post: Post
    var body: some View {
        HStack {
            Text(String(post.id)).font(.title).padding(.trailing, 12)
            VStack(alignment: .leading) {
                Text(post.title).font(.title3).fontWeight(.bold).lineLimit(2).padding(.bottom, 2)
                Text(post.body).font(.caption).lineLimit(3)
            }
        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: Post(id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderi", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"))
    }
}
