//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Jack Cardinal on 2/21/22.
//  Copyright © 2022 Jack Cardinal & Co., Inc. All rights reserved.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {

    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        func didFind(barcode: String) {
          print(barcode)
        }
        
        func didSurfaceError(error: CameraError) {
            print(error.rawValue)
        }
    }
    
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView()
    }
}
