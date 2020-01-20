//
//  customTableViewCell.swift
//  customCollectionView
//
//  Created by Macbook on 05/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    
    
    
    
    
    @IBOutlet weak var selecteditemNameLbl: UILabel!
    
    
    
    @IBOutlet weak var priceLbl: UILabel!
    
    
    
    @IBOutlet weak var totalSumLbl: UILabel!
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
