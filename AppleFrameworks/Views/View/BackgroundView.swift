//
//  BackgroundView.swift
//  AppleFrameworks
//
//  Created by Güray Gül on 12.10.2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
            ContainerRelativeShape()
                .fill(Color.black.gradient)
                .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
