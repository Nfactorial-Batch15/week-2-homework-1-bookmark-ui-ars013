//
//  ContentView.swift
//  HW44
//
//  Created by Арслан on 08.12.2021.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack{
            VStack{
                imageScreen()
                textScreen()
//                customButton()
            }
        }
        .background(.black)
    }
}

struct imageScreen: View{
    var body: some View{
        Image("BG_Image")
            .frame(width: 390, height: 614, alignment: .center)
//            .ignoresSafeArea()
            .padding(.bottom, 6)
    }
}

struct textScreen: View{
    var body: some View{
        Text("Save all interesting links in one app")
            .font(.system(size: 36, weight: .bold))
            .frame(width: 358, height: 92, alignment: .topLeading)
            .foregroundColor(.white)
        
        Spacer()
        InstanceButtom(tittle: "Let's start collecting", colorText: .black, colorBack: .white, fontW: .regular, lineS: 0)
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
