//
//  CustomTextInput.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 4/10/23.
//

import SwiftUI

struct CustomTextInput: View {
    let placeHolder: String
    @State var inputText: String = ""
    
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "moon.stars.fill")
            TextField(text: $inputText){
                Text(placeHolder)
            }
        }
        .background(Color.gray)
    }
}

#Preview {
    CustomTextInput(placeHolder: "Full Name")
}
