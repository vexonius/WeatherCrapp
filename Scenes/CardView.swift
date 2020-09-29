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
    let city = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(cardBackground)
        inflateCardBackground()
        inflateCaption()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        cardBackground.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(16)
            make.height.greaterThanOrEqualTo(superview!.center.y + superview!.center.y / 2)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        super.updateConstraints()
    }
    
    private func inflateCardBackground(){
        cardBackground.backgroundColor = UIColor(named: "limeGreen")
        cardBackground.layer.cornerRadius = 20
    }
    
    private func inflateCaption(){
        temperature.textColor = UIColor.white
        temperature.font = UIFont.systemFont(ofSize: 99, weight: .black)
        temperature.textAlignment = .center
        temperature.lineBreakMode = .byWordWrapping
        temperature.numberOfLines = 0
        
        cardBackground.addSubview(temperature)
        
        temperature.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview().inset(16)
            make.bottom.equalTo(superview?.center.y ?? 200).offset(-16)
        }
    }
    
}
