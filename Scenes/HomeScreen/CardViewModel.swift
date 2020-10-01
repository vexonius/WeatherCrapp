//
//  CardViewModel.swift
//  wat
//
//  Created by Tino Emer on 26/09/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import Foundation
import RxSwift
import RxRelay

protocol ViewModelProvider {
    var currentWeather: BehaviorRelay<String>{ get }
}

class CardViewModel {
    let disposeBag = DisposeBag()
    
    var currentWeather = BehaviorRelay<WeatherResponse?>(value: nil)
    private var service: WebService?
    
    init(service: WebService) {
        self.service = service
        
        service.getCurrentWeather()
            .subscribe(onNext: { [weak self] weatherResponse in
                self?.currentWeather.accept(weatherResponse)
            }, onError: { (Error) in
                debugPrint("API frtch error")
            })
            .disposed(by: disposeBag)
    }
    
}
