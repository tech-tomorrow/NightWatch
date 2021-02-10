//
//  Task.swift
//  NightWatch
//
//  Created by Bond on 3/2/2564 BE.
//

import Foundation

//struct Task {
//    let name: String
//    var isComplete: Bool
//}

class Task: ObservableObject, Identifiable {
    init(name: String, isComplete: Bool) {
        self.id = UUID()
        self.name = name
        self.isComplete = isComplete
    }
    
    let id: UUID
    let name: String
    @Published var isComplete: Bool
}


