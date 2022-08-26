//
//  StringExtension.swift
//  字符串扩展累
//  添加了一些常用的方法
//
//  Created by smile on 2022/8/26.
//

import Foundation


extension String{
    
    /// 是否是手机号
    /// - Returns: <#description#>
    func isPhone() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", REG_PHONE).evaluate(with: self)
    }
}


// MARK: - 正则表达式
/// 手机号
/// 移动：134 135 136 137 138 139 147 150 151 152 157 158 159 178 182 183 184 187 188 198
/// 联通：130 131 132 145 155 156 166 171 175 176 185 186
/// 电信：133 149 153 173 177 180 181 189 199
/// 虚拟运营商: 170
let REG_PHONE = "^(0|86|17951)?(13[0-9]|15[012356789]|16[6]|19[89]]|17[01345678]|18[0-9]|14[579])[0-9]{8}$"
