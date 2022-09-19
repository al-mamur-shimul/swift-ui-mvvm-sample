//
//  PostService.swift
//  Posts
//
//  Created by Abdullah Al Mamur on 9/19/22.
//

import Foundation

struct PostService{
    
    
    func fetchPosts(onSuccess: @escaping ([Post]?) -> (), onFailure:@escaping (Error) -> () ){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        let task = URLSession.shared.dataTask(with: url!) { data, response, error in
            
            if error != nil{
                onFailure(error!)
            }
            
            let decoder = JSONDecoder()
            do{
                let posts =  try decoder.decode([Post].self, from: data!)
                onSuccess(posts)
            }catch{
                onFailure(error)
            }
            
        }
        
        task.resume()
        
    }
    
}
