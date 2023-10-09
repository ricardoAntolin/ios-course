//
//  DidpoolFitApp.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 4/10/23.
//

import ComposableArchitecture
import SwiftUI

@main
struct DidpoolFitApp: App {
    var body: some Scene {
        WindowGroup {
            if _XCTIsTesting {
                EmptyView()
            } else {
                AppView(
                    store: Store(initialState: AppReducer.State()) {
                        AppReducer()
                            ._printChanges()
                    }
                )
            }
        }
    }
}
