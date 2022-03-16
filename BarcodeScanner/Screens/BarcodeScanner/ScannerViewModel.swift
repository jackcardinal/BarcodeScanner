//
//  ScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Jack Cardinal on 3/2/22.
//  Copyright © 2022 Jack Cardinal & Co., Inc. All rights reserved.
//

import Foundation
import SwiftUI

final class ScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
   // @State private var isShowingAlert = false
    
    //this is set with default value so it doesn't have to pass in with the initializer of the Struct
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
        
}
