//
//  OnboardingPage.swift
//  trainnigTab
//
//  Created by Lion on 11/07/2025.
//


import SwiftUI
import Swift
struct OnboardingContent: View {
    var title: String
    var image: String
    var isSystemName: Bool = true
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            
            if isSystemName {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 280)
            } else {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 280)
            }
        }
        .padding()
    }
}

#Preview {
    VStack {
        OnboardingContent(title: "Football", image: "soccerball.inverse")
        OnboardingContent(title: "Local Image", image: "myImage", isSystemName: false)
    }
}
