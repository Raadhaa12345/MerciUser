//
//  SidemenuViewController.swift
//  
//
//  Created by ADMIN on 10/08/18.
//

import UIKit

class SidemenuViewController: UIViewController {

    @IBOutlet var topview : UIView!
    @IBOutlet var homebutton : UIButton!
    @IBOutlet var sidecollectionview : UICollectionView!
    var player:AVAudioPlayer!
    @IBOutlet var collectionview : UIView!
    
    @IBOutlet var usernamelbl : UILabel!
    @IBOutlet var emailnamelbl : UILabel!
    @IBOutlet var phonenamelbl : UILabel!
    
        var window: UIWindow?
        var titlearr = ["Home" , "My Account","Sign Out"]
        
        override func viewDidLoad()
        {
            super.viewDidLoad()
            let result = UserDefaults.standard.object(forKey: "signup_info") as! Dictionary<String,AnyObject>
            let emailstr = result["email"] as! String
            let phonestr = result["mobile_no"] as! String
            let usernamestr = result["first_name"] as! String
            self.emailnamelbl.text = emailstr
            self.phonenamelbl.text = phonestr
            self.usernamelbl.text = usernamestr
       
    }
    @IBAction func Tabto_MyAccount(sender : UIButton)
    {
        let veryfy = self.storyboard?.instantiateViewController(withIdentifier: "MyAccountVC") as! MyAccountVC
        self.navigationController?.pushViewController(veryfy, animated: true)
    }
    
    @IBAction func taptoedituser(sender : UIButton)
    {
        let Edit = self.storyboard?.instantiateViewController(withIdentifier: "Editprofile") as! Editprofile
        self.navigationController?.pushViewController(Edit, animated: true)
    }
    
    
    @IBAction func taptohomebutton(sender : UIButton)
    {
        let HomeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        sideMenuViewController?.hideMenuViewController()
        sideMenuViewController?.setContentViewController(HomeVC, animated: false)
    }
    
    @IBAction func taptoLogoutbutton(sender : UIButton)
    {
        
        let refreshAlert = UIAlertController(title: AppName, message: "Want to logout ?", preferredStyle: UIAlertControllerStyle.alert)
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
           
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
    
    
    
   

}
