//
//  ImageDetailController.swift
//  图片详情界面
//
//  Created by smile on 2022/8/26.
//

import UIKit

class ImageDetailController: UIViewController {
    /// 图片名称
    var id:String!
    
    @IBOutlet weak var iconView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "图片详情"
        
        iconView.image = UIImage(named: id)
    }
    

}
