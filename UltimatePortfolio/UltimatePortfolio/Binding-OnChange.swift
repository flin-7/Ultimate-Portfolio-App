//
//  Binding-OnChange.swift
//  UltimatePortfolio
//
//  Created by Felix Lin on 4/1/21.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding (
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
