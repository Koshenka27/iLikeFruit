//
//  ILikeFruitApp.swift
//  ILikeFruit
//
//  Created by Logan Koshenka on 7/19/21.
//

import SwiftUI

@main
struct ILikeFruitApp: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    
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
