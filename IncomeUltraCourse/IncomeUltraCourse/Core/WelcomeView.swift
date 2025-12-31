//
//  WelcomeView.swift
//  IncomeUltraCourse
//
//  Created by Axel Mosiejko on 31/12/2025.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject private var viewModel = WelcomeViewModel()
    @Binding var shouldShowWelcomeView: Bool
    
    var body: some View {
        VStack {
            title
            Spacer()
            VStack {
                welcomeImage
                welcomeText
            }
            Spacer()
            getStartedButton
        }
    }
}

private extension WelcomeView {
    var title : some View {
        Text(viewModel.getAppName())
            .font(.title)
            .fontWeight(.bold)
    }
    
    var welcomeImage: some View {
        Image(.welcome)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    var welcomeText: some View {
        Text("Effortlessly calculate your income.\nLet's get started!")
            .font(.title3)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.appTheme.secondaryText)
    }
    
    var getStartedButton: some View {
        Button("Get started") {
            shouldShowWelcomeView = false
        }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
