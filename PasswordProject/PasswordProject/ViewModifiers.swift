//
//  ViewModifiers.swift
//  PasswordProject
//
//  Created by Игорь Камышенков on 17.12.2023.
//

import Foundation
import SwiftUI

extension View {
    func centerH() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    func addNavugationView(title: String) -> some View {
        NavigationView {
            self
                .navigationTitle(title)
        }
    }
}


