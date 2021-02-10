//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Bond on 27/1/2564 BE.
//

import SwiftUI

@main
struct NightWatchApp: App {
    
    @StateObject var nightWatchTask = NightWatchTask()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTask: nightWatchTask)
        }
    }
}
