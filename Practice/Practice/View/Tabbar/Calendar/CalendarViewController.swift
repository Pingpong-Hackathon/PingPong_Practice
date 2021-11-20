//
//  CalendarViewController.swift
//  Practice
//
//  Created by taeuk on 2021/11/19.
//

import UIKit
import SnapKit
import FSCalendar

final class CalendarViewController: BaseViewController {

    private let calendar: FSCalendar = {
        return $0
    }(FSCalendar())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calendar.delegate = self
        calendar.dataSource = self
    }
    
    override func setProperties() {
        
    }
    
    override func setConfigure() {
        
        view.addSubview(calendar)
        
        calendar.backgroundColor = .yellow
    }
    
    override func setConstraints() {
        
        calendar.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalTo(view).offset(20)
            $0.trailing.equalTo(view).offset(-20)
            $0.height.equalTo(300)
        }
    }

}

extension CalendarViewController: FSCalendarDelegate, FSCalendarDataSource {
    
}
