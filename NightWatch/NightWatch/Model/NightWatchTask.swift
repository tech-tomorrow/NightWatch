//
//  NightWatchTask.swift
//  NightWatch
//
//  Created by Bond on 3/2/2564 BE.
//

import Foundation

class NightWatchTask: ObservableObject {
    @Published var nightlyTasks = [Task(name: "Check all windows", isComplete: false),
                                   Task(name: "Check all doors", isComplete: false),
                                   Task(name: "Check that the safe is locked", isComplete: false),
                                   Task(name: "Check the mailbox", isComplete: false),
                                   Task(name: "Inspect security cameras", isComplete: false),
                                   Task(name: "Clear ice from sidewalks", isComplete: false),
                                   Task(name: "Document strange and unusual occurrences", isComplete: false)]
    @Published var weeklyTasks = [Task(name: "Check inside all vacant rooms", isComplete: false),
                                  Task(name: "Walk the perimeter of property", isComplete: false)]
    @Published var monthlyTasks = [Task(name: "Test security alarm", isComplete: false),
                                   Task(name: "Test motion detectors", isComplete: false),
                                   Task(name: "Test smoke alarms", isComplete: false)]
}
