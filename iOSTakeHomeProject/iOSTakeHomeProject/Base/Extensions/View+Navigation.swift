//
//  View+Navigation.swift
//  iOSTakeHomeProject
//
//  Created by Tunde Adegoroye on 10/09/2022.
//

import SwiftUI

extension View {
    @ViewBuilder
    func embedInNavigation() -> some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                self
            }
        } else {
            NavigationView {
                self
            }
        }
    }
}
