//
//  TaskRowView.swift
//  NightWatch
//
//  Created by Bond on 3/2/2564 BE.
//

import SwiftUI

struct TaskRowView: View {
    
    @ObservedObject var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isComplete ? "checkmark.square" : "square")
            
            if task.isComplete {
                Text(task.name).foregroundColor(.gray).strikethrough()
            } else {
                Text(task.name)
            }
        }
    }
}

struct TaskRowView_Previews: PreviewProvider {
    static var previews: some View {
        let task1 = Task(name: "Check all windows", isComplete: false)
        TaskRowView(task: task1).previewLayout(.fixed(width: 300.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
        
        let task2 = Task(name: "Check all windows", isComplete: true)
        TaskRowView(task: task2).previewLayout(.fixed(width: 300.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
