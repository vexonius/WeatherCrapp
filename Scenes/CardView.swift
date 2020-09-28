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
    private let cardBackground = UIView()
    private let caption = UILabel()
    
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
            make.height.greaterThanOrEqualTo(superview!.center.y)
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
        caption.textColor = UIColor.darkGray
        caption.font = UIFont.systemFont(ofSize: 32, weight: .black)
        caption.textAlignment = .center
        caption.lineBreakMode = .byWordWrapping
        caption.numberOfLines = 0
        caption.text = "Hello IOS development!"
        
        cardBackground.addSubview(caption)
        
        caption.snp.makeConstraints { make in
            make.edges.size.equalToSuperview().inset(16)
        }
    }
    
    
}
