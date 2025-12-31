//
//  WelcomeView.swift
//  IncomeUltraCourse
//
//  Created by Axel Mosiejko on 31/12/2025.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var shouldShowWelcomeView: Bool
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome View")
            Button("Get Started") {
                shouldShowWelcomeView = false
            }
        }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
