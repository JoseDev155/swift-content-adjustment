import SwiftUI

struct SpacerExample: View {
    var body: some View {
        VStack {
            Text("Elemento Superior")
            Spacer() // Empuja todo hacia los extremos
            Text("Elemento Inferior")
        }
        .padding()
    }
}

struct SpacerExample_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExample()
    }
}
