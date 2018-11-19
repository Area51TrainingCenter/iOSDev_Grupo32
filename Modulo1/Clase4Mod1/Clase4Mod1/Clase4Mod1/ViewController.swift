//
//  ViewController.swift
//  Clase4Mod1
//
//  Created by alumno on 11/2/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {//Paso 1

    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        /*
        let t = sender as! String
        t.dat*/
        cajaUno.text = "\(sender.date)"
    }
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var cajaUno: UITextField!
    @IBOutlet weak var cajaDos: UITextField!
    
    var autos: [String]!
    
    //MARK: Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        autos = ["toyota", "Nissan", "Audi", "BMW", "Ford"]
        
        //datePicker.date
    }
    
    //MARK: UIPickerViewDataSource methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return autos.count
    }
    
    //MARK: UIPickerViewDelegate methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return autos[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("seleccionado")
        cajaUno.text = autos[row]
    }
    
    //MARK: UITextFieldDelegate methods
    //Paso 2
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == cajaUno {
            return cajaDos.becomeFirstResponder()
        }else if textField == cajaDos {
            return cajaDos.resignFirstResponder()
        }else {
            return false
        }
        
    }

}

