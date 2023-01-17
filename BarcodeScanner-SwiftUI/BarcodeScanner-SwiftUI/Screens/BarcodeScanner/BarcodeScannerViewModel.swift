//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner-SwiftUI
//
//  Created by Акмарал Тажиева on 17.01.2023.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String  {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}

