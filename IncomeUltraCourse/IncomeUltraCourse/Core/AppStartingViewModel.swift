//
//  AppStartingViewModel.swift
//  IncomeUltraCourse
//
//  Created by Axel Mosiejko on 31/12/2025.
//

import Foundation
import Combine

@MainActor
final class AppStartingViewModel: ObservableObject {
    @Published var shouldShowWelcomeView: Bool = true
}
