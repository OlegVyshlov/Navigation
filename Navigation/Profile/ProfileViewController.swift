//
//  ProfileViewController.swift
//  Navigation
//
//  Created by OV on 20.10.2022.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private let profileHeaderView: ProfileHeaderView = {
        let view = ProfileHeaderView()
        return view
    }()

    private let newButton: UIButton = {
        let button = UIButton()
        button.setTitle("New button", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = CGRectGetHeight(button.bounds) / 4
        button.layer.shadowOffset = CGSize.init(width: 4, height: 4)
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(ProfileViewController.self, action: #selector(newTapOnButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupLayout()
        title = "Profile"
    }
    
    @objc func newTapOnButton() {
        print("New button")
    }

    func setupLayout() {
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200),

            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            newButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            newButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
}
