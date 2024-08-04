//
//  NotificationSettingsView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 03.08.2024.
//

import SwiftUI

struct NotificationSettingsView: View {
    @EnvironmentObject var lnManager: LocalNotificationManager
    @StateObject var viewModel = NotificationSettingsViewModel()
    
    var body: some View {
        Form {
            HStack {
                Text("Deadline:")
                    .foregroundStyle(.gray)
                Spacer()
                if lnManager.isGranted {
                    DatePicker("", selection: $viewModel.deadline)
                        .colorScheme(.dark)
                        .padding(.trailing, 10)
                        .tint(.white)
                }
            }
        }
        .onDisappear {
            Task {
                let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: viewModel.deadline)
                let localNotification = LocalNotification(
                    identifier: UUID().uuidString,
                    title: "Твоя аффирмация",
                    body: viewModel.loadAffirmation(),
                    dateComponents: dateComponents,
                    repeats: true
                )
                await lnManager.schedule(localNotification: localNotification)
            }
        }
    }
}

#Preview {
    NotificationSettingsView()
        .environmentObject(LocalNotificationManager())
}
