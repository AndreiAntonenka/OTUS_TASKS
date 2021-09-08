//
//  ActivityIndicator.swift
//  OtusTasks
//
//  Created by Andrei Antonenka on 3.09.21.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    @Binding var isAnimating: Bool
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }

    func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
        if isAnimating {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }

}
