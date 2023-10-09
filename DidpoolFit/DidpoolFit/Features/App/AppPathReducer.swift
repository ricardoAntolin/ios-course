//
//  PathReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct AppPathReducer: Reducer {
    enum State: Equatable {
        case auth(AuthReducer.State)
        case heartRate(HeartRateReducer.State)
        case workout(WorkoutReducer.State)
    }
    
    enum Action: Equatable {
        case auth(AuthReducer.Action)
        case heartRate(HeartRateReducer.Action)
        case workout(WorkoutReducer.Action)
    }
    
    var body: some Reducer<State, Action> {
        Scope(state: /State.auth, action: /Action.auth) {
            AuthReducer()
        }
        Scope(state: /State.heartRate, action: /Action.heartRate) {
            HeartRateReducer()
        }
        Scope(state: /State.workout, action: /Action.workout) {
            WorkoutReducer()
        }
    }
}

