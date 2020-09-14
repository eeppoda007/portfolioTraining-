//
//  WeatherModel.swift
//  Clima
//
//  Created by Courtney Hay on 9/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let tempterature: Double
    
    // computed property
    var tempretureString: String{
        let answer = String(format:"%.1f",tempterature)
        return answer
    }
    
    var conditionName: String {
        
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain.fill"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog.fill"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.sun.fill"
        default:
            return "Error"
        }
    }
}
