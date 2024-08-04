//
//  FontManager.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

enum FontManager: String {
    case regular = "Nunito-Regular"
    case medium = "Nunito-Medium"
    case bold = "Nunito-Bold"
    case black = "Nunito-Black"
}

extension View {
    func customFont(type: FontManager, size: CGFloat = 12) -> some View {
        modifier(CustomFont(font: type, size: size))
    }
}

struct CustomFont: ViewModifier {
    var font: FontManager
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(.custom(font.rawValue, size: size))
    }
}
