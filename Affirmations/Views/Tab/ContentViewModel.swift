//
//  ContentViewModel.swift
//  Affirmations
//
//  Created by Владислав Соколов on 01.08.2024.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var selectedView = "category"
    @Published var pages: [Page] = {
        [
        Page(title: "Категории", image: "category"),
        Page(title: "Карточки", image: "cards"),
        Page(title: "Настройки", image: "setting")
        ]
    }()
}
