//
//  ContentView.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 4/10/23.
//

import SwiftUI
import ComposableArchitecture

struct LoginView: View {
    let store: StoreOf<LoginReducer>
    var body: some View {
        WithViewStore(store, observe: {$0}) { viewStore in
            VStack(
                alignment: .center,
                spacing: 32.0
            ) {
                Text("Hey there,")
                    .font(.title3)
                Text("Create an Account")
                    .font(.title2)
                    .bold()
                
                VStack(spacing: 16.0) {
                    CustomTextInput(placeHolder: "Email")
                    CustomTextInput(placeHolder: "Password")
                }
                
                
                Spacer()
                Button(
                    action:{
                        viewStore.send(LoginReducer.Action.register)
                    },
                    label:{
                        Text("Register")
                            .frame(maxWidth: .infinity)
                    })
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}

#Preview {
    LoginView(
        store: .init(initialState: .init(acceptedTOS: false, loginToggle: false), reducer: {LoginReducer()})
    )
}


struct Login: View {
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 32.0
        ) {
            Text("Hey there,")
                .font(.title3)
            Text("Create an Account")
                .font(.title2)
                .bold()
            
            VStack(spacing: 16.0) {
                CustomTextInput(placeHolder: "Email")
                CustomTextInput(placeHolder: "Password")
            }
            
            
            Spacer()
            Button(
                action:{
                    
                },
                label:{
                    Text("Register")
                        .frame(maxWidth: .infinity)
                })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

