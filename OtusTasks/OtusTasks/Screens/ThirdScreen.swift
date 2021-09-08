//
//  ThirdScreen.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 28.08.21.
//

import SwiftUI

struct ThirdScreen: View {
    @State var isPresented = false
    @State var isActivityIndicatorAnimatong = false
    var body: some View {
        NavigationView(content: {
            VStack {

                ActivityIndicator(isAnimating: $isActivityIndicatorAnimatong)

                Button("toggle indicator") {
                    isActivityIndicatorAnimatong.toggle()
                }
                Spacer()
                Button(action: {
                    isPresented.toggle()
                }){
                    Text("show modal screen")
                }.sheet(isPresented: $isPresented, content: {
                    Button (action: {
                        isPresented.toggle()
                    }){
                        Text("dismiss me")
                    }
                    Text("kekw")
                })
                Spacer()
                
            }
        })
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ThirdScreen()
        }
    }
}
