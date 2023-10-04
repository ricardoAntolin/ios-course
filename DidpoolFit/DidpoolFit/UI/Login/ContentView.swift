//
//  ContentView.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(
            alignment: .center, 
            spacing: 16.0
        ) {
            Text("Hey there,")
                .font(.title3)
            Text("Create an Account")
                .font(.title2)
                .bold()
            
            
            CustomTextInput(placeHolder: "Full Name")
            CustomTextInput(placeHolder: "Phone Number")
            CustomTextInput(placeHolder: "Email")
            CustomTextInput(placeHolder: "Password")
            
            HStack{
                Toggle("", isOn: $isOn)
                    .labelsHidden()
                Text("By continuing you accept our Privacy Policy and Term of Use")
            }
            Spacer()
            CustomButton()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(32.0)
    }
}

#Preview {
    ContentView()
}
