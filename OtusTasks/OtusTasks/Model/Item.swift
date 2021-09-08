//
//  Item.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 30.08.21.
//

import Foundation

class Item: Identifiable {

    var description: String
    var title: String

    init(description: String, title: String) {
        self.description = description;
        self.title = title;
    }

}
