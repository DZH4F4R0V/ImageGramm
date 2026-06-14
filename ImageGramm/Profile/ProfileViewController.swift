//
//  ProfileViewController.swift
//  ImageGramm
//
//  Created by J_Eff on 18.04.2026.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private var avatarView: UIImageView!
    private var logoutButton: UIButton!
    private var fioLabel: UILabel!
    private var emailLabel: UILabel!
    private var aboutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
        configureAppearance()
    }
    
    private func setupUI() {
        let avatarImage = UIImage(named: "photo")
        avatarView = UIImageView()
        avatarView.image = avatarImage
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarView)
        
        guard let buttonImage = UIImage(named: "exit") else {
            print("Button image not found!")
            return
        }
        logoutButton = UIButton.systemButton(
            with: buttonImage,
            target: self,
            action: #selector(didTapLogoutButton)
        )
        logoutButton.tintColor = UIColor(named: "YP Red (iOS)")
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
        
        fioLabel = UILabel()
        fioLabel.text = "Екатерина Новикова"
        fioLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fioLabel)
        
        emailLabel = UILabel()
        emailLabel.text = "@ekaterina_nov"
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailLabel)
        
        aboutLabel = UILabel()
        aboutLabel.text = "Hello, world!"
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aboutLabel)
    }
    
    private func setupConstraints() {
        avatarView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        avatarView.widthAnchor.constraint(equalTo: avatarView.heightAnchor).isActive = true
        avatarView.topAnchor.constraint(equalTo: view.topAnchor, constant: 52).isActive = true
        avatarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        logoutButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        logoutButton.widthAnchor.constraint(equalTo: logoutButton.heightAnchor).isActive = true
        logoutButton.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor).isActive = true
        logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true

        fioLabel.topAnchor.constraint(equalTo: avatarView.bottomAnchor, constant: 8).isActive = true
        fioLabel.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor).isActive = true

        emailLabel.topAnchor.constraint(equalTo: fioLabel.bottomAnchor, constant: 8).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor).isActive = true

        aboutLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8).isActive = true
        aboutLabel.leadingAnchor.constraint(equalTo: avatarView.leadingAnchor).isActive = true
    }
    
    private func configureAppearance() {
        fioLabel.font = UIFont(name: "YSDisplay-Bold", size: 23)
        fioLabel.textColor = UIColor(named: "YP White (iOS)")
            
        emailLabel.font = UIFont(name: "YSDisplay-Medium", size: 13)
        emailLabel.textColor = UIColor(named: "YP Gray (iOS)")
            
        aboutLabel.font = UIFont(name: "YSDisplay-Medium", size: 13)
        aboutLabel.textColor = UIColor(named: "YP White (iOS)")
    }
    
    @objc
    private func didTapLogoutButton() {
        
    }
}
