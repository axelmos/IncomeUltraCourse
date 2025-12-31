//
//  ContentView.swift
//  IncomeUltraCourse
//
//  Created by Axel Mosiejko on 31/12/2025.
//

import SwiftUI

struct AppStartingView: View {
    @StateObject var viewModel = AppStartingViewModel()
    var body: some View {
        Group {
            if viewModel.shouldShowWelcomeView {
                WelcomeView(shouldShowWelcomeView: $viewModel.shouldShowWelcomeView)
            } else {
                HomeTabView()
            }
        }
        .animation(.easeIn, value: viewModel.shouldShowWelcomeView)
    }
}

#Preview {
    AppStartingView()
}
