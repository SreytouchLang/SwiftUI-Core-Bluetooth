//
//  ContentView.swift
//  SwiftUI-Core-Bluetooth
//
//  Created by Sreytouch(Jessica) on 1/2/24.
//

import SwiftUI
import CoreBluetooth

struct ContentView: View {
    @ObservedObject private var buletothViewModel = BluetoothViewModel()
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
        NavigationView {
            List(buletothViewModel.peripheralNames, id:  \.self){ peripheral in
                Text(peripheral)
            }
            .navigationTitle("Peripherals")
        }
    }
}

#Preview {
    ContentView()
}
