//
//  ContentView.swift
//  ToastExample
//
//  Created by Work on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    let toastManager = ToastManager.shared
    @State private var number = 0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onTapGesture {
            toastManager.showMessage(text: "\(number) --- text")
            number += 1
        }
        .frame(minHeight: 700)
        .background(Color.red)
        .padding()
        .makeToast()
    }
}

#Preview {
    ContentView()
}
