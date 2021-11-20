//
//  ContestImageCollectionViewCell.swift
//  Practice
//
//  Created by taeuk on 2021/11/21.
//

import UIKit
import SnapKit

class ContestImageCollectionViewCell: UICollectionViewCell {
    
    private let contestImage: UIImageView = {
        $0.image = UIImage(named: "contest")
        $0.contentMode = .scaleAspectFit
        $0.clipsToBounds = false
        return $0
    }(UIImageView())
    
    private let contestDday: UILabel = {
        $0.text = "D-25"
        return $0
    }(UILabel())
    
    private let contestLabel: UILabel = {
        $0.text = "경진대회 테스트"
        return $0
    }(UILabel())
    
    private let contestDate: UILabel = {
        $0.text = "2021.10.13 ~ 2021.11.20"
        return $0
    }(UILabel())
    
    private let contestLabelStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fillProportionally
        $0.spacing = 1
        return $0
    }(UIStackView())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfigure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConfigure() {
        
        contentView.addSubview(contestImage)
        contentView.addSubview(contestLabelStackView)
        contentView.addSubview(contestDday)
        contestLabelStackView.addArrangedSubview(contestLabel)
        contestLabelStackView.addArrangedSubview(contestDate)
        
        contestLabelStackView.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
    
    private func setConstraints() {
        
        contestImage.snp.makeConstraints {
            $0.top.equalTo(contentView.snp.top)
            $0.leading.trailing.equalTo(contentView)
            $0.height.equalTo(180)
        }
        
        contestDday.snp.makeConstraints {
            $0.top.equalTo(contestImage.snp.top).offset(10)
            $0.trailing.equalTo(contestImage.snp.trailing).offset(-10)
            $0.width.equalTo(40)
        }
        
        contestLabelStackView.snp.makeConstraints {
            $0.top.equalTo(contestImage.snp.bottom).offset(5)
            $0.leading.trailing.bottom.equalTo(contentView)
        }
    }
}
