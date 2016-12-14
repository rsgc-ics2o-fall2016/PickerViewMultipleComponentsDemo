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
    
    // Components of the picker view
    var components : [[String]] = []
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    // MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Make this view the data source and delegate for the picker
        picker.dataSource = self
        picker.delegate = self
        
        // Set up the components of this picker view
        components += [firstColumn] // Add the first column
        components += [[":"]]        // Divider column
        components += [secondColumn]// Add the second scrolling column
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Delegates and data sources
    // This tells the picker view how many spinners there will be (columns)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return components.count
    }
    
    // This tells the picker view how many rows there are in each column
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return components[component].count
    }
    
    // This lets the picker view populate itself
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return components[component][row]
    }
    
    // This lets the picker view return the data selected, and loads it into the label
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var resultString = ""
        for index in 0..<components.count{
            let digit = components[index][pickerView.selectedRow(inComponent: index)]
            resultString += digit
        }
        labelResult.text = resultString
    }


}

