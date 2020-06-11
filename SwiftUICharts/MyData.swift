//
//  Mydaya.swift
//  SwiftUICharts
//
//  Created by 신지호 on 2020/06/09.
//  Copyright © 2020 jiho. All rights reserved.
//

import Foundation

struct MyData: Codable, Identifiable {
    let id: Int
    let date: Date
    let amount: Double
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM dd"
        return formatter.string(from: date)
    }
}
