//
//  ContentView.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 28.08.21.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var router: Router

    var body: some View {
        TabView(selection: $router.selectedTab) {
            FirstScreen().tabItem {
                Text("first")
                Image(systemName: "umbrella.fill")
            }.tag(0)
            SecondScreen().tabItem {
                Text("second")
                Image(systemName: "seal.fill")
            }.tag(1)
            ThirdScreen().tabItem {
                Text("third")
                Image(systemName: "cloud.moon.fill")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
