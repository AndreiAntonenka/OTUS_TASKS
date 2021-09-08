//
//  Router.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 8.09.21.
//

import Foundation

class Router: ObservableObject {
    @Published var selectedItemRow = 0
    @Published var isNavigated = false
    @Published var selectedTab = 0
}
