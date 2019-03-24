//
//  TimeInterval+format.swift
//  Weather Gift
//
//  Created by Lindsay Braun on 3/24/19.
//  Copyright © 2019 Lindsay Braun. All rights reserved.
//

import Foundation

extension TimeInterval {
    
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
}
