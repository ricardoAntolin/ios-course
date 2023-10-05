//
//  ContentView.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 4/10/23.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<LoginReducer>
    var body: some View {
        WithViewStore(store, observe: {$0}) { viewStore in
            if true {
                Register(isOn: false)
            } else {
                Login()
            }
        }

    }
}

#Preview {
    ContentView(
        store: .init(initialState: .init(acceptedTOS: false, loginToggle: false), reducer: {LoginReducer()}))
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
            CustomButton()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct Register: View {
    @State var isOn: Bool
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
                    CustomTextInput(placeHolder: "Full Name")
                    CustomTextInput(placeHolder: "Phone Number")
                    CustomTextInput(placeHolder: "Email")
                    CustomTextInput(placeHolder: "Password")
                }
                
                
                HStack{
                    Toggle("", isOn: $isOn)
                        .labelsHidden()
                    Text("By continuing you accept our Privacy Policy and Term of Use")
                }
                Spacer()
                CustomButton()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
}
