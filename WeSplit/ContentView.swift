//
//  ContentView.swift
//  WeSplit
//
//  Created by Igor Shcherba on 10/03/2024.
//

import SwiftUI

struct ContentView: View {
    private var students: [String] = ["Hermione", "Ron", "Harry"]

    @State private var name: String = ""
    @State private var selectedStudent: String = ""

    var body: some View {
        NavigationStack {
            Form {
                TextField("Enter Your name: ", text: $name)
                Text("The name is: \(name)")

                Section {
                    Picker("Choose a student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }

            Button("Clear") {
                name = ""
                selectedStudent = ""
            }
            .navigationTitle("Some screen")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
