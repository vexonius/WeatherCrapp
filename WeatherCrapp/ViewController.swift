//
//  ViewController.swift
//  WeatherCrapp
//
//  Created by Tino Emer on 27/09/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift

class ViewController: UIViewController {

    private let cardView = CardView()
    private let collectionView = SnippetTableView()
    
    private let viewModel = CardViewModel(service: WebService())
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCardView()
        setupCollectionView()
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
    
    private func setupCollectionView(){
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        collectionView.updateConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        bindViews()
    }
    
    private func bindViews() {
        viewModel.currentWeather
            .bind { weather in
                if weather == nil { return }
                self.cardView.temperature.text = String(format: " %.0f °", weather?.temp ?? 0)
            }
            .disposed(by: disposeBag)
    }
    
    
    
    

}


