//
//  ViewController.swift
//  Navigation
//
//  Created by OV on 18.10.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var post = Post(title: "Заголовок")
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        setupAlertConfiguration()
        setupConstraints()
        addTargets()
        
        titleLabel.text = post.title
        
        view.backgroundColor = .yellow
        setupBarButtonItem()
    }
    
    func setupBarButtonItem() {
        let baritem = UIBarButtonItem(image: UIImage(systemName: "folder"), style: .plain, target: self, action: #selector(addTarget))
        self.navigationItem.rightBarButtonItem = baritem
    }
    
    func setupAlertConfiguration() {
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("alert")
        }))
    }
    
    func addTargets() {

    }
    
    func setupConstraints() {
        view.addSubview(titleLabel)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
   
    @objc func addTarget() {
        self.present(alertController, animated: true, completion: nil)
    }
    
}
