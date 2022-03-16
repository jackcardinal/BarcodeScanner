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
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something wrong with the camera", dismissButton: .default(Text("Okay")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "Only specific barcodes are allowed", dismissButton: .default(Text("Okay")))
}
    
    
    
    


