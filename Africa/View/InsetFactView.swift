//
//  InsetFactView.swift
//  Africa
//
//  Created by Raka Permana on 04/09/24.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    var animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: GROUPBOX
    }
}

// MARK: - PREVIEW
struct InsetFactView_Preview: PreviewProvider {
    
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
