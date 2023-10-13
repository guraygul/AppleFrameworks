//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Güray Gül on 11.10.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                ScrollView{
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.frameworks) { framework in
                            NavigationLink(value: framework) {
                                FrameworkTitleView(framework: framework)
                            }
                            // test
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .navigationDestination(for: Framework.self) { framework in
                 FrameworkInsideView(framework: framework)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    FrameworkGridView()
        
}
