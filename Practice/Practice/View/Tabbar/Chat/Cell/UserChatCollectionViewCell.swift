//
//  ChatCollectionViewCell.swift
//  Practice
//
//  Created by taeuk on 2021/11/20.
//

import UIKit

class UserChatCollectionViewCell: UICollectionViewCell {
    
    private let profileImage: UIImageView = {
        $0.image = UIImage(named: "contest")
        return $0
    }(UIImageView())
    
    private let userName: UILabel = {
        $0.text = "user"
        return $0
    }(UILabel())
    
    private let lastDate: UILabel = {
        $0.text = "1hour"
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private let userNameHorizontalView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fill
        $0.spacing = 10
        return $0
    }(UIStackView())
    
    private let userText: UILabel = {
        $0.text = "1324132234"
        $0.textColor = .gray
        return $0
    }(UILabel())
    
    private let userInfoVerticalView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 5
        return $0
    }(UIStackView())
    
    private let unCheckMessage: UILabel = {
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setConfigure()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConfigure() {
        
        contentView.backgroundColor = .white
        
        contentView.addSubview(profileImage)
        contentView.addSubview(userInfoVerticalView)
        
        userNameHorizontalView.addArrangedSubview(userName)
        userNameHorizontalView.addArrangedSubview(lastDate)
        userInfoVerticalView.addArrangedSubview(userNameHorizontalView)
        userInfoVerticalView.addArrangedSubview(userText)
        
        lastDate.setContentHuggingPriority(.defaultLow - 5, for: .horizontal)
    }
    
    private func setConstraints() {
        
        profileImage.snp.makeConstraints {
            $0.top.equalTo(contentView.snp.top).offset(10)
            $0.leading.equalTo(contentView.snp.leading).offset(20)
            $0.bottom.equalTo(contentView.snp.bottom).offset(-10)
            $0.width.equalTo(40)
        }
        
        userInfoVerticalView.snp.makeConstraints {
            $0.leading.equalTo(profileImage.snp.trailing).offset(10)
            $0.top.bottom.equalTo(profileImage)
            $0.trailing.equalTo(contentView.snp.trailing).offset(-50)
        }
    }
}
