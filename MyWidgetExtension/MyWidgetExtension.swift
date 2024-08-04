//
//  MyWidgetExtension.swift
//  MyWidgetExtension
//
//  Created by Владислав Соколов on 03.08.2024.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), imageName: "placeholder", affirmation: "Loading...")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), imageName: loadImageName(), affirmation: loadAffirmation())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> ()) {
        var entries: [SimpleEntry] = []
        let currentDate = Date()
        let entry = SimpleEntry(date: currentDate, imageName: loadImageName(), affirmation: loadAffirmation())
        entries.append(entry)
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }

    func loadImageName() -> String {
        return String(Int.random(in: 1...12))
    }

    func loadAffirmation() -> String {
        if let data = UserDefaults(suiteName: "group.AffirmationsEveryDay")?.data(forKey: "selectedCategory"),
           let category = try? JSONDecoder().decode(Item.self, from: data) {
            return category.affirmation.randomElement()?.text ?? "Нет доступных аффирмаций"
        } else {
            return "Нет доступных аффирмаций"
        }
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let imageName: String
    let affirmation: String
}


struct MyWidgetEntryView: View {
    var entry: Provider.Entry
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image(entry.imageName)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                VStack {
                    Text(entry.affirmation)
                        .customFont(type: .regular, size: 15)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
            .ignoresSafeArea()
        }
    }
}

struct MyWidget: Widget {
    let kind: String = "MyWidgetExtension"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            MyWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This widget displays a random affirmation with a background image.")
    }
}

#Preview {
    MyWidgetEntryView(entry: Provider.Entry(date: .now, imageName: "3", affirmation: "Ты лучшая"))
}
