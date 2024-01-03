//
//  View+.swift
//  ToastExample
//
//  Created by Work on 03/01/2024.
//

import SwiftUI

extension View {
    
    func makeToast() -> some View {
        modifier(ToastViewModifier())
    }
}
