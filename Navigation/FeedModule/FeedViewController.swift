//
//  FirstTabVC.swift
//  Navigation
//
//  Created by OV on 20.10.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    // MARK: - Properties
    
    var dataSource = FeedModel(title: "Заголовок", description: "Описание")
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "First Text"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Personal post", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // 0 Создаем алерт контроллер
    let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Methods
    
    func setupUI() {
        setupAlertConfiguration()
        setupConstraints()
        addTargets()
        
        titleLabel.text = dataSource.title
        descriptionLabel.text = dataSource.description
        
        view.backgroundColor = .cyan
//        setupBarButtonItem()
    }
    
    // 1 Добавление Bar button item
//    func setupBarButtonItem() {
//        let baritem = UIBarButtonItem(image: UIImage(systemName: "folder"), style: .plain, target: self, action: #selector(addTarget))
//        self.navigationItem.rightBarButtonItem = baritem
//    }
    
    // 2 Добавляем экшн
    func setupAlertConfiguration() {
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
           print("alert")
        }))
    }
    
    // 3 Добавляем кнопку которая будет вызывать наш алерт контроллер
    func addTargets() {
//        button.addTarget(self, action: #selector(addTarget), for: .touchUpInside)
        button.addTarget(self, action: #selector(showDetailController), for: .touchUpInside)
    }
    
    func setupConstraints() {
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    // 4 добавляем метод для нажатия на кнопку
    @objc func addTarget() {
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func showDetailController() {
        let viewController = PostViewController()
        navigationController?.pushViewController(viewController, animated: true)
//        print(navigationController)
    }
    
}
