//
//  SecondCarurelForPage2.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 22.03.2023.
//

import SwiftUI

struct SecondCarurelForPage2: View {
    
    @ObservedObject var viewModel :Page2ViewModel

    var body: some View {
        HStack{
            ForEach(viewModel.curuselImagesPage2.info){elemrnt in
                Button {
                    updateHeight(value: elemrnt.id)
                  //  elemrnt.largeSize = true
                   // updateHeight(sting: elemrnt.)
                    
                } label: {
                    AsyncImage(url: URL(string: elemrnt.imageString)) { image in
                        image
                            .resizable()
                            .frame(width: 80, height: elemrnt.largeSize ? 60 : 40)
                            .scaledToFill()
                            .cornerRadius(10)
                    } placeholder: {
                   //     Color.purple.opacity(0.1)
                    }
                    

                }
                .animation(.spring(), value: 1)


                
            }
            
            
        }
    }
    func updateHeight(value : UUID){
        
        var lastCount : CGFloat = -1
        
        
        var count : CGFloat = -1
        for i in 0..<viewModel.curuselImagesPage2.info.count{
            if viewModel.curuselImagesPage2.info[i].largeSize == true {
                lastCount = CGFloat(i)
            }
            
            viewModel.curuselImagesPage2.info[i].largeSize = false
            if viewModel.curuselImagesPage2.info[i].id == value {
                count = CGFloat(i)
                viewModel.curuselImagesPage2.info[i].largeSize = true
            }
        }
        
        if count - lastCount > 0{
            viewModel.infoForCarusel1.x = viewModel.infoForCarusel1.x - CGFloat((count - lastCount))*(UIScreen.main.bounds.width - 15)
        } else {
            viewModel.infoForCarusel1.x = viewModel.infoForCarusel1.x -  (count - lastCount)*(UIScreen.main.bounds.width - 15)
        }
        
        
        
    }
}

struct SecondCarurelForPage2_Previews: PreviewProvider {
    static var previews: some View {
        SecondCarurelForPage2(viewModel: Page2ViewModel())
    }
}
