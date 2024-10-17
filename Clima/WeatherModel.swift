//
//  WeatherModel.swift
//  Clima
//
//  Created by Robert Haynes on 2024/10/17.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    var conditionName: String {
        switch conditionId {
            case ...299:
                return "cloud.bolt"
            case 300...399:
                return "cloud.drizzle"
            case 500...599:
                return "cloud.rain"
            case 600...699:
                return "cloud.snow"
            case 701...799:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...899:
                return "cloud"
            default:
                return "sun.min"
        }
    }
}
