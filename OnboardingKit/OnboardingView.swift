import SwiftUI

struct OnboardingView: View {
    var totalPages: Int = 3
    var selectedColor: Color
    var unselectedColor: Color
    var indicatorStyle: OnboardingIndicatorStyle = .dot

    @State private var currentPage: Int = 0
    @AppStorage("onboardingShown") private var onboardingShown: Bool = false
    @Namespace private var animation

    var body: some View {
        ZStack {
            Color.blue.opacity(0.4).ignoresSafeArea()

            VStack {
                // 🟦  Display Rectangle Indicator
                if indicatorStyle == .rectangle {
                    OnboardingIndicatorView(
                        totalPages: totalPages,
                        currentPage: currentPage,
                        selectedColor: selectedColor,
                        unselectedColor: unselectedColor,
                        style: .rectangle,
                        animation: animation
                    )
                    .animation(.spring(response: 0.8, dampingFraction: 0.8), value: currentPage)
                }

                // 📄 Current Content in TabView you can modify if you want
                TabView(selection: $currentPage) {
                    OnboardingContent(title: "Football", image: "soccerball")
                        .tag(0)
                    OnboardingContent(title: "Cricket", image: "tennisball.fill")
                        .tag(1)
                    OnboardingContent(title: "Tennis", image: "tennisball.fill")
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .frame(height: 480)
                
                // Display Dot Indicator
                if indicatorStyle == .dot {
                    OnboardingIndicatorView(
                        totalPages: totalPages,
                        currentPage: currentPage,
                        selectedColor: selectedColor,
                        unselectedColor: unselectedColor,
                        style: .dot,
                        animation: animation
                    )
                    .animation(.spring(response: 0.8, dampingFraction: 0.8), value: currentPage)
                }

                VStack(spacing: 30) {
                    Button(action: {
                        if currentPage < totalPages - 1 {
                            currentPage += 1
                        } else {
                            onboardingShown = true
                        }
                    }) {
                        Text(currentPage < totalPages - 1 ? "Continuer" : "Commencer")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding(.vertical, 20)
                            .background(Color.blue)
                            .cornerRadius(18)
                            .padding(.horizontal, 32)
                    }

                    if currentPage < totalPages - 1 {
                        Button("Passer") {
                            onboardingShown = true
                        }
                        .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    OnboardingView(
        selectedColor: .blue,
        unselectedColor: .gray.opacity(0.3),
        indicatorStyle: .rectangle // Change to .dot or .none to test
    )
}
