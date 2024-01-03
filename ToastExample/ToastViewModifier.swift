//
//  ToastViewModifier.swift
//  ToastExample
//
//  Created by Work on 03/01/2024.
//

import SwiftUI

struct ToastViewModifier: ViewModifier {
    
    @StateObject var toastManager = ToastManager.shared
    
    func body(content: Content) -> some View {
        let message = toastManager.message
        let isShowing = toastManager.isShowing
        content
            .overlay(alignment: .bottom) {
                SnackBar.create(from: message)
                    .background(Color.green)
                    .opacity(isShowing ? 1.0 : 0.0)
                    .scaleEffect(isShowing ? 1.0 : 0.5)
                    .animation(.easeInOut(duration: 0.3), value: isShowing)
            }
    }
}
