//
//  WebService.swift
//  wat
//
//  Created by Tino Emer on 26/09/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import Foundation
import RxSwift
import RxAlamofire
import SwiftyJSON

protocol WebServiceProvide {
    func getCurrentWeather() -> Observable<WeatherResponse?>
}

class WebService {
    
    private let disposeBag = DisposeBag()
    
    struct Constants {
        static let baseURL = "https://api.weatherbit.io/v2.0/"
        static let currentWeatherEndpoint = "current"
        static let params: [String: String] = [ "city":"Split,HR", "key": "a6770fb472134a5f80c00765902762f2", "lang": "hr" ]
    }

    
    func getCurrentWeather() -> Observable<WeatherResponse?> {
        
        return RxAlamofire
            .requestJSON(.get, Constants.baseURL + Constants.currentWeatherEndpoint, parameters: Constants.params)
            .flatMap { (_, data) -> Observable<WeatherResponse?>  in
                
                let weatherData = JSON(data)
                
//              FIXME: Clean upp force unwrapping
                
                if let weather = try? JSONDecoder().decode(WeatherResponse.self, from: weatherData["data"].array!.first!.rawData()) {
                    return Observable.just(weather)
                } else {
                    return Observable.just(nil)
                }
        }
        
    }
    
    
}
