//
//  SettingsLabelView.swift
//  Frutopedia
//
//  Created by Sergey on 11.04.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frutopedia", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
