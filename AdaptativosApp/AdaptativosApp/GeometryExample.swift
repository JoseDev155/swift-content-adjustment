//
//  GeometryExample.swift
//  AdaptativosApp
//
//  Created by Jose Ramos on 11/5/26.
//

import SwiftUI

struct GeometryExample: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: geometry.size.width * 0.8, height: 100)
                Text("Este cuadro siempre ocupa el 80% del ancho")
            }
        }
    }
}

struct GeometryExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryExample()
    }
}
