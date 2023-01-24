//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Jack Cardinal on 3/2/22.
//  Copyright © 2022 Jack Cardinal & Co., Inc. All rights reserved.
//

import SwiftUI
    
struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"), message: Text("Something wrong with the camera"), dismissButton: .default(Text("Okay")))
    
    static let invalidScannedType = AlertItem(title: Text("Invalid Scan Type"), message: Text("Only specific barcodes are allowed"), dismissButton: .default(Text("Okay")))
}
    
    
    
    


