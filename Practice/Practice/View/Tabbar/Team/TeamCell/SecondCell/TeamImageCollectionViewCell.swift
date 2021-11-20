//
//  TeamImageCollectionViewCell.swift
//  Practice
//
//  Created by taeuk on 2021/11/21.
//

import UIKit

class TeamImageCollectionViewCell: UICollectionViewCell {
    
    private let recruitImage: UIImageView = {
        $0.image = UIImage(named: "contest")
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    private let recruitTitle: UILabel = {
        $0.text = "팀원 모집 테스트"
        return $0
    }(UILabel())
    
    private let participationMembers: UILabel = {
        $0.text = "최우진 외 3명"
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private let recruitStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fillEqually
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
        
        contentView.addSubview(recruitImage)
        contentView.addSubview(recruitStackView)
        recruitStackView.addArrangedSubview(recruitTitle)
        recruitStackView.addArrangedSubview(participationMembers)
    }
    
    private func setConstraints() {
        
        recruitImage.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(contentView)
            $0.height.equalTo(80)
        }
        
        recruitStackView.snp.makeConstraints {
            $0.top.equalTo(recruitImage.snp.bottom).offset(15)
            $0.leading.equalTo(contentView).offset(15)
            $0.trailing.equalTo(contentView).offset(-15)
            $0.bottom.equalTo(contentView).offset(-30)
        }
    }
}
