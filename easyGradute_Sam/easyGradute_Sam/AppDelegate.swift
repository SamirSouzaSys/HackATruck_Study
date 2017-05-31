//
//  AppDelegate.swift
//  easyGradute_Sam
//
//  Created by Student on 5/30/17.
//  Copyright © 2017 SamirSouza. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        FIRApp.configure();
        
        return true;
}
