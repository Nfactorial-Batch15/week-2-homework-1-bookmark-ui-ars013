//
//  Second.swift
//  HW44
//
//  Created by Арслан on 09.12.2021.
//

import SwiftUI

struct Second: View {
    var body: some View {
        ZStack{
        textA()
            screenF()
            Spacer()
            bordR()
                .padding(.top, 435)
        }
    }
}

struct screenF: View{
    var body: some View{
        Image("Fade")
            .frame(height: 830)
    }
}

struct bordR: View{
    var body: some View{
        ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: 390, height: 362, alignment: .bottom)
            VStack{
                Button(action: {}){
                    Image("Vector")
                        .padding(.top, 50)
                    .padding(.leading, 325)
                }
                Text("Title")
                    .frame(width: 358, height: 22, alignment: .leading)
                    .padding(.leading, 16)
                    .padding(.top, 56)
//                    .padding(.top, 12)
                title
                Text("Link")
                    .frame(width: 358, height: 22, alignment: .leading)
                    .padding(.leading, 16)
                    .padding(.bottom, 12)
                link
                    InstanceButtom(tittle: "Save", colorText: .white, colorBack: .black, fontW: .medium, lineS: 0)
            }
        }
    }
    var title: some View {
        TextField("Bookmark title", text: .constant(""))
            .frame(width: 358, height: 46, alignment: .leading)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .padding(.leading, 16)
            .padding(.trailing, 16)
    }
    var link: some View {
        TextField("Bookmark link (URL)", text: .constant(""))
            .padding(.bottom, 24)
            .frame(width: 358, height: 44, alignment: .leading)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .padding(.leading, 16)
            .padding(.trailing, 16)
    }
}

struct Second_Previews: PreviewProvider {
    static var previews: some View {
        Second()
    }
}
