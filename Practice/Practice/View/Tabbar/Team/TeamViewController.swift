//
//  TeamViewController.swift
//  Practice
//
//  Created by taeuk on 2021/11/19.
//

import UIKit
import SnapKit

final class TeamViewController: BaseViewController {
    
    private let flowlayout: UICollectionViewFlowLayout = {
        $0.scrollDirection = .vertical
        return $0
    }(UICollectionViewFlowLayout())
    
    private lazy var collectionView: UICollectionView = {
        return $0
    }(UICollectionView(frame: .zero, collectionViewLayout: flowlayout))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerCell(TeamFirstCollectionViewCell.self)
        collectionView.registerCell(TeamSecondCollectionViewCell.self)
    }
    
    override func setProperties() {
        
        collectionView.backgroundColor = .white
    }
    
    override func setConfigure() {
        
        view.addSubview(collectionView)
    }
    
    override func setConstraints() {
        
        collectionView.snp.makeConstraints {
            $0.top.bottom.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.equalTo(view)
        }
    }

}

extension TeamViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        default:
            return 0
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell: TeamFirstCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)

            return cell
        case 1:
            let cell: TeamSecondCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)

            return cell
        default:
            return UICollectionViewCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        switch indexPath.section {
        case 0:
            return CGSize(width: view.frame.size.width, height: 250)
        case 1:
            return CGSize(width: view.frame.size.width, height: 300)
        default:
            return .zero
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

//extension TeamViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 2
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell: TeamFirstCollectionViewCell = collectionView.dequeueCollectionCell(for: indexPath)
//        
//        return cell
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.size.width, height: 350)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 5
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//}
