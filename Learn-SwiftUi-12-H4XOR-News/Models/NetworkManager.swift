//
//  NetworkManager.swift
//  Learn-SwiftUi-12-H4XOR-News
//
//  Created by Fahmi Aziz on 30/04/23.
//

import Foundation

class NetworkManager: ObservableObject{
    
    @Published var post = [Post]()
    
    func fetchData(){
        if let url = URL(string: "url api"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.post = results.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
