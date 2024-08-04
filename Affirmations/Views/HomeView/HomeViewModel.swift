//
//  HomeViewModel.swift
//  Affirmations
//
//  Created by Владислав Соколов on 01.08.2024.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedCategory: Item = Storage.sampleItems[0]
    @AppStorage("selectedBackground") var selectedBackground: String = "1"
    
    func getRandomImage() -> String {
        let randomNumber = Int.random(in: 1...12)
        return String(randomNumber)
    }
    
    func loadSelectedCategory() {
        if let data = UserDefaults(suiteName: "group.AffirmationsEveryDay")?.data(forKey: "selectedCategory"),
           let category = try? JSONDecoder().decode(Item.self, from: data) {
            selectedCategory = category
        } else {
            selectedCategory = Storage.sampleItems[0]
        }
    }
    
    func randomAffirmation() -> String {
        guard !selectedCategory.affirmation.isEmpty else { return "No affirmations available" }
        return selectedCategory.affirmation.randomElement()?.text ?? "No affirmations available"
    }
}
