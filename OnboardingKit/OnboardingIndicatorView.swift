//
//  OnboardingIndicatorView.swift
//  trainnigTab
//
//  Created by Lion on 14/07/2025.
//
import SwiftUI
import Swift
// Handle 
struct OnboardingIndicatorView: View {
    let totalPages: Int
    let currentPage: Int
    let selectedColor: Color
    let unselectedColor: Color
    let style: OnboardingIndicatorStyle
    let animation: Namespace.ID

    var body: some View {
        switch style {
        case .dot:
            HStack(spacing: 12) {
                ForEach(0..<totalPages, id: \.self) { index in
                    ZStack {
                        Circle()
                            .fill(unselectedColor)
                            .frame(width: 12, height: 12)
                        if currentPage == index {
                            Circle()
                                .fill(selectedColor)
                                .frame(width: 12, height: 12)
                                .matchedGeometryEffect(id: "dot", in: animation)
                        }
                    }
                }
            }
            .padding(.bottom, 40)

        case .rectangle:
            HStack {
                ForEach(0..<totalPages, id: \.self) { index in
                    ZStack {
                        Rectangle()
                            .fill(unselectedColor)
                            .frame(width: 80, height: 6)
                        if currentPage == index {
                            RoundedRectangle(cornerRadius: 3)
                                .fill(selectedColor)
                                .frame(width: 110, height: 6)
                                .matchedGeometryEffect(id: "rectangle", in: animation)
                        }
                    }
                }
            }
            .padding(.bottom, 40)

        case .none:
            EmptyView()
        }
    }
}
#Preview {
    VStack(spacing: 60) {

       
        VStack(spacing: 12) {
            Text("Rectangle Style")
                .font(.headline)
            OnboardingIndicatorView(
                totalPages: 4,
                currentPage: 1,
                selectedColor: .green,
                unselectedColor: .gray.opacity(0.3),
                style: .rectangle,
                animation: Namespace().wrappedValue
            )
        }

        Spacer()

        // Dot Indicator en bas
        VStack(spacing: 12) {
            Text("Dot Style")
                .font(.headline)
            OnboardingIndicatorView(
                totalPages: 4,
                currentPage: 1,
                selectedColor: .blue,
                unselectedColor: .gray,
                style: .dot,
                animation: Namespace().wrappedValue
            )
        }

    }
    .padding()
    .background(Color.white)
}

