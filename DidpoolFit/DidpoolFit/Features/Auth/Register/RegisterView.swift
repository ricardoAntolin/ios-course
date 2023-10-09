//
//  RegisterView.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import SwiftUI
import ComposableArchitecture

struct RegisterView: View {
    let store: StoreOf<RegisterReducer>
    
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
                    CustomTextInput(placeHolder: "Full Name")
                    CustomTextInput(placeHolder: "Phone Number")
                    CustomTextInput(placeHolder: "Email")
                    CustomTextInput(placeHolder: "Password")
                }
                
                HStack{
                    Toggle("",
                           isOn: viewStore.binding(
                            get: \.toggleState,
                            send: { .toggleChange($0) }
                           )
                    )
                    .labelsHidden()
                    Text("By continuing you accept our Privacy Policy and Term of Use")
                }
                Spacer()
                CustomButton()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

