//
//  HeaderModel.swift
//  AvocadoApp
//
//  Created by Oleh on 19.11.2024.
//

import Foundation

// MARK: HEADER MODEL

struct Header: Identifiable {
    let id = UUID()
    let image: String
    let headline: String
    let subheadline: String
}
