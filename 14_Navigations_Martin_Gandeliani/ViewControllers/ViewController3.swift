//
//  ViewController3.swift
//  14_Navigations_Martin_Gandeliani
//
//  Created by Martin on 08.11.25.
//
import UIKit

class ViewController3: UIViewController {
    private let imageUi = UIImageView()
    private let backToHomepageButton = UIButton(type: .system)
    private let backToLastPageButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupView()
    }
    private func setupView() {
        view.addSubview(imageUi)
        imageUi.backgroundColor = .red
        imageUi.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(backToHomepageButton)
        backToHomepageButton.addAction(UIAction(handler: { action in
            self.backToHomePage()
        }), for: .touchUpInside)
        backToHomepageButton.translatesAutoresizingMaskIntoConstraints = false
        backToHomepageButton.setTitle("Back to homepage", for: .normal)
        backToHomepageButton.tintColor = .red
        
        view.addSubview(backToLastPageButton)
        backToLastPageButton.addAction(UIAction(handler: { action in
            self.backToLastPage()
        }), for: .touchUpInside)
        backToLastPageButton.setTitle("Back to last page", for: .normal)
        backToLastPageButton.tintColor = .red
        backToLastPageButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageUi.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageUi.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageUi.heightAnchor.constraint(equalToConstant: 150),
            imageUi.widthAnchor.constraint(equalToConstant: 150),
            
            backToHomepageButton.topAnchor.constraint(equalTo: imageUi.bottomAnchor, constant: 20),
            backToHomepageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            backToHomepageButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            backToHomepageButton.heightAnchor.constraint(equalToConstant: 50),
            
            backToLastPageButton.topAnchor.constraint(equalTo: backToHomepageButton.bottomAnchor, constant: 20),
            backToLastPageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            backToLastPageButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            backToLastPageButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func backToHomePage() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func backToLastPage() {
        navigationController?.popViewController(animated: true)
    }
}

