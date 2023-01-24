//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Jack Cardinal on 2/15/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = ScannerViewModel()

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                ScannerView(scannedCode: $viewModel.scannedCode , alertItem: $viewModel.alertItem)
                    .frame( maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .font(.title)
                    .bold()
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
//                Button{
//                    isShowingAlert = true   
//                } label: {
//                    Text("Tap Me")
//                }
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
                
            }
//            .alert(isPresented: $isShowingAlert, content: {
//                Alert(title: Text("Test"), message: Text("This is a test"), dismissButton: .default(Text("Ok")))
//
//            })
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
