//
//  AppDelegate.swift
//  quizSeven
//
//  Created by Ian McConaghy on 2022-03-16.
//

import SwiftUI
import RealmSwift

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        configMigration()
        getRealmFilePath()
        return true
    }

    private func configMigration() {
        // perform migration if necessary
        let config = Realm.Configuration(
                schemaVersion: 2,
                migrationBlock: { migration, oldSchemaVersion in
                    // additional process such as rename, combine fields and link to other object
                })
        Realm.Configuration.defaultConfiguration = config
    }

    private func getRealmFilePath() {
        do {
            let realm = try Realm()
            print("Realm db file: \(realm.configuration.fileURL?.absoluteString ?? "Unknown")")
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
