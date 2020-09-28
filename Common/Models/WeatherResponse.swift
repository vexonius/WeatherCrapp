//
//  WeatherResponse.swift
//  wat
//
//  Created by Tino Emer on 26/09/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import Foundation


// MARK: - WeatherResponse
struct WeatherResponse: Codable {
    let windCdir: String
    let rh: Int
    let pod, lon: String
    let pres: Double
    let timezone, obTime, countryCode: String
    let clouds, vis: Int
    let windSpd: Double
    let windCdirFull: String
    let appTemp: Double
    let stateCode: String
    let ts, hAngle: Int
    let dewpt: Double
    let weather: Weather
    let uv, aqi: Int
    let station: String
    let windDir, elevAngle: Int
    let datetime: String
    let precip: Int
    let ghi: Double
    let dni, dhi, solarRAD: Int
    let cityName, sunrise, sunset: String
    let temp: Double
    let lat: String
    let slp: Double

    enum CodingKeys: String, CodingKey {
        case windCdir = "wind_cdir"
        case rh, pod, lon, pres, timezone
        case obTime = "ob_time"
        case countryCode = "country_code"
        case clouds, vis
        case windSpd = "wind_spd"
        case windCdirFull = "wind_cdir_full"
        case appTemp = "app_temp"
        case stateCode = "state_code"
        case ts
        case hAngle = "h_angle"
        case dewpt, weather, uv, aqi, station
        case windDir = "wind_dir"
        case elevAngle = "elev_angle"
        case datetime, precip, ghi, dni, dhi
        case solarRAD = "solar_rad"
        case cityName = "city_name"
        case sunrise, sunset, temp, lat, slp
    }
}

// MARK: - Weather
struct Weather: Codable {
    let icon: String
    let code: Int
    let weatherDescription: String

    enum CodingKeys: String, CodingKey {
        case icon, code
        case weatherDescription = "description"
    }
}
