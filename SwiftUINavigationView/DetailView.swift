//
//  DetailView.swift
//  SwiftUINavigationView
//
//  Created by Nikita Titov on 22.08.2022.
//

import SwiftUI

struct DetailView: View {
    let x: Int

    var body: some View {
        // Convert the number passed from the `MasterView` to string and show it in the title bar and in the centre of the screen
        let s = String(x)
        Text(s)
            .font(.title)
            .navigationTitle("Detail \(s)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Wrap `DetailView` preview in `NavigationView` to get look and feel closer to real-world usage of the view
        NavigationView {
            DetailView(x: 999)
        }
    }
}
