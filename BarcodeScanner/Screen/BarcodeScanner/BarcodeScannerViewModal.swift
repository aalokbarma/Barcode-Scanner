//
//  BarcodeScannerViewModal.swift
//  BarcodeScanner
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

final class BarcodeScannerViewModal : ObservableObject {
    @Published var scannedCode = "";
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ?  "Not yet scanned": scannedCode
    }
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
