//
//  test.swift
//  cw-12
//
//  Created by Mariam2 on 1/7/21.
//

import SwiftUI

struct test: View {
    @State var width: CGFloat = 60
    @State var tapped: Bool = false
    
    var body: some View {
        Button(action: addItem) {
            ZStack {
                Capsule().foregroundColor(.yellow)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
            }
            .frame(width: width, height: 60, alignment: .leading)
        }.animation(.spring())
        
    }
    
    func addItem() {
        tapped.toggle()
        if tapped {
            width = 300
        } else {
            width = 60
        }
    }
    
    
    
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
