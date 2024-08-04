//
//  DetailView.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI

struct DetailView: View {
    @StateObject var viewModel = DetailViewModel()
    @Environment(UICoordinator.self) private var coordinator
    @Namespace private var animation
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            let animateView = coordinator.animateView
            let hideLayer = coordinator.hideLayer
            let rect = coordinator.rect
            
            let anchorX = (coordinator.rect.minX / size.width) > 0.5  ? 1.0 : 0.0
            let scale = size.width / coordinator.rect.width
            
            let offsetX = animateView ? (anchorX > 0.5 ? 15 : -15) * scale : 0
            let offsetY = animateView ? -coordinator.rect.minY * scale : 0
            
            let detailHeight: CGFloat = rect.height * scale
            let scrollContentHeight: CGFloat = size.height - detailHeight
            
            if let uiImage = coordinator.animationLayer, let post = coordinator.selectedItem {
                if !hideLayer {
                    Image(uiImage: uiImage)
                        .scaleEffect(animateView ? scale : 1, anchor: .init(x: anchorX, y: 0))
                        .offset(x: offsetX, y: offsetY)
                        .offset(y: animateView ? -coordinator.headerOffset : 0)
                        .opacity(animateView ? 0 : 1)
                        .transition(.identity)
                }
                
                ScrollView(.vertical) {
                    ScrollContent(post, description: "")
                        .safeAreaInset(edge: .top, spacing: 0) {
                            Rectangle()
                                .fill(.clear)
                                .frame(height: detailHeight)
                                .offsetY { offset in
                                    coordinator.headerOffset = max(min(-offset, detailHeight), 0)
                                }
                        }
                }
                .scrollDisabled(!hideLayer)
                .contentMargins(.top, detailHeight, for: .scrollIndicators)
                .background {
                    Rectangle()
                        .fill(.background)
                        .padding(.top, detailHeight)
                }
                .animation(.easeIn(duration: 0.3).speed(1.5)) {
                    $0.offset(y: animateView ? 0 : scrollContentHeight)
                        .opacity(animateView ? 1 : 0)
                }
                
                ImageView(post: post)
                    .allowsHitTesting(false)
                    .frame(
                        width: animateView ? size.width : rect.width,
                        height: animateView ? rect.height * scale : rect.height
                    )
                    .clipShape(.rect(cornerRadius:  animateView ? 0 : 10))
                    .overlay(alignment: .top) {
                        HeaderActions(post)
                            .offset(y: coordinator.headerOffset)
                            .padding(.top, safeAreaInsets.top)
                    }
                    .offset(x: animateView ? 0 : rect.minX, y: animateView ? 0 : rect.minY)
                    .offset(y: animateView ? -coordinator.headerOffset : 0)
                    .onAppear {
                        viewModel.isZoomed = false
                    }
            }
        }
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    func ScrollContent(_ title: Item, description: String) -> some View {
        DummyView(item: title)
    }
    
    @ViewBuilder
    func HeaderActions(_ post: Item) -> some View {
        HStack {
            Spacer(minLength: 0)
            
            Button {
                viewModel.setAffirmations(for: post)
                viewModel.isZoomed = true
            } label: {
                Rectangle()
                    .clipShape(Capsule())
                    .frame(width: viewModel.iconFrame, height: 35)
                    .foregroundStyle(.ultraThickMaterial)
                    .overlay {
                        if !viewModel.isZoomed {
                            Text("Set")
                                .foregroundStyle(.black)
                                .matchedGeometryEffect(id: "affirmation", in: animation)
                        } else {
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundStyle(.green)
                                .matchedGeometryEffect(id: "affirmation", in: animation)
                        }
                    }
            }
            .animation(.easeInOut(duration: 0.3)) {
                $0.opacity(coordinator.hideLayer ? 1 : 0)
            }
            
            Button {
                coordinator.toogleView(show: false, frame: .zero, post: post)
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .imageScale(.large)
                    .font(.title)
                    .foregroundStyle(Color.primary, .bar)
                    .padding(.trailing)
                    .contentShape(.rect)
            }
            .animation(.easeInOut(duration: 0.3)) {
                $0.opacity(coordinator.hideLayer ? 1 : 0)
            }
        }
    }
}

#Preview {
    ContentView()
}

