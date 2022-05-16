//
//  Daily.swift
//  dreamy
//
//  Created by Karina Ng on 5/13/22.
//

import Foundation

struct Daily: Codable {
    let date: Date
    struct Temp: Codable {
        let min: Double
        let max: Double
    }
    let temp: Temp
    struct Weather: Codable {
        let main: String
        let description: String
    }
    let weather: [Weather]
}
