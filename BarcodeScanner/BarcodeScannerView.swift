//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Jack Cardinal on 2/15/22.
//

import SwiftUI


struct BarcodeScannerView: View {
    
    @State private var barcodeIsScanned = false

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                ScannerView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text("Not Yet Scanned")
                    .font(.title)
                    .bold()
                    .foregroundColor(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
