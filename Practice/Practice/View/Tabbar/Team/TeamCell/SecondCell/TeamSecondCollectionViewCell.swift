//
//  TeamSecondCollectionViewCell.swift
//  Practice
//
//  Created by taeuk on 2021/11/21.
//

import UIKit

class TeamSecondCollectionViewCell: UICollectionViewCell {
    
    private let teamSuggestLabel: UILabel = {
        $0.text = "팀 테스트22"
        return $0
    }(UILabel())
    
    private let teamSuggestDateLabel: UILabel = {
        $0.text = "12:00"
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private let teamSuggestStackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fill
        $0.spacing = 10
        return $0
    }(UIStackView())
    
    private let flowlayout: UICollectionViewFlowLayout = {
        $0.scrollDirection = .horizontal
        return $0
    }(UICollectionViewFlowLayout())
    
    private lazy var collectionView: UICollectionView = {
        return $0
    }(UICollectionView(frame: .zero, collectionViewLayout: flowlayout))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfigure()
        setConstraints()
        
        collectionView.registerCell(TeamImageCollectionViewCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setConfigure() {
        
        contentView.addSubview(teamSuggestStackView)
        contentView.addSubview(collectionView)
        teamSuggestStackView.addArrangedSubview(teamSuggestLabel)
        teamSuggestStackView.addArrangedSubview(teamSuggestDateLabel)
        
        teamSuggestLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    }
    
    private func setConstraints() {
        
        teamSuggestStackView.snp.makeConstraints {
            $0.top.equalTo(contentView.snp.top).offset(25)
            $0.leading.equalTo(contentView.snp.leading).offset(20)
            $0.trailing.equalTo(contentView.snp.trailing).offset(-20)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(teamSuggestStackView.snp.bottom).offset(15)
            $0.leading.equalTo(teamSuggestStackView.snp.leading)
            $0.trailing.equalTo(contentView.snp.trailing)
            $0.bottom.equalTo(contentView.snp.bottom).offset(-25)
        }
    }

}

extension TeamSecondCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: TeamImageCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 220, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
