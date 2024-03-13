//
//  DetailsViewController.swift
//  ProjectSwift
//
//  Created by user on 3/5/24.
//  Copyright © 2024 hassan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var country: Country?
    
    // UI Elements
    let flagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        if let selectedCountry = country {
            updateUI(with: selectedCountry)
        }
    }
    
    func setupUI() {
        view.addSubview(flagImageView)
        view.addSubview(nameLabel)
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            flagImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            flagImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flagImageView.widthAnchor.constraint(equalToConstant: 300),
            flagImageView.heightAnchor.constraint(equalToConstant: 200),
            
            nameLabel.topAnchor.constraint(equalTo: flagImageView.bottomAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            descriptionLabel.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    func updateUI(with country: Country) {
        nameLabel.text = country.name
        descriptionLabel.text = country.description
        
        // Load flag image asynchronously
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: URL(string: country.flag)!) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.flagImageView.image = image
                    }
                }
            }
        }
    }

}
