//
//  ViewController.swift
//  MyFirebaseApp
//
//  Created by Ruj on 29/7/2562 BE.
//  Copyright © 2562 Ruj. All rights reserved.
//

import UIKit
// import
import Firebase
import FirebaseUI

class ViewController: UIViewController {

    @IBOutlet weak var idLabel: UILabel!
    
    private var authUI:FUIAuth!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        authUI = FUIAuth.defaultAuthUI()
        authUI.delegate = self
        let providers: [FUIAuthProvider] = [
            FUIGoogleAuth(),
            FUIEmailAuth(),
            FUIAnonymousAuth()
        ]
        self.authUI.providers = providers
    }
    @IBAction func signInTouchUp(_ sender: Any) {
        let authViewController = authUI.authViewController()
        self.present(authViewController,animated:true,completion:nil)
    }
    @IBAction func signOutTouchUp(_ sender: Any) {
        do {
            try self.authUI.signOut()
        } catch {
            print("Problem signout&quot")
            return
        }
        self.idLabel.text = "-";
    }
    
    @IBAction func addTouchUp(_ sender: Any) {
    }
    

}
extension ViewController:FUIAuthDelegate{
    func application(_ app: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
    let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as! String?
    if FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false {
    return true
    }
    
    // other URL handling goes here.
    return false
    }
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        if let result = authDataResult{
            self.idLabel.text = result.user.uid
        }
    }
}
