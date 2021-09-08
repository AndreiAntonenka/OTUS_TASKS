//
//  OtusTasksApp.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 28.08.21.
//

import SwiftUI

@main
struct OtusTasksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Router())
        }
    }
}
