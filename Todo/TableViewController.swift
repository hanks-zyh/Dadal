//
//  TableViewController.swift
//  Todo
//
//  Created by hanks on 16/1/9.
//  Copyright © 2016年 hanks. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UIAlertViewDelegate {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog(" click: \(indexPath.row)")
        
        
        switch indexPath.row{
        case 0:
            showAlertView()
        case 1:
            showLoginAlerView()
        default:
            let detailViewController =  self.storyboard?.instantiateViewControllerWithIdentifier("detail") as! ViewController
            detailViewController.rowIndex = indexPath.row
            self.navigationController?.pushViewController(detailViewController, animated: true)
        }
   
        
    }
    
    func showLoginAlerView(){
        
        var alertView2 = UIAlertView(title: "Hello", message: "Hello message", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "确认")
        alertView2.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
        alertView2.show()
    }
  
    func showAlertView(){
        
        var alertView2 = UIAlertView(title: "Hello", message: "Hello message", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "other button", "other1","other2","other3")
            alertView2.show()
    }
    
    

}
