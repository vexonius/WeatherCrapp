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
        layout.sectionInset = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 16)
        layout.itemSize = CGSize(width: CGFloat(80), height: CGFloat(80))
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.clear
        collectionView.showsHorizontalScrollIndicator = false
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(collectionView)
        self.updateConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(8)
        }
        
        super.updateConstraints()
        
    }
    
}
