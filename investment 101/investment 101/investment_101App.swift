//
//  investment_101App.swift
//  investment 101
//
//  Created by Celine Tsai on 24/7/23.
//

import SwiftUI
import Firebase
import GoogleSignIn


@main
struct investment_101App: App {
    init(){
        FirebaseApp.configure()
    }
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    func application(_ app: UIApplication,
                    open url: URL,
                    options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
    }
}




