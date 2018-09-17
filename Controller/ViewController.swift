//
//  ViewController.swift
//  Weather Forecast
//
//  Created by Nghia on 9/17/18.
//  Copyright © 2018 Nghia. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var currentCityTemp: UILabel!
    @IBOutlet weak var currentDate: UILabel!
    @IBOutlet weak var specialBG: UIImageView!
    
    //Variables
    var currentWeather: CurrentWeather!
    
    //Constants

    override func viewDidLoad() {
        super.viewDidLoad()
        currentWeather = CurrentWeather()
        currentWeather.downloadCurrentWeather {
            self.applyUI()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func applyUI() {
        self.cityName.text = self.currentWeather._cityName
        self.weatherType.text = self.currentWeather._weatherType
        self.currentCityTemp.text = "\(Int(self.currentWeather._currentTemp))"
        self.currentDate.text = self.currentWeather._date
    }


}

