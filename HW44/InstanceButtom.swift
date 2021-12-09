//
//  InstanceButtom.swift
//  HW44
//
//  Created by Арслан on 09.12.2021.
//

import SwiftUI

struct InstanceButtom: View {
    var tittle: String
    var colorText: Color
    var colorBack: Color
    var fontW: Font.Weight
    var lineS: CGFloat
    var body: some View {
        Button(action: {}){
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .fill(colorBack)
                    .frame(width: 358, height: 58)
                Text(tittle)
                    .foregroundColor(colorText)
                    .fontWeight(fontW)
                    .lineSpacing(lineS)
            }
            .padding(.bottom, 50)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}


