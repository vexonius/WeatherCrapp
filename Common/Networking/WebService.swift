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

protocol WebServiceProvide {
   // func getCurrentWeather() -> Observable<WeatherResponse?>
}

class WebService {
    
    private let disposeBag = DisposeBag()
    
    struct Constants {
        static let baseURL = "https://api.weatherbit.io/v2.0/"
        static let currentWeatherEndpoint = "current"
        static let params: [String: String] = [ "key": "https://api.weatherbit.io/v2.0/current", "lang": "hr" ]
    }
    
    init() {
        
    }
    
//    func getCurrentWeather() -> Observable<WeatherResponse?> {
//
//        return RxAlamofire
//            .requestJSON(.get, Constants.baseURL + Constants.currentWeatherEndpoint)
//            .debug()
//            .flatMap { (arg0) -> Observable<WeatherResponse?> in
//
//                let (HTTPURLResponse, json) = arg0
//                return Observable.just(WeatherResponse())
//        }
//
//        return Observable.just(WeatherResponse())
//
//    }
    
}
