//
//  ChatViewController.swift
//  Practice
//
//  Created by taeuk on 2021/11/19.
//

import UIKit
import SnapKit

final class ChatViewController: BaseViewController {

    private let flowLayout: UICollectionViewFlowLayout = {
        return $0
    }(UICollectionViewFlowLayout())
    
    private lazy var collectionView: UICollectionView = {
        return $0
    }(UICollectionView(frame: .zero, collectionViewLayout: flowLayout))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.registerCell(UserChatCollectionViewCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func setProperties() {
        
    }
    
    override func setConfigure() {
        
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
    }
    
    override func setConstraints() {
        
        collectionView.snp.makeConstraints {
            $0.edges.equalTo(view)
        }
    }

}

extension ChatViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: UserChatCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
