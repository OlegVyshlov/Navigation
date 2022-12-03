//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by OV on 01.11.2022.
//

import UIKit

struct Profile {
    
    var title: String
    var description: String
}

class ProfileHeaderView: UIView {
    
    lazy var profile = Profile(title: "Skilled Driver", description: "Waiting for something...")
    
    private let avatarImage: UIImageView = {
        let avatar = UIImageView()
        avatar.frame = CGRect(x: 16, y: 116, width: 120, height: 120)
        avatar.backgroundColor = .green
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = UIColor.white.cgColor
        avatar.layer.cornerRadius = 60
        avatar.image = UIImage(named: "Toretto-round.png")
        avatar.translatesAutoresizingMaskIntoConstraints = true
        return avatar
      
    }()
        
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 160, y: 90, width: 200, height: 100)
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 160, y: 160, width: 200, height: 100)
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 16, y: 252, width: 344, height: 50)
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = CGRectGetHeight(button.bounds) / 4
        button.layer.shadowOffset = CGSize.init(width: 4, height: 4)
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.translatesAutoresizingMaskIntoConstraints = true
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        addTargets()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        addSubview(avatarImage)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(button)
        
        titleLabel.text = profile.title
        descriptionLabel.text = profile.description
    }
    
    private func addTargets() {
        button.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
    }
    
    @objc func tapOnButton() {
        print("Blue button")
    }

}
