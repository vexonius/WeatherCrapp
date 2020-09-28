//
//  ViewController.swift
//  WeatherCrapp
//
//  Created by Tino Emer on 27/09/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

       private let cardView = CardView()
       
        
        override func viewDidLoad() {
            super.viewDidLoad()
        
            setupCardView()
        }
        
        private func setupCardView(){
            view.addSubview(cardView)
            
            cardView.snp.makeConstraints { make in
                make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
                make.bottom.equalToSuperview().offset(-20)
                make.left.equalToSuperview()
                make.right.equalToSuperview()
            }
            
            cardView.updateConstraints()
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(true)
            
        }


    }


