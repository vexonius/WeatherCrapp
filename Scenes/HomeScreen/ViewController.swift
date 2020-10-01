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
    private let forecastTilesView = SnippetTableView()
    
    private let viewModel = CardViewModel(service: WebService())
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCardView()
        setupForecastTilesView()
    }
    
    private func setupCardView(){
        view.addSubview(cardView)
        
        cardView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        cardView.updateConstraints()
    }
    
    private func setupForecastTilesView(){
        view.addSubview(forecastTilesView)
        
        forecastTilesView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(8)
            make.top.equalTo(cardView.cardBackground.snp.bottom)
            make.height.equalTo(120)
        }
        
        forecastTilesView.updateConstraints()
        
        forecastTilesView.collectionView.delegate = self
        forecastTilesView.collectionView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        bindViews()
    }
    
    private func bindViews() {
        viewModel.currentWeather
            .bind { weather in
                guard let weather = weather else { return }
                self.cardView.temperature.text = String(format: "  %.0f°", weather.temp)
                self.cardView.city.text = String(format: "%@, %@", weather.cityName, weather.countryCode)
                self.cardView.weatherDescription.text = weather.weather.weatherDescription
                self.cardView.weatherIcon.image = UIImage(named: "weatherRainy")?.withTintColor(UIColor.white)
            }
            .disposed(by: disposeBag)
    }
    
}

extension ViewController: UICollectionViewDataSource,  UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
        
        self.present(UIViewController(), animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        myCell.backgroundColor = UIColor(named: "lightGrey")
        myCell.layer.cornerRadius = 12
        return myCell
    }
}


