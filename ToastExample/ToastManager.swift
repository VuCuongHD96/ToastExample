//
//  ToastManager.swift
//  ToastExample
//
//  Created by Work on 01/01/2024.
//

import Foundation
import SwiftUI

class ToastManager: ObservableObject {
    
    static let shared = ToastManager()
    let serialQueue = DispatchQueue(label: "serial queue")
    var currentWork: DispatchWorkItem!
    var timer = Timer()
    
    var message = ""
    @Published var isShowing = false
    
    func showMessage(text: String) {
        cancelWork()
        currentWork = createWork(text: text)
        serialQueue.async(execute: currentWork)
    }
    
    private func cancelWork() {
        if currentWork != nil {
            currentWork = nil
            timer.invalidate()
            isShowing = false
        }
    }
    
    private func createWork(text: String) -> DispatchWorkItem {
        isShowing = true
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
            self.cancelWork()
        }
        return DispatchWorkItem {
            self.message = text
        }
    }
}
