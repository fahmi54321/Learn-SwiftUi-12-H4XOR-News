//
//  DetailView.swift
//  Learn-SwiftUi-12-H4XOR-News
//
//  Created by Fahmi Aziz on 12/05/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}


