//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Güray Gül on 12.10.2023.
//

import SwiftUI
import Observation
@Observable class FrameworkGridViewModel {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
