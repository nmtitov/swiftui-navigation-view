//
//  MasterView.swift
//  SwiftUINavigationView
//
//  Created by Nikita Titov on 22.08.2022.
//

import SwiftUI

struct MasterView: View {
    // Model of the view is an array of `Int`
    let xs = [0, 1, 2, 3, 4, 5]

    var body: some View {
        NavigationView {
            List {
                ForEach(xs, id: \.self) { x in
                    // Pass selected row's data to `DetailView`
                    NavigationLink(destination: DetailView(x: x)) {
                        // Convert number to the list row
                        Text(String(x))
                            .padding()
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.inline) // classic title bar style
            .navigationTitle("Master View") // title bar text
            .toolbar {
                // Left button
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        print("Leading")
                    }
                    label: {
                        Text("Leading")
                    }
                }
                // Right button
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        print("Trailing")
                    }
                    label: {
                        Label("Trailing", systemImage: "plus")
                    }
                }
            }
        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
