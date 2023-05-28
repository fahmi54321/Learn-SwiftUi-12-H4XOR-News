//
//  ContentView.swift
//  Learn-SwiftUi-12-H4XOR-News
//
//  Created by Fahmi Aziz on 30/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.post) { post in
                
                NavigationLink(destination: DetailView(url: post.title)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4XOR NEWS")
        }
        
        .onAppear{
            self.networkManager.fetchData()
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
