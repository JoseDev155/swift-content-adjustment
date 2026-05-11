//
//  GridExample.swift
//  GrillasApp
//
//  Created by Jose Ramos on 11/5/26.
//

import SwiftUI

struct GridExample: View {
    // Define columnas que se ajustan solas (mínimo 100px)
    let columns = [GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<10) { _ in
                    RoundedRectangle(cornerRadius: 10)
                    .fill(.orange)
                    .frame(height: 100)
                }
            }
            .padding()
        }
    }
}

struct GridExample_Previews: PreviewProvider {
    static var previews: some View {
        GridExample()
    }
}
