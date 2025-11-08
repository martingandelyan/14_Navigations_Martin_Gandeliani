//
//  ViewController 2.swift
//  14_Navigations_Martin_Gandeliani
//
//  Created by Martin on 08.11.25.
//


import UIKit

class ViewController2: UIViewController {
    private let imageUi = UIImageView()
    private let pushButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        viewSetup()
    }

    private func viewSetup() {
        view.addSubview(imageUi)
        imageUi.backgroundColor = .orange
        imageUi.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(pushButton)
        pushButton.addAction(UIAction(handler: { action in
            self.pushToThirdPage()
        }), for: .touchUpInside)
        pushButton.setTitle("Push to third page", for: .normal)
        pushButton.setTitleColor(.black, for: .highlighted)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageUi.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            imageUi.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            imageUi.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            imageUi.heightAnchor.constraint(equalToConstant: 200),
            
            pushButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            pushButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            pushButton.bottomAnchor.constraint(equalTo: imageUi.bottomAnchor, constant: 60),
            pushButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    func pushToThirdPage() {
        self.navigationController?.pushViewController(ViewController3(), animated: true)
    }
}
