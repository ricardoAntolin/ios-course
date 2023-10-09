//
//  AppView.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import SwiftUI
import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<AppReducer>
    
    var body: some View {
        NavigationStackStore(self.store.scope(state: \.path, action: { .path($0) })) {
            HomeView(
                store: self.store.scope(state: \.home, action: { .home($0) })
            )
        } destination: {
            switch $0 {
            case .auth:
                CaseLet(
                    /AppPathReducer.State.auth,
                     action: AppPathReducer.Action.auth,
                     then: AuthView.init(store:)
                )
            case .heartRate:
                CaseLet(
                    /AppPathReducer.State.heartRate,
                     action: AppPathReducer.Action.heartRate,
                     then: HeartRateView.init(store:)
                )
            case .workout:
                CaseLet(
                    /AppPathReducer.State.workout,
                     action: AppPathReducer.Action.workout,
                     then: WorkoutView.init(store:)
                )
            }
        }
    }
}

// #Preview {
//     AppView()
// }
