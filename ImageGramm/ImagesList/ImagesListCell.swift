//
//  ImagesListCell.swift
//  ImageGramm
//
//  Created by J_Eff on 11.04.2026.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellButton: UIButton!
    @IBOutlet var cellDateLabel: UILabel!
    @IBOutlet var cellShade: UIView!
    
    var gradientLayer = CAGradientLayer()
    
    static let reuseIdentifier = "ImagesListCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellShade.layer.addSublayer(gradientLayer)
        cellShade.layer.cornerRadius = 16
        cellShade.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        guard let color = UIColor(named: "YP Black (iOS)") else { return }
        gradientLayer.colors = [UIColor.clear.cgColor, color.withAlphaComponent(0.7).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = cellShade.bounds
    }
}
