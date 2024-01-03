//
//  SnackBar.swift
//  ToastExample
//
//  Created by Work on 03/01/2024.
//

import SwiftUI

struct SnackBar {
    
    static func create(from text: String) -> some View {
        HStack {
            Image(systemName: "pencil.tip.crop.circle.badge.plus")
            Text(text)
        }
    }
}
