//
//  SettingView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 02.08.2024.
//

import SwiftUI

struct SettingView: View {
    @StateObject var viewModel = SettingViewModel()
    @EnvironmentObject var lnManager: LocalNotificationManager
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(SettingItem.allCases, id: \.self) { item in
                        Button {
                            viewModel.perfomAction(for: item)
                        } label: {
                            SettingViewCell(image: item.image, name: item.description, color: item.color)
                        }
                }
            }
            .navigationTitle("Настройки")
            .sheet(isPresented: $viewModel.showBackgroundSelection) {
                BackgroundImages()
                    .padding()
            }
            .navigationDestination(isPresented: $viewModel.showReminder) {
                NotificationSettingsView()
                    .environmentObject(lnManager)
            }
            .task {
                try? await lnManager.requestAuthorization()
            }
        }
    }
}

#Preview {
    ContentView()
}
