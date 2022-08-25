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
    
    
    @IBOutlet weak var buttonView: UIButton!
    
    
    @IBOutlet weak var tfUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取文本
        print(titleView.text!)
        
        //设置文本
        titleView.text = "我们是爱学啊，这是代码中设置的！"
        
        //添加点击事件
        buttonView.addTarget(self, action: #selector(buttonClick2(_:)), for: .touchUpInside)
    }
    
    /// 按钮点击回调事件
    /// - Parameter sender: <#sender description#>
    @IBAction func buttonClick(_ sender: UIButton) {
        //点击按钮后
       //他就会执行这个方法
       //基本上所有按钮的事件都是这样一个使用方法
        print("你还真点击啊！")
        
        sender.setTitle("点击了", for: .normal)
    }
    
    @objc func buttonClick2(_ sender: UIButton) {
        print("你还真点击啊2222！")
    }
    
    /// 打开按钮点击
    /// - Parameter sender: <#sender description#>
    @IBAction func openPage(_ sender: UIButton) {
        //实例化场景
        //因为场景有控制器
        //所以也可以说实例化控制器
        //但实例化过程是系统完成的
        //不是我们手动创建的
        let controller=storyboard!.instantiateViewController(withIdentifier: "Second")
        
        //全屏
        controller.modalPresentationStyle = .fullScreen
        
        //关闭当前界面
        present(controller, animated: true)
    }
    
    @IBAction func loginClick(_ sender: Any) {
        let inputText = tfUsername.text!
        
        if inputText.isEmpty {
            //如果为空
           //就提示用户
           print("用户名不能为空")
           return
        }
        
        //TODO 当然还可以有更多的判断
        //比如：判断是否输入的是手机号
        //这部分我们在最后做项目在讲

        //TODO 走到这里表示输入了用户名，可以调用登录接口
        
        print("你输入的用户名是:\(inputText)")
    }
}

