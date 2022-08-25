//
//  SecondController.swift
//  HelloIxuea
//
//  Created by smile on 2022/8/26.
//

import UIKit

class SecondController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeButtonClick(_ sender: Any) {
        //关闭当前界面
        dismiss(animated: true)
    }
}
