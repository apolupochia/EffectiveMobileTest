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
                    
                } label: {
                    image(info: elemrnt)
                    

                }
                .animation(.spring(), value: 1)


                
            }
            
            
        }
    }
    
    
    private func image(info : infoForCarusel) -> some View{
        AsyncImage(url: URL(string: info.imageString)) { phase in
            if let image = phase.image{
                image
                    .resizable()
                    .frame(width: 80, height: info.largeSize ? 60 : 40)
                    .scaledToFill()
                    .cornerRadius(10)
            } else {
                ProgressView()
                    .frame(width: 15, height: 15)
                    .padding()
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
