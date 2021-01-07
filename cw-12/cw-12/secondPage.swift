//
//  secondPage.swift
//  cw-12
//
//  Created by Mariam2 on 1/7/21.
//

import SwiftUI

struct secondPage: View {
    
    @Binding var name : String
    @Binding var age : String
    @Binding var phone : String
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        
        VStack {
            VStack(alignment: .center, spacing: 40){
                TextField("الاسم : \(name)", text: $name)
                TextField("العمر : \(age)", text: $age)
                TextField("الهاتف : \(phone)", text: $phone)
                
            } .padding()
            .font(.title)
            .multilineTextAlignment(.trailing)
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
              Text("موافق")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue.opacity(0.7))
                .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
        
        
    }
}

