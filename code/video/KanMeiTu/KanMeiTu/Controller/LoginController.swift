//
//  LoginController.swift
//  登录界面
//
//  Created by smile on 2022/8/26.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var hintView: UILabel!
    @IBOutlet weak var usernameView: UITextField!
    @IBOutlet weak var passwordView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginClick(_ sender: Any) {
        //获取用户名
        let phone=usernameView.text!
        
        if phone.isEmpty {
            hintView.text = "请输入手机号"
            return
        }
        
        //通过正则表达式判断格式是否正确
        //关于正则表达式的内容请参考我们的其他课程
        //因为他的内容都够讲一本书了
        if !phone.isPhone() {
            hintView.text = "手机号格式不正确"
            return
        }
        
        let password=passwordView.text!
        
        if password.isEmpty {
            hintView.text = "请输入密码"
            return
        }
        
        if password.count < 6 || password.count > 15 {
            hintView.text = "密码格式不正确(6~15位)"
            return
        }
        
        //TODO 调用登录接口登录
        
        if Constant.PHONE==phone && Constant.PASSWORD == password {
            //登录成功
            
            //登录完成后保存一个标致
            //下次就不用在登录了
            PreferenceUtil.setLogin(true)
                       
           //进入首页
            SceneDelegate.shared.toHome()
        }else{
            //登录失败
                        
            //进行提示
            
            //对用户提示友好了
            //那么对攻击来说也就友好了
            //所以真实项目中会在这两者之间做一个权衡
            hintView.text = "用户名或密码错误"
        }
    }
    
}
