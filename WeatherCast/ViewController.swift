//
//  ViewController.swift
//  WeatherCast
//
//  Created by Scott Baumbich on 5/15/16.
//  Copyright © 2016 Scott Baumbich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var currentTempLabel: UILabel?
    @IBOutlet var currentHumidityLabel: UILabel?
    @IBOutlet var currentPercipLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Code only executes if 1) plist can be loaded, 2) plist can be converted to an NSDict 3) If dic contains info useing key "currently"
        if let plistPath = NSBundle.mainBundle().pathForResource("CurrentWeather", ofType: "plist"), let weatherDict = NSDictionary(contentsOfFile: plistPath), let currentWeatherDict = weatherDict["currently"] as? [String: AnyObject] {
            //print(plistPath)
            
            let currentWeather = CurrentWeather(weatherDict: currentWeatherDict)
            currentTempLabel?.text = "\(currentWeather.temp)º"
            currentHumidityLabel?.text = "\(currentWeather.humidity)%"
            currentPercipLabel?.text = "\(currentWeather.precipProb)%"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

