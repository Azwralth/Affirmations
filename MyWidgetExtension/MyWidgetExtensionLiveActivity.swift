//
//  MyWidgetExtensionLiveActivity.swift
//  MyWidgetExtension
//
//  Created by Владислав Соколов on 03.08.2024.
//

//import ActivityKit
//import WidgetKit
//import SwiftUI
//
//struct MyWidgetExtensionAttributes: ActivityAttributes {
//    public struct ContentState: Codable, Hashable {
//        // Dynamic stateful properties about your activity go here!
//        var emoji: String
//    }
//
//    // Fixed non-changing properties about your activity go here!
//    var name: String
//}
//
//struct MyWidgetExtensionLiveActivity: Widget {
//    var body: some WidgetConfiguration {
//        ActivityConfiguration(for: MyWidgetExtensionAttributes.self) { context in
//            // Lock screen/banner UI goes here
//            VStack {
//                Text("Hello \(context.state.emoji)")
//            }
//            .activityBackgroundTint(Color.cyan)
//            .activitySystemActionForegroundColor(Color.black)
//
//        } dynamicIsland: { context in
//            DynamicIsland {
//                // Expanded UI goes here.  Compose the expanded UI through
//                // various regions, like leading/trailing/center/bottom
//                DynamicIslandExpandedRegion(.leading) {
//                    Text("Leading")
//                }
//                DynamicIslandExpandedRegion(.trailing) {
//                    Text("Trailing")
//                }
//                DynamicIslandExpandedRegion(.bottom) {
//                    Text("Bottom \(context.state.emoji)")
//                    // more content
//                }
//            } compactLeading: {
//                Text("L")
//            } compactTrailing: {
//                Text("T \(context.state.emoji)")
//            } minimal: {
//                Text(context.state.emoji)
//            }
//            .widgetURL(URL(string: "http://www.apple.com"))
//            .keylineTint(Color.red)
//        }
//    }
//}
//
//extension MyWidgetExtensionAttributes {
//    fileprivate static var preview: MyWidgetExtensionAttributes {
//        MyWidgetExtensionAttributes(name: "World")
//    }
//}
//
//extension MyWidgetExtensionAttributes.ContentState {
//    fileprivate static var smiley: MyWidgetExtensionAttributes.ContentState {
//        MyWidgetExtensionAttributes.ContentState(emoji: "😀")
//     }
//     
//     fileprivate static var starEyes: MyWidgetExtensionAttributes.ContentState {
//         MyWidgetExtensionAttributes.ContentState(emoji: "🤩")
//     }
//}
//
//#Preview("Notification", as: .content, using: MyWidgetExtensionAttributes.preview) {
//   MyWidgetExtensionLiveActivity()
//} contentStates: {
//    MyWidgetExtensionAttributes.ContentState.smiley
//    MyWidgetExtensionAttributes.ContentState.starEyes
//}
