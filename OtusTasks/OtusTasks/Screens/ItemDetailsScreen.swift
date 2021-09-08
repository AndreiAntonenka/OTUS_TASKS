//
//  ItemDetailsScreen.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 30.08.21.
//

import SwiftUI

struct ItemDetailsScreen: View {
    @State var item: Item
    var body: some View {
        Text(item.title)
        Text(item.description)
    }
}
