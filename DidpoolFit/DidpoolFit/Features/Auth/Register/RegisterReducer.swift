//
//  RegisterReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct RegisterReducer: Reducer {
    enum Action: Equatable {
        case toggleChange(Bool)
    }
    
    struct State: Equatable {
        var toggleState: Bool = false
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .toggleChange(isOn):
                state.toggleState = isOn
                return .none
            }
        }
    }
}

