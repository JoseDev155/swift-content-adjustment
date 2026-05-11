//
//  TextExample.swift
//  AjusteTextoApp
//
//  Created by Jose Ramos on 11/5/26.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text("Título muy largo que no cabe en pantallas pequeñas")
            .font(.largeTitle)
            .lineLimit(1)
            .minimumScaleFactor(0.5) // Puede reducirse hasta la mitad si es necesario
        .padding()
    }
}
