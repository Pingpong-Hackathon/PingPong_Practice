//
//  TeamRecruitCollectionViewCell.swift
//  Practice
//
//  Created by taeuk on 2021/11/21.
//

import UIKit
import SnapKit

class TeamRecruitCollectionViewCell: UICollectionViewCell {
    
    private let recruitTitle: UILabel = {
        $0.text = "스터디 테스트"
        return $0
    }(UILabel())
    
    private let participationMembers: UILabel = {
        $0.text = "최우진 외 17명"
        return $0
    }(UILabel())
    
    private let recruitStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fill
        $0.spacing = 1
        return $0
    }(UIStackView())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfigure()
        setConstraints()
        contentView.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConfigure() {
        
        contentView.addSubview(recruitStackView)
        recruitStackView.addArrangedSubview(recruitTitle)
        recruitStackView.addArrangedSubview(participationMembers)
    }
    
    private func setConstraints() {
        
        recruitStackView.snp.makeConstraints {
            $0.top.leading.equalTo(contentView).offset(15)
            $0.trailing.equalTo(contentView).offset(-15)
        }
    }
}
