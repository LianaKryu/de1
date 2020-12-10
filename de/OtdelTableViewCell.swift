//
//  OtdelTableViewCell.swift
//  de
//
//  Created by LianaKryu on 09.12.2020.
//

import UIKit

class OtdelTableViewCell: UITableViewCell {

    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var work: UILabel!
    @IBOutlet weak var workTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
