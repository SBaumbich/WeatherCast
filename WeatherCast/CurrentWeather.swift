//
//  CurrentWeather.swift
//  WeatherCast
//
//  Created by Scott Baumbich on 5/15/16.
//  Copyright © 2016 Scott Baumbich. All rights reserved.
//

import Foundation

struct CurrentWeather {
    
    let temp: Int
    let humidity: Int
    let precipProb: Int
    let summary: String
    
    // Bang operator (!) unsafe for unwrapping optionals
    init(weatherDict: [String: AnyObject]){
        temp = weatherDict["temperature"] as! Int
        let humidityFloat = weatherDict["humidity"] as! Double
        humidity = Int(humidityFloat * 100)
        let precipProbFloat = weatherDict["precipProbability"] as! Double
        precipProb = Int(precipProbFloat * 100)
        summary = weatherDict["summary"] as! String
    }
}