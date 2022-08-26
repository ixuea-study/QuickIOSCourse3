//
//  ImageCell.swift
//  图片cell
//
//  Created by smile on 2022/8/26.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var iconView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// 显示数据
    /// - Parameter data: <#data description#>
    func bind(_ data:String) {
        iconView.image = UIImage(named: data)
    }
}
