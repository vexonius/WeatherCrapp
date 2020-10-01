//
//  ForecastResponse.swift
//  WeatherCrapp
//
//  Created by Tino Emer on 01/10/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import Foundation


struct ForecastResponse : Codable {
    let data: [Forecast]
    let lat: String
    let lon: String
    let cityName: String
    let timezone: String
    let countryCode: String
    let stateCode: String
    
    enum CodingKeys: String, CodingKey {
        case data
        case lat, lon
        case cityName = "city_name"
        case timezone
        case countryCode = "country_code"
        case stateCode = "state_code"
    }
}

struct Forecast : Codable {
    
    let date: String
    let ts: Int64
    let dateTime: String
    let windGustSpeed: Double
    let windSpeed: Double
    let windDirection: Int
    let windDirectionAbb: String
    let windDirectionFull: String
    let temperature: Double
    let maxTemperature: Double
    let minTempreature: Double
    let highTemperature: Double
    let lowTemperature: Double
    let feelsLikeMaxTemperature: Double
    let feelsLikeMinTemperature: Double
    let probabilityOfPercipitation: Double
    let precipitation: Double
    let snow: Int
    let snowDepth: Int
    let seaLevelPressure: Double
    let pressure: Double
    let dewPoint: Double
    let relativeHumidity: Double
    let weather: Weather
    let cloudsLow: Double
    let cloudsMid: Double
    let cloudsHigh: Double
    let clouds: Double
    let visibility: Double
    let maxDhi: Double?
    let UVIndex: Double
    let moonPhase: Double
    let moonPhaseLunation: Double
    let moonRiseTime: Int64
    let moonset: Int64
    let sunrise: Int64
    let sunset: Int64
    
    enum CodingKeys: String, CodingKey {
        case date = "valid_date"
        case ts
        case dateTime = "datetime"
        case windGustSpeed = "wind_gust_spd"
        case windSpeed = "wind_spd"
        case windDirection = "wind_dir"
        case windDirectionAbb = "wind_cdir"
        case windDirectionFull = "wind_cdir_full"
        case temperature = "temp"
        case maxTemperature = "max_temp"
        case minTempreature = "min_temp"
        case highTemperature = "high_temp"
        case lowTemperature = "low_temp"
        case feelsLikeMaxTemperature = "app_max_temp"
        case feelsLikeMinTemperature = "app_min_temp"
        case probabilityOfPercipitation = "pop"
        case precipitation = "precip"
        case snow = "snow"
        case snowDepth = "snow_depth"
        case seaLevelPressure = "slp"
        case pressure = "pres"
        case dewPoint = "dewpt"
        case relativeHumidity = "rh"
        case weather
        case cloudsLow = "clouds_low"
        case cloudsMid = "clouds_mid"
        case cloudsHigh = "clouds_hi"
        case clouds
        case visibility = "vis"
        case maxDhi = "max_dhi"
        case UVIndex  = "uv"
        case moonPhase = "moon_phase"
        case moonPhaseLunation = "moon_phase_lunation"
        case moonRiseTime = "moonrise_ts"
        case moonset = "moonset_ts"
        case sunrise = "sunrise_ts"
        case sunset = "sunset_ts"
    }
}
