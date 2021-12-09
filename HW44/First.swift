//
//  First.swift
//  HW44
//
//  Created by Арслан on 09.12.2021.
//

import SwiftUI

struct First: View {
    var body: some View {
        VStack{
        textA()
        }
    }
}

struct textA: View{
    var body: some View{
        VStack{
            Text("Bookmark App")
                .font(.system(size: 17, weight: .semibold))
                .frame(width: 130, height: 22)
                .foregroundColor(.black)
                .padding(.top, 56)
            Text("Save your first \nbookmark")
                .font(.system(size: 36, weight: .bold))
                .multilineTextAlignment( .center)
                .frame(width: 358, height: 92, alignment: .top)
                .padding(.top, 268)
                .padding(.bottom,268)
                .foregroundColor(.black)
            
            Spacer()
            InstanceButtom(tittle: "Add bookmark", colorText: .white, colorBack: .black, fontW: .medium, lineS: 0)
        }
    }
}

struct First_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            First()
        }
    }
}
