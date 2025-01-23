//
//  UICoordinator.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//

import SwiftUI
import Observation

@Observable
class UICoordinator {
    var scrollView: UIScrollView = .init(frame: .zero)
    var rect: CGRect = .zero
    var selectedItem: Item?
    var animationLayer: UIImage?
    var animateView = false
    var hideLayer = false
    var hideRootView =  false
        
    var headerOffset: CGFloat = .zero

    func createVisibleAreaSnapshot() {
        let renderer = UIGraphicsImageRenderer(size: scrollView.bounds.size)
        let image = renderer.image { ctx in
            ctx.cgContext.translateBy(x: -scrollView.contentOffset.x, y: -scrollView.contentOffset.y)
            scrollView.layer.render(in: ctx.cgContext)
        }
        
        animationLayer = image
    }
    
    func toogleView(show: Bool, frame: CGRect, post: Item) {
        if show {
          selectedItem = post
            rect = frame
            createVisibleAreaSnapshot()
            hideRootView = true
            
            withAnimation(.easeInOut(duration: 0.3), completionCriteria: .removed) {
                animateView = true
            } completion: {
                self.hideLayer = true
            }
        } else {
           hideLayer = false
            withAnimation(.easeInOut(duration: 0.3), completionCriteria: .removed) {
                animateView = false
            } completion: {
                DispatchQueue.main.async {
                    self.resetAnimationProperties()
                }
            }

        }
    }
    
    private func resetAnimationProperties() {
        headerOffset = 0
        hideRootView = false
        selectedItem = nil
        animationLayer = nil
    }
}

struct ScrollViewExtractor: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: Context) {

    }
    
    var result: (UIScrollView) -> ()
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = false
        
        DispatchQueue.main.async {
            if let scrollView = view.superview?.superview?.superview as? UIScrollView {
                result(scrollView)
            }
        }
        return view
    }
}
