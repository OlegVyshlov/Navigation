//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by OV on 01.11.2022.
//

import UIKit

struct Profile {
    
    var fullName: String
    var status: String
    var statusText: String
}

class ProfileHeaderView: UIView {
    
    lazy var profile = Profile(fullName: "Profile", status: "Skilled Driver", statusText: "Waiting for something...")
    
    private let avatarImageView: UIImageView = {
        let avatar = UIImageView()
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = UIColor.white.cgColor
        avatar.layer.cornerRadius = 60
        avatar.image = UIImage(named: "Toretto-round.png")
        avatar.translatesAutoresizingMaskIntoConstraints = false
        return avatar
      
    }()
    
    private let fullNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusTextField: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let setStatusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = CGRectGetHeight(button.bounds) / 4
        button.layer.shadowOffset = CGSize.init(width: 4, height: 4)
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let newButton: UIButton = {
        let button = UIButton()
        button.setTitle("New button", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .systemYellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
        addTargets()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
        addSubview(newButton)
        
        fullNameLabel.text = profile.fullName
        statusLabel.text = profile.status
        statusTextField.text = profile.statusText
    }
    
   
    func setupConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 116),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 120),
            avatarImageView.widthAnchor.constraint(equalToConstant: 120),

            setStatusButton.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: 0),
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            setStatusButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            
            newButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            newButton.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
            newButton.topAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            newButton.heightAnchor.constraint(equalToConstant: 50),
            
            fullNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            fullNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

            statusLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor, constant: 16),
            statusLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),

            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -27),
            statusTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160)
            ])

    }

    private func addTargets() {
        setStatusButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
        newButton.addTarget(self, action: #selector(newTapOnButton), for: .touchUpInside)
    }
    
    @objc func tapOnButton() {
        print("Blue button")
    }
    
    @objc func newTapOnButton() {
        print("New button")
    }

}
