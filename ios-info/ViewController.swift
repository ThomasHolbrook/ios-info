//
//  ViewController.swift
//  ios-info
//
//  Created by Thomas Holbrook on 14/05/2018.
//  Copyright © 2018 Thomas Holbrook. All rights reserved.
//

import UIKit
import CoreImage


class ViewController: UIViewController {

    @IBOutlet weak var imageBarcode: UIImageView!
    @IBOutlet weak var label_header: UILabel!
    @IBOutlet weak var label_username: UILabel!
    @IBOutlet weak var label_serial: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let deviceSerial = Preferences.getPreference(entry: "deviceSerial")
        let deviceName = Preferences.getPreference(entry: "deviceName")
        let deviceUsername = Preferences.getPreference(entry: "userName")
        
        if deviceSerial != "Not Found" {
        
            let img = Barcode.fromString(string: deviceSerial)
        
            imageBarcode.image = img
            imageBarcode.layer.cornerRadius = 8.0
            imageBarcode.clipsToBounds = true
            label_serial.text = deviceSerial
            
        }
        
        else {
            label_serial.text = "Serial Number Not Found"

        }
        
        if deviceName != "Not Found" {
            
            label_header.text = deviceName
            
        }
        
        if deviceUsername != "Not Found" {
            label_username.text = deviceUsername
        }
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

