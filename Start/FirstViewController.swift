//
//  FirstViewController.swift
//  Start
//
//  Created by Ryan Saeta on 9/1/15.
//  Copyright (c) 2015 Ryan Saeta. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {

    var data = [
        ("Lettuce","3.50"),
        ("Watermellon","4.20"),
        ("Cookies","5.99"),
        ("Water","2.00"),
        ("Lid", "0.99"),
        ("Plan", "100")
    ]
    
    //@IBOutlet weak var tableView: UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("DetailCell", forIndexPath: indexPath) as UITableViewCell
        var (item, price) = data[indexPath.row]
        cell.textLabel?.text = item
        cell.detailTextLabel?.text = "$\(price)"
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Hello")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.delegate = self
        //self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
            //var nextController: DetailedElementViewController = segue.destinationViewController as DetailedElementViewController
            //nextController.setData("Hello");
            // Get the new view controller using segue.destinationViewController.
            // Pass the selected object to the new view controller.
    }

}

