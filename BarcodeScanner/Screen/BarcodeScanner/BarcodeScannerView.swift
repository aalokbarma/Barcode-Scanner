//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Aalok Barma on 24/12/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModal = BarcodeScannerViewModal()
    
    var body: some View {
        NavigationView{
            VStack{
                ScannerView(scannedCode: $viewModal.scannedCode, alertItem: $viewModal.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer()
                    .frame(height: 60)
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text( viewModal.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModal.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModal.alertItem){ alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
                
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
