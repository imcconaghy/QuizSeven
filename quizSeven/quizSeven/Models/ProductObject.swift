//
//  ProductObject.swift
//  quizSeven
//
//  Created by Ian McConaghy on 2022-03-16.
//

import Foundation
import RealmSwift

class ProductObject: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var id: String
    @Persisted var title: String
    @Persisted var price: string
}
