//
//  ProfileViewController.swift
//  ImageGramm
//
//  Created by J_Eff on 18.04.2026.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let avatarImage = UIImage(resource: .exit)
        let avatarView = UIImageView()
        avatarView.image = avatarImage
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarView)
        avatarView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        avatarView.widthAnchor.constraint(equalTo: avatarView.heightAnchor).isActive = true
        avatarView.topAnchor.constraint(equalTo: view.topAnchor, constant: 52).isActive = true
        avatarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        let buttonImage = UIImage(resource: .photo)
        let logoutButton = UIButton.systemButton(
            with: buttonImage,
            target: self,
            action: #selector(Self.didTapLogoutButton)
        )
        logoutButton.tintColor = UIColor(named: "YP Red (iOS)")
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
        logoutButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        logoutButton.widthAnchor.constraint(equalTo: logoutButton.heightAnchor).isActive = true
        logoutButton.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor).isActive = true
        logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        let fioLabel = UILabel()
        fioLabel.text = "Екатерина Новикова"
        fioLabel.font = UIFont(name: "YSDisplay-Bold", size: 23)
        fioLabel.textColor = UIColor(named: "YP White (iOS)")
        fioLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fioLabel)
        fioLabel.topAnchor.constraint(equalTo: avatarView.bottomAnchor, constant: 8).isActive = true
        fioLabel.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor).isActive = true
        
        
        let emailLabel = UILabel()
        emailLabel.text = "@ekaterina_nov"
        emailLabel.font = UIFont(name: "YSDisplay-Medium", size: 13)
        emailLabel.textColor = UIColor(named: "YP Gray (iOS)")
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: fioLabel.bottomAnchor, constant: 8).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor).isActive = true
        
        let aboutLabel = UILabel()
        aboutLabel.text = "Hello, world!"
        aboutLabel.font = UIFont(name: "YSDisplay-Medium", size: 13)
        aboutLabel.textColor = UIColor(named: "YP White (iOS)")
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aboutLabel)
        aboutLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8).isActive = true
        aboutLabel.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor).isActive = true
        
    }
    
    @objc
    private func didTapLogoutButton() {
        
    }
}
