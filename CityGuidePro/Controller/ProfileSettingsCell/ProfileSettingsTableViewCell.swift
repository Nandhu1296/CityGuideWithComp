//
//  ProfileSettingsTableViewCell.swift
//  CityGuidePro
//
//  Created by nandha on 13/02/23.
//

import UIKit

class ProfileSettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: CustomShadowView!
    @IBOutlet weak var profileIcon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
