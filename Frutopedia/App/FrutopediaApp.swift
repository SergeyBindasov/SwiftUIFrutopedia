//
//  FrutopediaApp.swift
//  Frutopedia
//
//  Created by Sergey on 07.04.2023.
//

import SwiftUI

@main
struct FrutopediaApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
