//
//  StatusTableViewCell.swift
//  TableViewTips
//
//  Created by Macbook Pro on 16/03/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class StatusTableViewCell: UITableViewCell {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentIconImageView : UIImageView!
    @IBOutlet weak var favoriteButton : UIButton!
    
    var model: StatusFeed! {
        didSet {
            statusLabel.text = model.statusText
            usernameLabel.text = model.usernameText
            commentIconImageView.image = model.commentIcon
            favoriteButton.setTitle(model.favoriteButtonTitle, for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        statusLabel.font = .boldSystemFont(ofSize: 16)
    }

}
