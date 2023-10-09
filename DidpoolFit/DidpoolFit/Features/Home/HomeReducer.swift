//
//  HomeReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct HomeReducer: Reducer {
    enum Action: Equatable {
        
    }
    
    struct State: Equatable {
        
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            default: .none
            }
        }
    }
}

