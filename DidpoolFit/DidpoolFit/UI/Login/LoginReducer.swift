//
//  LoginReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 5/10/23.
//

import ComposableArchitecture

struct LoginReducer: Reducer {
    enum Action {
        case login
    }
    
    struct State: Equatable {
        var acceptedTOS: Bool = false
        var loginToggle: Bool = false
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case .login:
                    return .none
            }
        }
    }
}
