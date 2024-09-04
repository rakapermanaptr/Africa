//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Raka Permana on 04/09/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    var animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: GROUPBOX
    }
}

// MARK: - PREVIEW
struct ExternalWeblink_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
