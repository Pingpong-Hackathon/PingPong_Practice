//
//  Protocol+Reusable.swift
//  Practice
//
//  Created by taeuk on 2021/11/20.
//

import UIKit

protocol ReusableCell: AnyObject {
    static var reuseIdentifier: String { get }
}

extension ReusableCell {
    static var reuseIdentifier: String { return String(describing: self) }
}
