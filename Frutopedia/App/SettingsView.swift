//
//  SettingsView.swift
//  Frutopedia
//
//  Created by Sergey on 11.04.2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Frutopedia", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Text("Most fruits are naturally law in fat, sodium and calories. None have cholesterol. Fruits are sourses of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - Section 2
                    
                    // MARK: - Section 3
                    
                }//: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
        
    }
}
// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
