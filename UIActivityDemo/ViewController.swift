//
//  ViewController.swift
//  UIActivityDemo
//
//  Created by Meenakshi Pathani on 1/29/15.
//  Copyright (c) 2015 Mindfire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shareAction(sender: AnyObject) {
        
        let text = "Text to share"
        let url : AnyObject! = NSURL(string: "https://www.google.co.in")
        let image : AnyObject = UIImage(named:"download.jpeg")!
        let activityItems : [AnyObject] = [text, url, image]
        
        let activityViewController : UIActivityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        activityViewController.excludedActivityTypes = [UIActivityTypeAirDrop];
        self.presentViewController(activityViewController, animated: true, completion: nil)
        
        activityViewController.completionWithItemsHandler = {
            (activity, success, items, error) in
            println("Activity: \(activity) Success: \(success) Items: \(items) Error: \(error)")
        }
        
    }


}

