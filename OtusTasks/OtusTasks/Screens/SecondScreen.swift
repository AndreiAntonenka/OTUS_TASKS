//
//  SecondScreen.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 28.08.21.
//

import SwiftUI

struct SecondScreen: View {
    @State var items = [Item(description: "first", title: "1"), Item(description: "second", title: "2"), Item(description: "third", title: "3")]

    @EnvironmentObject var router: Router

    var body: some View {
        NavigationView() {
            List(items.indices, id: \.self) { index in
                NavigationLink(
                    destination: ItemDetailsScreen(item: items[index]),
                    label: {
                        VStack(alignment: .leading) {
                            Text(items[index].title)
                            Text(items[index].description)
                        }
                    })
            }.navigationTitle("Items")
            .overlay(NavigationLink(
                destination: ItemDetailsScreen(item: items[$router.selectedItemRow.wrappedValue]),
                isActive: $router.isNavigated){
                EmptyView()
            }.hidden())
        }
    }
}
