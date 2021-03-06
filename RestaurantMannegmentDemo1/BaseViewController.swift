//
//  BaseViewController.swift
//  RestaurantMannegmentDemo1
//
//  Created by Manisha Roy on 20/11/17.
//  Copyright © 2017 Neosofttech Technologies. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var signInContainerView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var signUpContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  set segment control font size
        let attribute = NSDictionary(object: UIFont(name: "HelveticaNeue-Bold", size: 25.0)!, forKey: NSFontAttributeName as NSCopying)
        segmentControl.setTitleTextAttributes(attribute as [NSObject : AnyObject] , for: .normal)
        // Do any additional setup after loading the view.
        
    }

    @IBAction func segmentControlAction(_ sender: Any) {
        
        switch segmentControl.selectedSegmentIndex {
            
        case 0:
            print("Sign in segment selected")
            signUpContainerView.isHidden = true
            signInContainerView.isHidden = false
        case 1:
            print("Sign up segment selected")
            signUpContainerView.isHidden = false
            signInContainerView.isHidden = true
        default:
            break;
            
        }
    }
        


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
