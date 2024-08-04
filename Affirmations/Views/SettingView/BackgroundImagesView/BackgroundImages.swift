//
//  BackgroundImages.swift
//  Affirmations
//
//  Created by Владислав Соколов on 02.08.2024.
//

import SwiftUI

struct BackgroundImages: View {
    @StateObject var viewModel = BackgroundImagesViewModel()
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                LazyVStack {
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 10), count: 3), spacing: 5) {
                        ForEach(1..<13) { imageIndex in
                            Image("\(imageIndex)")
                                .resizable()
                                .frame(width: geometry.size.width / 3.15, height: geometry.size.height / 4.5)
                                .overlay {
                                    VStack {
                                        Spacer()
                                        Text("Я совершенство")
                                            .multilineTextAlignment(.center)
                                            .customFont(type: .bold, size: 16)
                                            .foregroundStyle(.white)
                                        
                                        Spacer()
                                        
                                        HStack {
                                            Spacer()
                                            Button {
                                                withAnimation {
                                                    viewModel.selectedBackground = "\(imageIndex)"
                                                }
                                            } label: {
                                                Image(systemName: viewModel.selectedBackground == "\(imageIndex)" ? "checkmark.circle.fill" : "circle")
                                                    .foregroundStyle(.white)
                                            }
                                            .padding([.trailing, .bottom], 5)
                                        }
                                        
                                    }
                                }
                                .onTapGesture {
                                    withAnimation {
                                        viewModel.selectedBackground = "\(imageIndex)"
                                    }
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Закрыть") {
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    BackgroundImages()
}
