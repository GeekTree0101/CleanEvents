//
// AppDelegate.swift
// Created by Igor Tarasenko on 30/11/17
// Copyright © 2017 Igor Tarasenko
// Licensed under the MIT license, see LICENSE.md file
//

import UIKit
import RxSwift
import RxCocoa
import Action
import Alamofire
import Moya
import MoyaSugar
import NSObject_Rx
import Result
import RxOptional
import RxSwiftExt

@objc(AppDelegate)
public class AppDelegate: UIResponder, UIApplicationDelegate {
    public var window: UIWindow?
    let pub: PublishSubject<Void> = PublishSubject()

    public func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        pub.bind {_ in
            print("Wow")
        }
        pub.onNext(())
        print("Test")

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ASNavigationController(
            navigationBarClass: nil,
            toolbarClass: nil
        )
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.white
        return true
    }
}
