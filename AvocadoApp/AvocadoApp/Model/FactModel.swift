//
//  FactModel.swift
//  AvocadoApp
//
//  Created by Oleh on 19.11.2024.
//

import Foundation

struct Fact: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
