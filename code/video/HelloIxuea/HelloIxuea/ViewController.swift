//
//  ViewController.swift
//  HelloIxuea
//
//  Created by smile on 2022/8/26.
//

import UIKit

class ViewController: UIViewController {

    /// 关联控件
    /// @IBOutlet表示这是一个关联可视化布局中控件的变量
    @IBOutlet weak var titleView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取文本
        print(titleView.text!)
        
        //设置文本
        titleView.text = "我们是爱学啊，这是代码中设置的！"
        
    }


}

