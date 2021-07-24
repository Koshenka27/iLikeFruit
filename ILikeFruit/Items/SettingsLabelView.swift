//
//  SettingsLabelView.swift
//  ILikeFruit
//
//  Created by Logan Koshenka on 7/24/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "I Like Fruit", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
