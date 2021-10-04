//
//  ViewController.swift
//  CreatePickerTest
//
//  Created by Alican Kurt on 4.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var categoryPicker: UIPickerView!
    let data = ["Apple","Orange","Cherry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryPicker.delegate = self
        categoryPicker.dataSource = self
        
        
        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        if categoryPicker.isHidden == false{
            categoryPicker.isHidden = true
        }else{
            categoryPicker.isHidden = false
        }
        
        
    }
    
}





extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
        
    }
    
   
    
    
}

