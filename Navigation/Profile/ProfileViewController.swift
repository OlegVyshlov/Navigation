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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupLayout()
    }

    func setupLayout() {
        view.addSubview(profileHeaderView)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
}
