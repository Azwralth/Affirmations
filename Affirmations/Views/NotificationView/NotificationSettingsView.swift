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
                Text("Ежедневно в:")
                    .foregroundStyle(.gray)
                Spacer()
                if lnManager.isGranted {
                    DatePicker("", selection: $viewModel.deadline, displayedComponents: .hourAndMinute)
                        .colorScheme(.dark)
                        .padding(.trailing, 10)
                        .tint(.white)
                        .onChange(of: viewModel.deadline) { _, newValue in
                            lnManager.clearRequests()
                            viewModel.scheduleNotification(for: newValue)
                        }
                } else {
                    Text("Уведомления отключены")
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}

#Preview {
    NotificationSettingsView()
        .environmentObject(LocalNotificationManager())
}
