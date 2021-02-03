//
//  Country.swift
//  Countries
//
//  Created by Gustavo Anjos on 01/02/21.
//

import SwiftUI

// MARK: - COUNTRIES DATA MODEL

struct Country: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var flagImage: String
    var capital: String
    var description: String
}
