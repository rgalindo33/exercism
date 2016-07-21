//
//  leap.swift
//  helloWorld
//
//  Created by Raul Galindo on 28/01/16..
//  Copyright © 2016 exercism.io. All rights reserved.
//

class Year {
    var calendarYear: Int
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    var isLeapYear: Bool {
        get {
            if (calendarYear % 4) != 0 {
                return false
            } else if (calendarYear % 100 != 0) {
                return true
            } else if (calendarYear % 400 != 0) {
                return false
            } else {
                return true
            }
        }
    }
}
