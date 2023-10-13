//
//  FrameworkView.swift
//  AppleFrameworks
//
//  Created by Güray Gül on 13.10.2023.
//

import SwiftUI

struct FrameworkView: View {
    var viewModel = FrameworkGridViewModel()
    @AppStorage("showingGrid") private var showingGrid = true
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                Group {
                    if showingGrid {
                        FrameworkGridView()
                    } else {
                        FrameworkListView()
                    }
                }
                .toolbar {
                    Button {
                        showingGrid.toggle()
                    } label: {
                        if showingGrid {
                            Label("Show as Table", systemImage: "list.dash")
                        } else {
                            Label("Show as Grid", systemImage: "square.grid.2x2")
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
    FrameworkView()
}
