//
//  NotificationSettingsViewModel.swift
//  Affirmations
//
//  Created by Владислав Соколов on 03.08.2024.
//

import Foundation

class NotificationSettingsViewModel: ObservableObject {
    @Published var deadline = Date()
    
    func loadAffirmation() -> String {
        if let data = UserDefaults(suiteName: "group.AffirmationsEveryDay")?.data(forKey: "selectedCategory"),
           let category = try? JSONDecoder().decode(Item.self, from: data) {
            return category.affirmation.randomElement()?.text ?? "Нет доступных аффирмаций"
        } else {
            return "Нет доступных аффирмаций"
        }
    }
}
