//
//  RipeningModel.swift
//  AvocadoApp
//
//  Created by Oleh on 20.11.2024.
//

import SwiftUI

struct Ripening: Identifiable {
    var id: UUID = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

