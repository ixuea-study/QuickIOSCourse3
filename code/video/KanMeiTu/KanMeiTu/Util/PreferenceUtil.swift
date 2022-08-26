//
//  PreferenceUtil.swift
//  偏好设置工具类
//  用来保存是否登录了，用户Id，使用显示引导界面等功能
//
//  Created by smile on 2022/8/26.
//

import Foundation

class PreferenceUtil {
    
    /// 保存是否登陆了
    /// - Parameter isLogin: <#isLogin description#>
    static func setLogin(_ isLogin:Bool) {
        UserDefaults.standard.set(isLogin, forKey: KEY_USER_LOGIN)
    }
    
    /// 是否登陆了
    /// - Returns: <#description#>
    static func isLogin() -> Bool {
        return UserDefaults.standard.bool(forKey: KEY_USER_LOGIN)
    }
    
    /// 是否登录了常量
    private static let KEY_USER_LOGIN="KEY_USER_LOGIN"
}
