//
//  BaseViewController.swift
//  Practice
//
//  Created by taeuk on 2021/11/19.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setProperties()
        setBind()
        setConfigure()
        setConstraints()
    }
    
    func setProperties() {}
    func setBind() {}
    func setConfigure() {}
    func setConstraints() {}

}
