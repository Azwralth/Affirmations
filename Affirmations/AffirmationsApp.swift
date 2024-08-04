//
//  AffirmationsApp.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

@main
struct AffirmationsApp: App {
    @StateObject var lnManager = LocalNotificationManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(lnManager)
        }
    }
}
