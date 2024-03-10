//
//  ContentView.swift
//  WeSplit
//
//  Created by Igor Shcherba on 10/03/2024.
//

import SwiftUI

struct ContentView: View {
    let tipPercentages = [10, 15, 20, 25, 0]

    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20

    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount,
                          format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
            }
        }
    }
}

#Preview {
    ContentView()
}
