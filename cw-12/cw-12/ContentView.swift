//
//  ContentView.swift
//  cw-12
//
//  Created by Mariam2 on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var name = ""
    @State var phone = ""
    @State var age = ""
    @State var isMentor = false
    
    
    var body: some View {
       
        VStack {
            Text("مرحبا بك في الكويت")
                .padding(.bottom, 50) .foregroundColor(.blue) .font(.title)
            
            Button(action: {
                isMentor .toggle()
            } , label: {
                Text("ادخل بياناتك")
                    .font(.title)
                    .foregroundColor(.white) .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
            .sheet(isPresented: $isMentor)
            secondPage(name: $name, age: $age, phone: $phone)
        }
        if name != "" {
            HStack {
                Spacer()
                VStack(alignment: .trailing, spacing: 10){
                    Text("الاسم : \(name)")
                    Text("العمر : \(age)")
                    Text("الهاتف : \(phone)")
                } .font(.title) .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
