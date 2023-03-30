//
//  TabBar.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//


import SwiftUI

struct TabBar: View {

    @ObservedObject var coordinator : Coordinator

    var body: some View {
        VStack {
            Spacer()
            HStack{
               content
            }
            
            
            .frame( height: 50)
            .padding(12)
           // .background(Color("Background 2").opacity(0.8))
            .background(.white)
          //  .background(.ultraThinMaterial)
            .mask(RoundedRectangle(cornerRadius: 34, style: .continuous))
            .shadow(color: Color("Background 2").opacity(0.3), radius: 20, x: 0, y: 20)
          //  .frame(height: 1.0)
            .overlay(
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .stroke(.linearGradient(colors: [.white.opacity(0.5), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
            )
            //.padding(.horizontal, 24)
        }
     //   .padding(.bottom, UIScreen.main.bounds.height / 26)
        //     .padding(.bottom, UIScreen.main.bounds.height / 50)
        .ignoresSafeArea()
       
    }
    
    var content : some View{
        
        ForEach(tabItems) { item in
            Spacer()
            Button{
                self.coordinator.page2 = false
                self.coordinator.coordinatorTab = item.tab
            } label: {
                
                ZStack{
                    Circle()
                        .frame(width : 50, height: 50)
                       // .background(Color(hex: "e8e8e8"))
          
                        .foregroundColor(self.coordinator.coordinatorTab == item.tab ? Color(hex: "e8e8e8")  : .white)
                    Image(item.icon)
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    
                        .opacity(self.coordinator.coordinatorTab == item.tab ? 1 : 0.7)
                    
                       // .foregroundColor(.black)
                }
            }
            Spacer()
        }
        
        
        
    }
}
//
//}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar( coordinator: Coordinator())
    }
}

struct TabItem: Identifiable {
    var id = UUID()
    var icon: String
    var tab: Tab
}

var tabItems = [
  //  TabItem(icon: "exploler", tab: .exploler), house bubble.left
    TabItem(icon: "home", tab: .home),
    TabItem(icon: "heart", tab: .heart),
    TabItem(icon: "basket", tab: .basket),
    TabItem(icon: "sms", tab: .sms),
    TabItem(icon: "person", tab: .person)
  //  TabItem(icon: "cart", tab: .cart),

]

enum Tab: String {

    case home
    case heart
    case basket
    case sms
    case person
 //   case cart
}

