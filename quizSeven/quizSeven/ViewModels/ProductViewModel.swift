//
//  ProductViewModel.swift
//  quizSeven
//
//  Created by Ian McConaghy on 2022-03-16.
//

import Foundation
import Combine
import RealmSwift

final class ProductViewModel: ObservableObject {
    @Published var product: [Product] = []
    private var token: NotificationToken?

    init() {
        setupObserver()
    }

    deinit {
        token?.invalidate()
    }

    private func setupObserver() {
        do {
            let realm = try Realm()
            let results = realm.objects(ProductObject.self)

            token = results.observe({ [weak self] changes in
                self?.product = results.map(Product.init)
            })
        } catch let error {
            print(error.localizedDescription)
        }
    }

    func addProduct(id: String, title: String, price: String) {
        let productObject = ProductObject(value: [
            "id": id,
            "title": title,
            "price": price,
        ])
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(productObject)
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }

    func remove(id: String) {
        do {
            let realm = try Realm()
            let objectId = try ObjectId(string: id)
            if let product = realm.object(ofType: StudentObject.self, forPrimaryKey: objectId) {
                try realm.write {
                    realm.delete(product)
                }
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }

    func update(id: String, title: String, price: String) {
        do {
            let realm = try Realm()
            let objectId = try ObjectId(string: id)
            let product = realm.object(ofType: ProductObject.self, forPrimaryKey: objectId)
            try realm.write {
                product?.id = id
                product?.title = title
                product?.price = price
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
