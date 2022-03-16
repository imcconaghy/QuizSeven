//
//  StoreFront.swift
//  quizSeven
//
//  Created by Ian McConaghy on 2022-03-16.
//

import SwiftUI

struct StoreFront: View {
    var body: some View {
        ZStack {
            Color("ColorViolet")
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("Storefront")
                        .bold()
                        .font(.system(size: 22))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding()
                .frame(width: 260, height: 100, alignment: .topLeading)
                .background(Color.white)
                .cornerRadius(10)
                .padding([.bottom],10)
                .padding([.top], 25)
                
                HStack {
                    Text("Title & Price")
                        .font(.system(size: 22))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding()
                .frame(width: 150, height: 150, alignment: .leading)
                .background(Color.white)
                .cornerRadius(10)
                .padding([.bottom],10)
                .padding([.top], 25)
                
                HStack {
                    Text("Product of the day")
                        .bold()
                        .font(.system(size: 22))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding()
                .frame(width: 360, height: 150, alignment: .leading)
                .background(Color.white)
                .cornerRadius(10)
                .padding([.bottom],10)
                .padding([.top], 25)
            }
        }
    }
}

struct StoreFront_Previews: PreviewProvider {
    static var previews: some View {
        StoreFront()
    }
}
