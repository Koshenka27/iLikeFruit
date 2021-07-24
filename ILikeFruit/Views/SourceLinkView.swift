//
//  SourceLinkView.swift
//  ILikeFruit
//
//  Created by Logan Koshenka on 7/24/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                    .foregroundColor(.blue)
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
    }
}
