//
//  CardView.swift
//  wat
//
//  Created by Tino Emer on 26/09/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import Foundation
import UIKit

class CardView: UIView {
    let cardBackground = UIView()
    let temperature = UILabel()
    let city = UILabel()
    let weatherDescription = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(cardBackground)
        
        inflateCardBackground()
        inflateCityTextView()
        inflateTemperatureTextView()
        inflateWeatherDescription()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        cardBackground.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(16)
            make.height.greaterThanOrEqualTo((superview?.center.y ?? 200 / 2) ?? 100)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        super.updateConstraints()
    }
    
    private func inflateCardBackground(){
        cardBackground.backgroundColor = UIColor(named: "limeGreen")
        cardBackground.layer.cornerRadius = 20
    }
    
    private func inflateTemperatureTextView(){
        temperature.textColor = UIColor.white
        temperature.font = UIFont.systemFont(ofSize: 64, weight: .black)
        temperature.textAlignment = .center
        temperature.lineBreakMode = .byWordWrapping
        temperature.numberOfLines = 0
        
        cardBackground.addSubview(temperature)
        
        temperature.snp.makeConstraints { make in
            make.centerX.equalTo(cardBackground)
            make.centerY.equalTo(cardBackground).offset(-20)
            make.left.right.equalTo(cardBackground).inset(16)
            make.height.equalTo(80)
        }
    }
    
    private func inflateCityTextView(){
        city.textColor = UIColor.white
        city.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        city.textAlignment = .left
        city.lineBreakMode = .byWordWrapping
        city.numberOfLines = 0
        
        cardBackground.addSubview(city)
        
        city.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview().inset(16)
            make.height.equalTo(60)
        }
    }
    
    private func inflateWeatherDescription () {
        weatherDescription.textColor = UIColor.white
        weatherDescription.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        weatherDescription.textAlignment = .center
       
        
        cardBackground.addSubview(weatherDescription)
        
        weatherDescription.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(temperature.snp.bottom)
            make.height.greaterThanOrEqualTo(30)
        }
    }
    
}
