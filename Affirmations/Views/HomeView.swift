//
//  HomeView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var category: [Item] = Storage.sampleItems
        
    var coordinator: UICoordinator = .init()
    
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(alignment: .leading, spacing: 15) {
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 10), count: 2), spacing: 10) {
                    ForEach(category) { post in
                        PostCardView(post)
                    }
                }
            }
            .padding(15)
            .background(ScrollViewExtractor {
                coordinator.scrollView = $0
            })
            .padding(.bottom, 90)
        }
        .opacity(coordinator.hideRootView ? 0 : 1)
        .scrollDisabled(coordinator.hideRootView)
        .allowsTightening(!coordinator.hideRootView)
        .overlay {
            DetailView()
                .environment(coordinator)
                .allowsTightening(!coordinator.hideLayer)
        }
    }
    
    @ViewBuilder
    func PostCardView(_ post: Item) -> some View {
        GeometryReader {
            let frame = $0.frame(in: .global)
            
            ZStack {
                ImageView(post: post)
                    .clipShape(.rect(cornerRadius: 10))
                    .contentShape(.rect(cornerRadius: 10))
                    .onTapGesture {
                        coordinator.toogleView(show: true, frame: frame, post: post)
                    }
                
                Text(post.title)
                    .customFont(type: .bold, size: 20)
                    .overlay {
                        Rectangle()
                            .background(.ultraThinMaterial)
                            .frame(width: frame.width, height: 40)
                            .opacity(0.1)
                    }
                    .offset(y: 95)
                    .shadow(color: .black, radius: 3, x: 0, y: 0)
                    .foregroundStyle(.white)

            }
        }
        .frame(height: 220)
    }
}

#Preview {
    ContentView()
}
