//
//  Page1Screen.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct Page1Screen: View {
    @State var tab = Tab.home
    @StateObject var viewModel = Page1ViewModel()
    @ObservedObject var coordinator : Coordinator
    
    var body: some View {
        ZStack {
            VStack{
                elementsWithOutCarusels()
                carusels

            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    private func elementsWithOutCarusels() -> some View{
        VStack{
            HStack{
                Image(systemName: "text.justify")
                    .padding(.leading, 0)
                    .frame(width: 40, height: 40)
                
                Spacer()
                Text("Trade by")
                    .font(Font.custom("Montserrat-Bold", size: 15))
                Button {
                } label: {
                    Text("bata")
                        .font(Font.custom("Montserrat-Bold", size: 15))
                }
                .padding(.leading, 0)
                Spacer()
                
                
                Button {
                    coordinator.crossToTab(tab: Tab.person)
                } label: {
                    VStack{
                        Image("PrifilePhoto")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40, style: .continuous)
                                    .stroke()
                                    .fill(.black.opacity(1))
                            )
                        HStack(spacing: 5){
                            Text("Location")
                                .font(Font.custom("Montserrat-Medium", size: 8))
                                .foregroundColor(.black)
                                .opacity(0.6)
                            
                            Image(systemName: "chevron.down")
                                .resizable()
                                .frame(width: 8, height: 5)
                                .padding(.leading, 0)
                                .foregroundColor(.black)
                        }
                        
                    }
                    .padding(.top, 0)
                }
                .padding(.trailing, 16)
                
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            
            TextFieldForPage1(viewModel: viewModel, textForTextField: "What are you looking for?")
                .padding(.leading, UIScreen.main.bounds.size.width / 10)
                .padding(.trailing, UIScreen.main.bounds.size.width / 10)
            ChoiceDeviceView()
                .padding(.top, 16)
        }
    }
    
    private var carusels : some View{
        ZStack{
          //  TabBar(selectedTab: $tab)
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    HStack{
                        Text("Latest")
                            .font(Font.custom("Montserrat-Bold", size: 17))
                            .padding(.leading, 16)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("View all")
                                .font(Font.custom("Montserrat-Medium", size: 8))
                                .foregroundColor(Color(hex: "8c8b90"))
                                .padding(.trailing, 16)
                        }
                        
                    }
                    .padding(.top, 16)

                    FirstCaruselForPage1View(viewModel: viewModel, coordinator: coordinator)
                        .frame(height: UIScreen.main.bounds.size.height / 6)
                    HStack{
                        Text("FLASH SALE")
                            .font(Font.custom("Montserrat-Bold", size: 17))
                            .padding(.leading, 16)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("View all")
                                .font(Font.custom("Montserrat-Medium", size: 8))
                                .foregroundColor(Color(hex: "8c8b90"))
                                .padding(.trailing, 16)
                        }
                        
                    }
                    SecondCaruselForPage1View(viewModel: viewModel, coordinator: coordinator)
                        .frame(height:  UIScreen.main.bounds.size.height / 4)
                    HStack{
                        Text("Brands")
                            .font(Font.custom("Montserrat-Bold", size: 17))
                            .padding(.leading, 16)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("view all")
                                .foregroundColor(Color(hex: "8c8b90"))
                                .font(Font.custom("Montserrat-Medium", size: 8))
                                .padding(.trailing, 16)
                        }
                        
                    }
                    .padding(.top, 16)
                    ThirdCaruselForPage1View(viewModel: viewModel, coordinator: coordinator)
                        .frame(height: UIScreen.main.bounds.size.height / 6)
                }
               
            }

        }
    }
    
}

struct Page1Screen_Previews: PreviewProvider {
    static var previews: some View {
        Page1Screen(coordinator: Coordinator())
    }
}


