//
//  ClassroomApp.swift
//  Classroom
//
//  Created by Maksim Pegov on 06/10/2022.
//

import SwiftUI

@main
struct ClassroomApp: App {
    @AppStorage("AUTH_KEY") public var authorization = false
    
    var body: some Scene {
        WindowGroup {
            if authorization{
                MainView()
                    .preferredColorScheme(.light)
            }else{
                LoginView()
                    .preferredColorScheme(.light)
            }
        }
    }
}
