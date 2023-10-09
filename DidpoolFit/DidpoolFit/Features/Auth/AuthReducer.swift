//
//  AuthReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct AuthReducer: Reducer {
    enum Action: Equatable {
        case register(RegisterReducer.Action)
        case login(LoginReducer.Action)
    }
    
    enum State: Equatable {
        case login(LoginReducer.State)
        case register(RegisterReducer.State)
        
        init() { self = .login(LoginReducer.State()) }
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
                case .login:
                    state = .login(LoginReducer.State())
                    return .none
                case .register:
                    state = .register(RegisterReducer.State())
                    return .none
            }
        }
    }
}

