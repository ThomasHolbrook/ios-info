//
//  TJHBarcode.swift
//  ios-info
//
//  Created by Thomas Holbrook on 15/05/2018.
//  Copyright © 2018 Thomas Holbrook. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

class Barcode {
    
    class func fromString(string : String) -> UIImage? {
        
        let data = string.data(using: .ascii)
        let filter = CIFilter(name: "CICode128BarcodeGenerator")
        filter?.setValue(data, forKey: "inputMessage")
        
        return UIImage(ciImage: (filter?.outputImage)!)
    }
    
}
