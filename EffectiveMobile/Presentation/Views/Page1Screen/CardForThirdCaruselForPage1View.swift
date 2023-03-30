//
//  CardForThirdCaruselForPage1View.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 21.03.2023.
//

import SwiftUI

struct CardForThirdCaruselForPage1View: View {
    var body: some View {
        ZStack{
            Image("phone")
                .resizable()
              //  .frame(width: 140,height: 150)
                .frame(width: UIScreen.main.bounds.size.width / 3.5,height: UIScreen.main.bounds.size.height / 6)
         
        }
        .frame(width: UIScreen.main.bounds.size.width / 3.5,height:  UIScreen.main.bounds.size.height / 6)
        .cornerRadius(20)
    }
}

struct CardForThirdCaruselForPage1View_Previews: PreviewProvider {
    static var previews: some View {
        CardForThirdCaruselForPage1View()
    }
}
