//
//  DetailViewModel.swift
//  Affirmations
//
//  Created by Владислав Соколов on 03.08.2024.
//

import Foundation
import WidgetKit

class DetailViewModel: ObservableObject {
    @Published var isZoomed = false
    
    var iconFrame: CGFloat {
        isZoomed ? 35 : 80
    }
    
    func setAffirmations(for item: Item) {
        if let encodedData = try? JSONEncoder().encode(item) {
            UserDefaults(suiteName: "group.AffirmationsEveryDay")?.set(encodedData, forKey: "selectedCategory")
            WidgetCenter.shared.reloadTimelines(ofKind: "MyWidgetExtension")
        }
    }
}
