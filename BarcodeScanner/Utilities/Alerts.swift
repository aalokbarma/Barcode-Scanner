//
//  Alerts.swift
//  BarcodeScanner
//
//  Created by Aalok Barma on 25/12/23.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID();
    let title: String;
    let message: String;
    let dismissButton: Alert.Button;
}

struct AlerContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("OK")))
    static let invalidScannedValue = AlertItem(title: "Invalid Scanned Value",
                                              message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.",
                                               dismissButton: .default(Text("OK")))
}
