//
//  AppDelegate.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/02.
//

import UIKit

/*
 ・APIでリクエスト・レスポンス確認できる
 　□AlamofireをSPMで導入
 　■PexelsAPI登録する
 　□Responseモデル作成
 　□通信クラス作成
 ・写真一覧を固定値で表示する
 　□ViewController作成（CollectionView追加）
 　□Usecase作成
 ・検索機能を作成する
 　□SearchBar追加
 　□検索処理を追加
 ・写真一覧を検索ワードから取得する
 　□０件取得時を表示する
 　□追加読込をする（１リクエストあたり、４０件）
 ・写真選択時に全画面表示する
 　□modalでフルスクリーン表示する
 　□モーダルを非表示にする

 */

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

