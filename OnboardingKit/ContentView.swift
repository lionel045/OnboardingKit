//
//  ContentView.swift
//  trainnigTab
//
//  Created by Lion on 11/07/2025.
//

import SwiftUI

    struct ContentView: View {
        @AppStorage("onboardingShown") var onboardingShown: Bool = false
    var body: some View {
        VStack {
            if onboardingShown {
                HomeView()
            } else {
                OnboardingView(totalPages: 3, selectedColor: .blue, unselectedColor: .brown, indicatorStyle: .dot,)
            }
        }
    }
}

#Preview {
    ContentView()
}
