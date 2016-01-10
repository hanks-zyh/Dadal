//
//  TableViewController.swift
//  Todo
//
//  Created by hanks on 16/1/9.
//  Copyright © 2016年 hanks. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UIAlertViewDelegate,UIActionSheetDelegate {
 
    
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
        case 2:
            showActionSheet()
        default:
            let detailViewController =  self.storyboard?.instantiateViewControllerWithIdentifier("detail") as! ViewController
            detailViewController.rowIndex = indexPath.row
            self.navigationController?.pushViewController(detailViewController, animated: true)
        }
   
        
    }
    
    func showActionSheet(){
        let actionSheet = UIActionSheet(title: "title", delegate: self, cancelButtonTitle: "cacel", destructiveButtonTitle: "destructive")
        
        actionSheet.showInView(self.view)
    }
    
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        UIAlertView(title: "click", message: "Click Message \(buttonIndex)", delegate: nil, cancelButtonTitle: "cancle", otherButtonTitles: "other").show()
    }
    func showLoginAlerView(){
        
        let alertView2 = UIAlertView(title: "Hello", message: "Hello message", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "确认")
        alertView2.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
        alertView2.show()
    }
  
    func showAlertView(){
        
        let alertView2 = UIAlertView(title: "Hello", message: "Hello message", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "other button", "other1","other2","other3")
            alertView2.show()
    }
    
    

}
