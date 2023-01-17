//
//  ContentView.swift
//  BarcodeScanner-SwiftUI
//
//  Created by Акмарал Тажиева on 17.01.2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) {alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
                
            }
        }
         
        
        
        
        
        
        
        
        
        
        
        
        
//        VStack {
//            HStack {
//                Text("Barcode Scannner")
//                    .font(.system(size: 35, weight: .bold))
//
//                Spacer()
//            }
//            Spacer()
//            Image(systemName: "rectangle.fill")
//                .resizable()
//                .frame(width: 600, height: 250, alignment: .center)
//                .padding()
//            HStack{
//                Image(systemName: "barcode.viewfinder")
//                Text("Scanned Barcode:")
//            }
//            .font(.system(size: 30))
//            .padding()
//            Text("Not Yet Scanned")
//                .font(.system(size: 35, weight: .bold))
//                .foregroundColor(Color(.systemRed))
//            Spacer()
//
//
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
