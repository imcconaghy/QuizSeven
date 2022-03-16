//
//  Product.swift
//  quizSeven
//
//  Created by Ian McConaghy on 2022-03-16.
//

import SwiftUI

import Foundation

struct Product: Identifiable {
    var id: String
    var title: String
    var price: String
    var category: String
    var description: String
    var image: String

    init(productObject: ProductObject) {
        self.id = productObject.id.stringValue
        self.title = productObject.title
        self.price = productObject.price
        self.category = productObject.category
        self.description = productObject.description
        self.image = productObject.image
    }
}
