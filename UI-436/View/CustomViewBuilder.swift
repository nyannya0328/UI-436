//
//  CustomViewBuilder.swift
//  UI-436
//
//  Created by nyannyan0328 on 2022/01/25.
//

import SwiftUI

struct CustomViewBuilder<Content : View,Detail : View>: View {
    
    var content : Content
    var detail : Detail
    
    @Binding var coloumns : [GridItem]
    
    
    init(columns : Binding<[GridItem]>, @ViewBuilder content : @escaping()->Content,@ViewBuilder detail : @escaping()->Detail) {
        
        self.content = content()
        self.detail = detail()
        self._coloumns = columns
        
    
    }
    var body: some View {
       
        
        if coloumns.count == 1{
            
            HStack{
                
                content
                
                detail
            }
            .frame(maxWidth:.infinity,alignment:.leading)
            .padding(.horizontal)
            
        }
        else{
            
            VStack{
                
                content
                
                detail
                
                
                
            }
            .padding()
            
            
        }
    }
}


