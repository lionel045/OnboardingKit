
**OnboardingKit** is a reusable and customizable SwiftUI component designed to streamline the creation of onboarding experiences for iOS apps.

## ✨ Purpose

This kit aims to provide a modular onboarding system that can be easily integrated into any SwiftUI project while remaining flexible and clean:
- Choose between `.dot`, `.rectangle`, or no indicator
- Automatically handles onboarding state using `@AppStorage`
- Uses `matchedGeometryEffect` for smooth transitions
- Customizable colors and content

## ✅ Current Features

- Supports `.dot` and `.rectangle` indicators
- “Continue”, “Start” and “Skip” buttons with onboarding flow logic
- Fluid animations and layout using `matchedGeometryEffect`
- Simple page management with static content

## 🔮 Planned Improvements

This component is built with extensibility in mind. Future updates may include:
- Intro screens with Lottie or Rive animations
- Optional progress bar/jauge for multi-step onboarding
- Dynamic theming (light/dark modes)
- Per-page actions or callback hooks

## 📦 Quick Usage

```swift
OnboardingView(
    selectedColor: .blue,
    unselectedColor: .gray,
    indicatorStyle: .rectangle
)

