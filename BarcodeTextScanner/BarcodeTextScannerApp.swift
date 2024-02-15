//
//  BarcodeTextScannerApp.swift
//  BarcodeTextScanner
//
//  Created by omer elmas on 14.02.2024.
//

import SwiftUI

@main
struct BarcodeTextScannerApp: App {
    
    @StateObject private var ViewModel = AppViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel)
                .task {
                    await ViewModel.requestDataScannerAccessStatus()
                }
        }
    }
}
