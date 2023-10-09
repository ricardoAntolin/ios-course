//
//  AppStore.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct AppReducer: Reducer {
    enum Action: Equatable {
        case path(StackAction<AppPathReducer.State, AppPathReducer.Action>)
        case home(HomeReducer.Action)
    }
    
    struct State: Equatable {
        var path = StackState<AppPathReducer.State>()
        var home = HomeReducer.State()
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.home, action: /Action.home) {
            HomeReducer()
        }
        Reduce { state, action in
            switch action {
            default: .none
            }
        }
        .forEach(\.path, action: /Action.path) {
            AppPathReducer()
        }
    }
}
