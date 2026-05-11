//
//  AdaptiveLayout.swift
//  CondicionalesApp
//
//  Created by Jose Ramos on 11/5/26.
//

import SwiftUI

struct AdaptiveLayout: View {
    var body: some View {
        ViewThatFits {
            // Intenta ponerlos uno al lado del otro
            HStack {
                Text("Opción A")
                Text("Opción B")
                Text("Opción C")
            }
            // Si no caben, los pone uno sobre otro
            VStack {
                Text("Opción A")
                Text("Opción B")
                Text("Opción C")
            }
        }
        .padding()
    }
}
