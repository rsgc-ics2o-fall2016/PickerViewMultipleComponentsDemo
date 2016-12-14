//
//  ViewController.swift
//  PickerViewMultipleComponentsDemo
//
//  Created by Russell Gordon on 12/14/16.
//  Copyright © 2016 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // MARK: Properties
    var firstColumn : [String] = ["0", "1", "2", "3"]
    var secondColumn : [String] = ["A", "B", "C", "D"]
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    // MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Make this view the data source and delegate for the picker
        picker.dataSource = self
        picker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

