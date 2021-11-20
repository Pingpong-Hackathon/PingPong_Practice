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

        collectionView.registerCell(ChatCollectionViewCell.self)
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
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 2
        case 2:
            return 3
        case 3:
            return 4
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let cell: ChatCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)
            
            return cell
        case 1:
            let cell: ChatCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)
            
            return cell
        case 2:
            let cell: ChatCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)
            
            return cell
        case 3:
            let cell: ChatCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)
            
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
