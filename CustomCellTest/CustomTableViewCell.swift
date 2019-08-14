//
//  TableViewCell.swift
//  CustomCellTest
//
//  Created by YAMAMOTORYO on 2019/08/13.
//  Copyright © 2019年 YAMAMOTORYO. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
     @IBOutlet var myButton : UIButton!
     @IBOutlet var myLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellData(_ text: String, imageName: String, check: Bool){
        self.myLabel.text = text
        if check {
            self.myButton.setImage(UIImage(named: "koupen_default.png"), for: .normal)
        }else{
            self.myButton.setImage(UIImage(named: imageName + ".png"), for: .normal)

        }
    }
    
}
