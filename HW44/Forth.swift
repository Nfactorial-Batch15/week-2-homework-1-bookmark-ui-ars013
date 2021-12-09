//
//  Forth.swift
//  HW44
//
//  Created by Арслан on 09.12.2021.
//

import SwiftUI

struct Forth: View {
    var body: some View {
        ZStack{
            VStack {
                TextTitleList()
                    .padding()
                Spacer()
                WebSitesList()
                Spacer()
            }
            InstanceButtom(tittle: "Add bookmark", colorText: .white, colorBack: .black, fontW: .medium, lineS: 0)
                            .background(.white)
                            .padding(.top, 720)
            icons()
            Image("arrow.up.forward.square")
                .resizable()
                .frame(width: 22, height: 22)
                .padding(.bottom, 375)
                .padding(.leading, 300)
            Image("arrow.up.forward.square")
                .resizable()
                .frame(width: 22, height: 22)
                .padding(.bottom, 255)
                .padding(.leading, 300)
            Image("arrow.up.forward.square")
                .resizable()
                .frame(width: 22, height: 22)
                .padding(.bottom, 135)
                .padding(.leading, 300)
        }
    }
}

struct TextTitleList: View {
    var body: some View {
        VStack{
            Text("List")
                .font(.system(size: 17, weight: .regular))
                .frame(width: 130, height: 22, alignment: .center)
                .padding(.leading, 130)
                .padding(.trailing, 130)
                .padding(.top, 40)
        }
    }
}

struct WebSites: Identifiable {
    let id = UUID()
    var name: String
}

var links = [
    WebSites(name: "Google"),
    WebSites(name: "nFactorial School"),
    WebSites(name: "NY Times"),
    WebSites(name: "Bloomberg"),
]

struct WebSitesList: View {
    var body: some View {
        List {
            ForEach(links) { WebSites in
                Text(WebSites.name)
                    .background(.white)
            }
            .padding(.top)
            .padding(.leading, 16)
            .padding(.trailing, 48)
            .padding(.bottom, 11)
        }
    }
}

struct icons: View {
    var body: some View {
        Image(systemName: "arrow.up.forward.square")
            .resizable()
            .frame(width: 22, height: 22)
            .padding(.bottom, 485)
            .padding(.leading, 300)
    }
}

struct Forth_Previews: PreviewProvider {
    static var previews: some View {
        Forth()
    }
}
