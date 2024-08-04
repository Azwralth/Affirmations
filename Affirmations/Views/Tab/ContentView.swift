//
//  ContentView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                ForEach(viewModel.pages) { page in
                    Spacer()
                    TabViewItem(page: page, selection: $viewModel.selectedView)
                    Spacer()
                }
            }
            .zIndex(1)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 9)
            .background(.pageCell)
            .clipShape(Capsule())
            .padding(.bottom, 20)
            .padding(.horizontal, 30)
            
            TabView(selection: $viewModel.selectedView) {
                HomeView()
                    .tag("plus")
                Home()
                    .tag("cards")
                SettingView()
                    .tag("setting")
            }
        }
    }
}

struct TabViewItem: View {
    var page: Page
    @Binding var selection: String
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                selection = page.image
            }
        } label: {
            HStack {
                if selection == page.image {
                    Text(page.title)
                        .foregroundStyle(.white)
                } else {
                    Image(page.image)
                        .resizable()
                        .frame(width: 23, height: 23)
                        .opacity(0.5)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(selection == page.image ? .customGreen : .clear)
            .clipShape(Capsule())
        }
    }
}

#Preview {
    ContentView()
}
