//
//  FirstScreen.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 28.08.21.
//

import SwiftUI

struct FirstScreen: View {

    @EnvironmentObject var router: Router

    var body: some View {
        Button(action: {
            router.selectedItemRow = 0
            router.selectedTab = 1
            router.isNavigated = true
        }) {
            Text("Tap me please")
        }
    }
}
