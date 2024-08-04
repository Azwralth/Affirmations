//
//  BackgroundImagesViewModel.swift
//  Affirmations
//
//  Created by Владислав Соколов on 03.08.2024.
//

import SwiftUI

class BackgroundImagesViewModel: ObservableObject {
    @AppStorage("selectedBackground") var selectedBackground = "1"
}
