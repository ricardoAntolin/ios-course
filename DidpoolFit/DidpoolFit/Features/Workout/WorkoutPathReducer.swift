//
//  WorkoutPathReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct WorkoutPathReducer: Reducer {
    enum State: Equatable {
        case list(ExerciseListReducer.State)
        case detail(ExerciseDetailReducer.State)
    }
    
    enum Action: Equatable {
        case list(ExerciseListReducer.Action)
        case detail(ExerciseDetailReducer.Action)
    }
    
    var body: some Reducer<State, Action> {
        Scope(state: /State.list, action: /Action.list) {
            ExerciseListReducer()
        }
        Scope(state: /State.detail, action: /Action.detail) {
            ExerciseDetailReducer()
        }
    }
}
