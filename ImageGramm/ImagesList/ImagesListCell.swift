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
    
    static let reuseIdentifier = "ImagesListCell"
}
