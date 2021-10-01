//
//  ViewController.swift
//  PermissionProject
//
//  Created by MstfGrgn on 25.09.2021.
//

import UIKit

class ViewController: UIViewController {
    private var actionButton: ActionButton!
    private var actionButton2: ActionButton!

    @IBAction func cameraButtonTapped(_ sender: Any) {
        print("Camera Tapped")

    }
    @IBAction func photosButtonTapped(_ sender: Any) {
        print("Photos Tapped")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addActionButton()
    }
    private func addActionButton(){
        actionButton = ActionButton(frame: .zero, data: ActionButtonData(text: "OK", buttontype: .filled(.smooth)))
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.delegate = self
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
            actionButton.heightAnchor.constraint(equalToConstant: 40),
            actionButton.widthAnchor.constraint(equalToConstant: 100),
            
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        ])
        
        actionButton2 = ActionButton(frame: .zero, data: ActionButtonData(text: "OK", buttontype: .outlined(.smooth)))
        actionButton2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(actionButton2)
        
        NSLayoutConstraint.activate([
            actionButton2.heightAnchor.constraint(equalToConstant: 40),
            actionButton2.widthAnchor.constraint(equalToConstant: 100),
            
            actionButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton2.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 60),
        
        ])

    }


}
extension ViewController: ActionButtonDelegate{
    func ActionButtonDelegate() {
        print("ViewController is Informed")
    }
    
    
}

