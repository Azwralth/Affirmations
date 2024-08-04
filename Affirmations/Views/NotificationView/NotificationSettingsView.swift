//
//  NotificationSettingsView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 03.08.2024.
//

import SwiftUI

struct NotificationSettingsView: View {
    let affirmation: Affirmation
    @EnvironmentObject var lnManager: LocalNotificationManager
    @StateObject var viewModel = NotificationSettingsViewModel()
    
    var body: some View {
        Group {
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
        .padding(.leading, 20)
        .frame(minHeight: 65)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 1))
        .padding(.horizontal)
        
        Spacer()
            Button {
                Task {
                    let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: viewModel.deadline)
                    let localNotification = LocalNotification(
                        identifier: UUID().uuidString,
                        title: "Твоя аффирмация",
                        body: affirmation.text,
                        dateComponents: dateComponents,
                        repeats: false
                    )
                    await lnManager.schedule(localNotification: localNotification)
                }
            } label: {
                Text("Add")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
            }
    }
}

#Preview {
    NotificationSettingsView(affirmation: Affirmation(text: "Ты лучшая"))
}
