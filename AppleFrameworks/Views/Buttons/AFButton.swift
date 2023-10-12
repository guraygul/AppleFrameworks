//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Güray Gül on 12.10.2023.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(.orange)
            .foregroundStyle(.white)
            .font(.system(size: 25, weight: .bold, design: .rounded))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 5)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
