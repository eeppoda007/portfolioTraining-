//
//  WeatherData.swift
//  Clima
//
//  Created by Courtney Hay on 9/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
// Codable - combines both proticals into one (encodable and decodable) = Codable
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}
struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    // let description: String
}
