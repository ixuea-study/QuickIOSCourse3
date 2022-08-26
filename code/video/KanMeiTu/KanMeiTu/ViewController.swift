//
//  ViewController.swift
//  KanMeiTu
//
//  Created by smile on 2022/8/26.
//

import UIKit

class ViewController: UIViewController {
    /// 列表数据源
    var dataArray:[String] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //由于请求网络比较复杂
        //所以填充本地模拟数据
        //图片在Assets.xcassets中
        for index in 1...19 {
            dataArray.append("\(index)")
        }
        
        //让列表重新加载数据
        tableView.reloadData()
    }

    @IBAction func logoutClick(_ sender: Any) {
        //清除登录标志
        PreferenceUtil.setLogin(false)
        
        //退出后跳转到登录界面
        //当然大家可以根据业务逻辑调整
        SceneDelegate.shared.toLogin()
    }
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ImageCell
        let data=dataArray[indexPath.row]
        cell.bind(data)
        return cell
    }
}

