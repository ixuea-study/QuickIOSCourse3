//
//  SplashController.swift
//  KanMeiTu
//
//  Created by smile on 2022/8/26.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            //把逻辑代理到SceneDelegate中
            SceneDelegate.shared.next()
        }
    }
    
}
