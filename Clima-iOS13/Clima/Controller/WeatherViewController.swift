//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation // import to get access to the phones gps
class WeatherViewController: UIViewController{
    
    // added this delegat to access the text field  (UITextFieldDelegate)
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var currentLocationButtonPressed: UIButton!
    
    var weatherManager = WeatherManager()
    var locationManager = CLLocationManager()// responsible to get the current GPS of the phone
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self// 1
        // shows the popup to give the use a choice to choose the use of their location.
        locationManager.requestWhenInUseAuthorization()// 2// triger a request to be able to uses the phones gps only when in use
        locationManager.requestLocation()// 3
        
       
        
        // this will have the textfield notify the vc
        searchTextField.delegate = self
        weatherManager.delegate = self // DELEGATE STEP 7//set current class as the delegate
      
    }
 
}
 //MARK: - CLLocationManagerDelegate
extension WeatherViewController: CLLocationManagerDelegate {// 4
  @IBAction func locationBtnWasPressed(_ sender: UIButton) {
         locationManager.requestLocation()
        
         }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            //fectch the weather from weather manager
            weatherManager.fetchWeather(latitude: lat , longitute: lon)
        }
    }
    
      func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
                     print(error)
                }
    
   
}

//MARK: - UITextFieldDelegate
extension WeatherViewController: UITextFieldDelegate {
    
    @IBAction func searchPressed(_ sender: UIButton) {
        // tell the searchfield to end editing
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    //Delegates: -
    // textFieldShouldReturn ask the delegate if the return button was pressed?
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    // textFieldShouldEndEditing - is used for validation of the users input Ex: user typed and incorrect character
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }else{
            textField.placeholder = " Cannot be blank"
            return false
        }
    }
    // textFieldDidEndEditing clears the text field
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        // Use searchTextField.text to get weathe for that city
        if  let city = searchTextField.text{
            weatherManager.fetchWeather(cityName: city)
        }
        searchTextField.text = ""
    }
}
//MARK: - WeatherManagerDelegate
extension WeatherViewController: WeatherManagerDelegate {//// DELEGATE STEP 5
    
    // created a func to get  the weather from the Weathermodel using the WeatherManagerDelegate
    /////// DELEGATE STEP 6
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel){
        // update from Completion Handler
        // must be added when updating ui from a Completion Handler
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.tempretureString
            self.cityLabel.text = weather.cityName
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}

