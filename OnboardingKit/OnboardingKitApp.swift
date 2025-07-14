//
//  trainnigTabApp.swift
//  trainnigTab
//
//  Created by Lion on 11/07/2025.
//

import SwiftUI

@main
struct OnboardingKitApp: App {
    init() {
        #if DEBUG
        UserDefaults.standard.set(false, forKey: "onboardingShown")
        #endif
    }
    var body: some Scene {
        WindowGroup {
         
            ContentView()
        }
    }
}
