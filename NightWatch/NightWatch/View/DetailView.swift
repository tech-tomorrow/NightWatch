//
//  DetailView.swift
//  NightWatch
//
//  Created by Bond on 3/2/2564 BE.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var task: Task
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: task.isComplete ? "checkmark.square" : "square")
                Text(task.name)
            }
            Button(task.isComplete ? "Reset" : "Mark Complete") {
                task.isComplete = !task.isComplete
                mode.wrappedValue.dismiss()
            }.padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        let task1 = Task(name: "Check all windows", isComplete: false)
        DetailView(task: task1)
        
        let task2 = Task(name: "Check all windows", isComplete: true)
        DetailView(task: task2)
    }
}
