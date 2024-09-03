//
//  HeadingView.swift
//  Africa
//
//  Created by Raka Permana on 03/09/24.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PREVIEW
    var headingImage: String
    var headingTitle: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingTitle)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

// MARK: PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in Pictures")
}
