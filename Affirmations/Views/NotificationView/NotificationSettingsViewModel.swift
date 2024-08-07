//
//  NotificationSettingsViewModel.swift
//  Affirmations
//
//  Created by Владислав Соколов on 03.08.2024.
//

import Foundation

class NotificationSettingsViewModel: ObservableObject {
    @Published var deadline: Date {
        didSet {
            saveDeadline(deadline)
        }
    }
    
    init() {
        self.deadline = UserDefaults.standard.object(forKey: "deadline") as? Date ?? Date()
    }
    
    func loadAffirmation() -> String {
        if let data = UserDefaults(suiteName: "group.AffirmationsEveryDay")?.data(forKey: "selectedCategory"),
           let category = try? JSONDecoder().decode(Item.self, from: data) {
            return category.affirmation.randomElement()?.text ?? "Нет доступных аффирмаций"
        } else {
            return "Нет доступных аффирмаций"
        }
    }
    
    func scheduleNotification(for date: Date) {
        Task {
            let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: date)
            let localNotification = LocalNotification(
                identifier: UUID().uuidString,
                title: "Твоя аффирмация",
                body: loadAffirmation(),
                dateComponents: dateComponents,
                repeats: true
            )
            await LocalNotificationManager().schedule(localNotification: localNotification)
        }
    }
    
    private func saveDeadline(_ deadline: Date) {
        UserDefaults.standard.set(deadline, forKey: "deadline")
    }
}
