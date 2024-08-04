//
//  ImageView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

struct ImageView: View {
    var post: Item
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            if let uiImage = post.image {
                Image(uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                    .clipped()
            }
        }
    }
}
