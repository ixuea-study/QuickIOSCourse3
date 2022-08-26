//
//  SceneDelegate.swift
//  KanMeiTu
//
//  Created by smile on 2022/8/26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    /// 定义一个静态的计算属性
    /// 返回SceneDelegate对象实例
    open class var shared:SceneDelegate{
        get{
            let scene = UIApplication.shared.connectedScenes.first
            return scene?.delegate as! SceneDelegate
        }
    }
    
    /// 下一步操作
    func next() {
        print("AppDelegate next")
        //真实项目中
        //可能还有引导界面
        //大家可以学习我们的《iOS项目实战之我的云音乐使用Swift》课程
        
        //跳转到登录界面
        toLogin()
    }
    
    /// 跳转到登录界面
    func toLogin() {
        setRootController("Login")
    }
    
    func toHome() {
        setRootController("Home")
    }
    
    func setRootController(_ data:String) {
        //获取Main.storyboard
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        
        //实例化控制器
        let controller=storyboard.instantiateViewController(withIdentifier: data)
        
        //这里是替换原来的根控制
        //目的是我们不希望用户在登录界面还能返回到启动界面
        window?.rootViewController=controller
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

