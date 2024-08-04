//
//  Item.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

struct Item: Identifiable, Codable, Hashable {
    private (set) var id: UUID = .init()
    let title: String
    let image: String?
    let description: String
    let affirmation: [Affirmation]
    var isFavorite: Bool
}
