//
//  ViewController.swift
//  Practice
//
//  Created by taeuk on 2021/11/19.
//

import UIKit

final class MainTabbarController: UITabBarController {

    let contestExhibitViewController = UINavigationController(rootViewController: ContestExhibitViewController())
    let chatViewController = UINavigationController(rootViewController: ChatViewController())
    let teamViewController = UINavigationController(rootViewController: TeamViewController())
    let calendarViewController = UINavigationController(rootViewController: CalendarViewController())
    let mypageViewController = UINavigationController(rootViewController: MyPageViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        contestExhibit()
        chat()
        team()
        calendar()
        myPage()
        
        let tabbarControllers = [contestExhibitViewController,
                                 chatViewController,
                                 teamViewController,
                                 calendarViewController,
                                 mypageViewController]
        
        self.viewControllers = tabbarControllers
        
    }

    private func contestExhibit() {

        let contestExhibitIcon = UITabBarItem(title: "공모전",
                                              image: UIImage(named: "contest"),
                                              selectedImage: UIImage(named: "contest"))
        
        contestExhibitViewController.tabBarItem = contestExhibitIcon
    }
    
    private func chat() {

        let chatIcon = UITabBarItem(title: "채팅",
                                              image: UIImage(named: "contest"),
                                              selectedImage: UIImage(named: "contest"))
        
        chatViewController.tabBarItem = chatIcon
    }
    
    private func team() {

        let teamIcon = UITabBarItem(title: "팀",
                                              image: UIImage(named: "contest"),
                                              selectedImage: UIImage(named: "contest"))
        
        teamViewController.tabBarItem = teamIcon
    }
    
    private func calendar() {

        let calendarIcon = UITabBarItem(title: "캘린더",
                                              image: UIImage(named: "contest"),
                                              selectedImage: UIImage(named: "contest"))
        
        calendarViewController.tabBarItem = calendarIcon
    }
    
    private func myPage() {

        let myPageIcon = UITabBarItem(title: "마이페이지",
                                              image: UIImage(named: "contest"),
                                              selectedImage: UIImage(named: "contest"))
        
        mypageViewController.tabBarItem = myPageIcon
    }
    
}

