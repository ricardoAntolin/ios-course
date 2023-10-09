//
//  HeartRatePathReducer.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import ComposableArchitecture

struct HeartRatePathReducer: Reducer {
    enum State: Equatable {
        case list(DeviceListReducer.State)
        case success(DeviceConnectionSuccessReducer.State)
    }
    
    enum Action: Equatable {
        case list(DeviceListReducer.Action)
        case success(DeviceConnectionSuccessReducer.Action)
    }
    
    var body: some Reducer<State, Action> {
        Scope(state: /State.list, action: /Action.list) {
            DeviceListReducer()
        }
        Scope(state: /State.success, action: /Action.success) {
            DeviceConnectionSuccessReducer()
        }
    }
}
