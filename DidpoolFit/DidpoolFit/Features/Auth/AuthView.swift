//
//  AuthView.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import SwiftUI
import ComposableArchitecture
import SwiftUINavigationCore

struct AuthView: View {
    let store: StoreOf<AuthReducer>
    
    var body: some View {
        SwitchStore(self.store) { state in
            switch state {
                case .login:
                    CaseLet(
                        /AuthReducer.State.login, action: AuthReducer.Action.login
                    ) { loginStore in
                        LoginView(store: loginStore)
                    }
                case .register:
                    CaseLet(
                        /AuthReducer.State.register, action: AuthReducer.Action.register
                    ) { registerStore in
                        RegisterView(store: registerStore)
                    }
            }
        }
    }
}


