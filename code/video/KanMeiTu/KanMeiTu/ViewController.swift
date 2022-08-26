//
//  ViewController.swift
//  KanMeiTu
//
//  Created by smile on 2022/8/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logoutClick(_ sender: Any) {
        //清除登录标志
        PreferenceUtil.setLogin(false)
        
        //退出后跳转到登录界面
        //当然大家可以根据业务逻辑调整
        SceneDelegate.shared.toLogin()
    }
    
}

