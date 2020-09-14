//
//  WeatherManager.swift
//  Clima
//
//  Created by Courtney Hay on 9/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
//create the protocol in the class that uses it
// DELEGATE STEP 3
protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager,weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&appid=1f779dcd0fa39810c46a361e32f5fe49&units=metric"
    //
    var delegate: WeatherManagerDelegate? //// DELEGATE STEP 2
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
        performRequest(with: urlString)
    }
    func fetchWeather(latitude: Double , longitute: Double){
        let urlString = "\(weatherURL)&lat=\(latitude)&lon=\(longitute)"
        performRequest(with: urlString)
        
    }
    func performRequest(with urlString: String) {
        //1. Create a Url
        if let url = URL(string: urlString){
            //2. Create urlsession
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                // if error stop the process return nothing
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                // if data is good  do action here
                if let safeData = data {
                    // test string
                    //let dataString = String(data: safeData, encoding: .utf8)
                    // print(dataString!)
                    if let weather  =  self.parseJSON(safeData){
                        self.delegate?.didUpdateWeather(self,weather: weather) // DELEGATE STEP 1
                    }
                }
            }
            //let task = session.dataTask(with: url, completionHandler: handler(data:urlResponse:error:))
            //4. Start the task
            task.resume()
        }
    }
    //    func handler(data: Data?, urlResponse: URLResponse?, error: Error?){
    //
    //        // if error stop the process return nothing
    //        if error != nil {
    //            print(error!)
    //            return
    //        }
    //        // if data is good  do action here
    //        if let safeData = data {
    //            let dataString = String(data: safeData, encoding: .utf8)
    //            print(dataString!)
    //        }
    //    }
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try  decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            let weather = WeatherModel(conditionId: id, cityName: name, tempterature: temp)
            return weather
        }catch{
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}

