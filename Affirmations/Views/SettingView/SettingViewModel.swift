//
//  SettingViewModel.swift
//  Affirmations
//
//  Created by Владислав Соколов on 02.08.2024.
//

import SwiftUI
import StoreKit

class SettingViewModel: ObservableObject {
    @Published var showBackgroundSelection = false
    @Published var showReminder = false
    
    func perfomAction(for settingItems: SettingItem) {
        switch settingItems {
        case .rateApp:
            rateApp()
        case .background:
            showBackground()
        case .reminder:
            showReminderSelection()
        }
    }
    
    func showReminderSelection() {
        showReminder = true
    }
    
    func showBackground() {
        showBackgroundSelection = true
    }
    
    func rateApp() {
        let scenes = UIApplication.shared.connectedScenes
        if let windowScene = scenes.first as? UIWindowScene {
            SKStoreReviewController.requestReview(in: windowScene)
        }
    }
}

enum SettingItem: Hashable, CaseIterable {
    case rateApp, background, reminder
    
    var description: String {
        switch self {
        case .rateApp:
            "Оцени приложение"
        case .background:
            "Темы для карточек"
        case .reminder:
            "Уведомления"
        }
    }
    
    var image: String {
        switch self {
        case .rateApp:
            "star.fill"
        case .background:
            "square.filled.on.square"
        case .reminder:
            "bell.badge.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .rateApp:
            Color.yellow
        case .background:
            Color.green
        case .reminder:
            Color.gray
        }
    }
}
