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
    var dailyFact: BehaviorRelay<String>{ get }
}

class CardViewModel {
    let disposeBag = DisposeBag()
    
    private let dailyFact: BehaviorRelay = BehaviorRelay<String>(value: "")
    private var service: WebService?
    
    init(service: WebService) {
        self.service = service
    }
    
}
