//
//  ViewController.swift
//  Todo
//
//  Created by hanks on 16/1/9.
//  Copyright © 2016年 hanks. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var detailLabel: UILabel!
    var rowIndex:Int = 0
    var cities = ["beijing","上海","广州","深圳"]
    
    @IBOutlet weak var pickerView1: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        detailLabel.text  =  "Row index is: \(rowIndex)"
        
        pickerView1.dataSource = self
        pickerView1.delegate = self
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UIAlertView(title: "选择", message: "PickerView: \(row)", delegate: nil, cancelButtonTitle: "确认").show()
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    
    // returns the number of 'columns' to display.
 
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
 
     func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return cities.count
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

