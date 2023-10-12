//
//  FrameworkInsideView.swift
//  AppleFrameworks
//
//  Created by Güray Gül on 11.10.2023.
//

import SwiftUI

struct FrameworkInsideView: View {
    var framework: Framework
    
    var body: some View {
        
        ZStack{
            BackgroundView()
            VStack {
                FrameworkTitleView(framework: framework)
                
                Text(framework.description)
                    .font(.title3)
                    .padding()
                    .foregroundStyle(.white)
                Spacer()
                
                if let url = URL(string: framework.urlString) {
                    Link("Learn More", destination: url)
                        .frame(width: 280, height: 50)
                        .background(.orange)
                        .foregroundStyle(.white)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 5)
                }
            }
        }
    }
}

#Preview {
    FrameworkInsideView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
