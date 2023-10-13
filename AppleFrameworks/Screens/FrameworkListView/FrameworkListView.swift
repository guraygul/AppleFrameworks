//
//  FrameworkListView.swift
//  AppleFrameworks
//
//  Created by Güray Gül on 13.10.2023.
//

import SwiftUI

struct FrameworkListView: View {
    
    var body: some View {
        List(MockData.frameworks) { framework in
            
            NavigationLink {
                FrameworkInsideView(framework: framework)
            } label: {
                HStack {
                    Image(framework.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .padding()
                    VStack(alignment: .leading) {
                        Text(framework.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .scaledToFit()
                            .minimumScaleFactor(0.6)
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    FrameworkListView()
}
