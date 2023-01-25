//
//  TabBarController.swift
//  Navigation
//
//  Created by OV on 20.10.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - Properties
    
    var feedTabNavigationController: UINavigationController!
    var profileTabNavigationControoller: UINavigationController!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Methods
    
    private func setupUI() {
        feedTabNavigationController = UINavigationController.init(rootViewController: FeedViewController())
        profileTabNavigationControoller = UINavigationController.init(rootViewController: LogInViewController())
        
        self.viewControllers = [feedTabNavigationController, profileTabNavigationControoller]
        
        let item1 = UITabBarItem(title: "Feed", image: UIImage(systemName: "house.fill"), tag: 0)
        let item2 = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 1)
        
        feedTabNavigationController.tabBarItem = item1
        profileTabNavigationControoller.tabBarItem = item2
        
        UITabBar.appearance().tintColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 255/255.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = .gray
    }
    
}

// MARK: - Extension

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}

