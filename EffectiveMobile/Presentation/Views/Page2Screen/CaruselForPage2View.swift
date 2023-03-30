//
//  CaruselForPage2View.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 21.03.2023.
//

import SwiftUI

struct CaruselForPage2View: View {
    
    @ObservedObject var viewModel :Page2ViewModel

    var body: some View {
        
        NavigationView{
            
            VStack{
    
                Spacer()
              
                
                HStack(spacing: 15){
                    carusel
                }
                .frame(width: UIScreen.main.bounds.width)
                .offset(x: viewModel.infoForCarusel1.op)
                
                Spacer()
            }
            .frame(height: 300 )

            .animation(.spring(), value: 10)
            
        }
    }
    
    
    private var carusel : some View {
        ForEach(viewModel.curuselImagesPage2.info){i in
            
            CardForCarusel(data: i)
                .offset(x: viewModel.infoForCarusel1.x)
                .onAppear {
                    viewModel.infoForCarusel1.op = ((viewModel.infoForCarusel1.screen + 15) * CGFloat(  viewModel.curuselImagesPage2.info.count / 2)) - (  viewModel.curuselImagesPage2.info.count % 2 == 0 ? ((viewModel.infoForCarusel1.screen + 15) / 2) : 0)
                }
                .highPriorityGesture(DragGesture()
                                     
                    .onChanged({ (value) in
                        
                        if value.translation.width > 0{
                            viewModel.infoForCarusel1.x = value.location.x
                        }
                        else{
                            
                            viewModel.infoForCarusel1.x = value.location.x - viewModel.infoForCarusel1.screen
                        }
                        
                    })
                        .onEnded({ (value) in
                            
                            if value.translation.width > 0{
                                
                                
                                if value.translation.width > ((viewModel.infoForCarusel1.screen - 80) / 2) && Int(viewModel.infoForCarusel1.count) != 0{
                                    
                                    
                                    viewModel.infoForCarusel1.count -= 1
                                    self.updateHeight(value: Int(viewModel.infoForCarusel1.count))
                                    viewModel.infoForCarusel1.x = -((viewModel.infoForCarusel1.screen + 15) * viewModel.infoForCarusel1.count)
                                }
                                else{
                                    
                                    viewModel.infoForCarusel1.x = -((viewModel.infoForCarusel1.screen + 15) * viewModel.infoForCarusel1.count)
                                }
                            }
                            else{
                                
                                
                                if -value.translation.width > ((viewModel.infoForCarusel1.screen - 80) / 2) && Int(viewModel.infoForCarusel1.count) !=  (viewModel.curuselImagesPage2.info.count - 1){
                                    
                                    viewModel.infoForCarusel1.count += 1
                                    self.updateHeight(value: Int(viewModel.infoForCarusel1.count))
                                    viewModel.infoForCarusel1.x = -((viewModel.infoForCarusel1.screen + 15) * viewModel.infoForCarusel1.count)
                                }
                                else{
                                    
                                    viewModel.infoForCarusel1.x = -((viewModel.infoForCarusel1.screen + 15) * viewModel.infoForCarusel1.count)
                                }
                            }
                        })
                )
        }
    }
    
    func updateHeight(value : Int){
        
        
        for i in 0..<viewModel.curuselImagesPage2.info.count{
            
            viewModel.curuselImagesPage2.info[i].largeSize = false
        }
        
        viewModel.curuselImagesPage2.info[value].largeSize = true
        viewModel.infoForCarusel1.num = value
    }
}

struct CaruselForPage2View_Previews: PreviewProvider {
    static var previews: some View {
        CaruselForPage2View(viewModel: Page2ViewModel())
    }
}
