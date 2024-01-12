//
//  BarcodeScannerModel.swift
//  SimpleBarcodeScanner
//
//  Created by Mayank Raj on 2024-01-11.
//

import SwiftUI

final class BarcodeScannerModel: ObservableObject{
    
    @Published var valueFound: Bool = false
    
    @Published var scannedCode = ""
        @Published var alertItem: AlertItem?
        
        var statusText: String {
            scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
        }
        
        var statusTextColor: Color {
            scannedCode.isEmpty ? .red : .green
        }
}

