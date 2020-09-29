//
//  SnippetsTableView.swift
//  WeatherCrapp
//
//  Created by Tino Emer on 27/09/2020.
//  Copyright © 2020 Tino Emer. All rights reserved.
//

import Foundation
import UIKit


class SnippetTableView : UIView {
    
    lazy var collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(collectionView)
        //self.updateConstraintsIfNeeded()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        
        collectionView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview().inset(16)
        }
        
        super.updateConstraints()
        
    }
    
    
    
}
