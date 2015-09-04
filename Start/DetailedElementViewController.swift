//
//  DetailedElementViewController.swift
//  Start
//
//  Created by Ryan Saeta on 9/1/15.
//  Copyright (c) 2015 Ryan Saeta. All rights reserved.
//

import UIKit

class DetailedElementViewController: UIViewController {
    
    var info = String()
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = info
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setData(data: NSString) {
        info = data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
