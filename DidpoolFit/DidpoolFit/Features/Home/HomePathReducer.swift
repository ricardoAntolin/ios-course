//
//  HomePathReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct HomePathReducer: Reducer {
    enum State: Equatable {
        case home(HomeReducer.State)
    }
    
    enum Action: Equatable {
        case home(HomeReducer.Action)
    }
    
    var body: some Reducer<State, Action> {
        Scope(state: /State.home, action: /Action.home) {
            HomeReducer()
        }
    }
}
