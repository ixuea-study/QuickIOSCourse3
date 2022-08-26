//
//  ListController.swift
//  列表界面
//
//  Created by smile on 2022/8/26.
//

import UIKit

class ListController: UIViewController {
    /// 列表数据源
    var dataArray:[String] = []

    /// 列表控件
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //添加一些测试数据
        //如果是真实项目
        //这个部分数据可能来自网络，数据库等
        for index in 0...99 {
            dataArray.append("我们是爱学啊:\(index)")
        }
        
//        tableView.delegate=self
//        tableView.dataSource=self
        
        //让列表控件重新加载数据
        tableView.reloadData()

        
    }
    

}


extension ListController:UITableViewDataSource,UITableViewDelegate{
    /// 有多少个
   ///
   /// - Parameters:
   ///   - tableView: <#tableView description#>
   ///   - section: <#section description#>
   /// - Returns: <#return value description#>
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    
    /// 返回当前位置的Cell
    /// - Parameters:
    ///   - tableView: <#tableView description#>
    ///   - indexPath: <#indexPath description#>
    /// - Returns: <#description#>
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //获取Cell
        //该方法内部会有判断
        //如果没有Cell可以复用他会创建一个新的
        //如果有就返回旧的Cell
        let cell=tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //显示数据
        cell.textLabel?.text=dataArray[indexPath.row]
        
        //返回cell
        return cell
    }
    
    /// 点击cell
    /// - Parameters:
    ///   - tableView: <#tableView description#>
    ///   - indexPath: <#indexPath description#>
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data=dataArray[indexPath.row]
        print("点击了:\(data)")
    }
}

