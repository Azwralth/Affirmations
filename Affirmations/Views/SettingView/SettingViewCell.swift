//
//  SettingViewCell.swift
//  Affirmations
//
//  Created by Владислав Соколов on 02.08.2024.
//

import SwiftUI

struct SettingViewCell: View {
    let image: String
    let name: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.largeTitle)
                .frame(width: 40, height: 40)
                .foregroundStyle(color)
            Text(name)
                .customFont(type: .regular, size: 20)
                .foregroundStyle(.black)
                .padding(.leading, 15)
        }
        
    }
}

#Preview {
    SettingViewCell(image: "square.and.arrow.up.fill", name: "Rate app", color: .yellow)
}
