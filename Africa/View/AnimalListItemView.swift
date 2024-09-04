//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Raka Permana on 03/09/24.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8 )
            } //: VSTACK
        } //: HSTACK
    }
}

struct AnimalListItemView_Preview: PreviewProvider {
    static var previews: some View {
        AnimalListItemView(animal: Animal(id: "1", name: "Lion", headline: "Lion headline", description: "lion description", link: "https://google.com", image: "lion", gallery: ["asd", "adf"], fact: ["sdf", "ihjh"]))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
