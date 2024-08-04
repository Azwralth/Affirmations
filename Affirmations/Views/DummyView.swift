//
//  DummyView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

struct DummyView: View {
    let item: Item
    var body: some View {
        LazyVStack {
            DummySection(title: item.title)
                .padding(.bottom, 110)
//            List {
//                ForEach(item.affirmation, id: \.self) { item in
//                    AffirmationCell(affirmation: item)
//                }
//            }
//            .scrollDisabled(true)
//            .listStyle(.inset)
//            .frame(height: CGFloat(item.affirmation.count) * 70)
//            .padding(.bottom, 110)
        }
        .padding(15)
    }
    
    @ViewBuilder
    func AffirmationCell(affirmation: Affirmation) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(affirmation.text)
                .font(.system(size: 15, weight: .regular))
                .padding(.vertical)
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
    
    @ViewBuilder
    func DummySection(title: String, isLong: Bool = false) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .customFont(type: .bold, size: 30)
            Text(item.description)
                .customFont(type: .regular, size: 20)
                .multilineTextAlignment(.leading)
                .kerning(1.2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    func ImageView(_ image: String) -> some View {
        GeometryReader {
            let size = $0.size
            
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: size.width, height: size.height)
                .clipped()
        }
        .frame(height: 400)
    }
}

#Preview {
    ContentView()
}

