//
//  Home.swift
//  UI-436
//
//  Created by nyannyan0328 on 2022/01/25.
//

import SwiftUI

struct Home: View {
    
    @State var columns = Array(repeating: GridItem(.flexible(),spacing: 10), count: 1)
    
    var width = (UIScreen.main.bounds.width - 45) / 2
    var body: some View {
        NavigationView{
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                LazyVGrid(columns: columns, spacing: 10) {
                    
                    
                    
                    ForEach(albumns){album in
                        
                        
                        CustomViewBuilder(columns: $columns) {
                            
                            
                            Image(album.cover)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: columns.count == 1 ? 65 : width, height: columns.count == 1 ? 70 : width)
                                .cornerRadius(10)
                            
                        } detail: {
                            
                            VStack(alignment: .leading, spacing: 15) {
                                
                                
                                Text(album.name)
                                    .font(.title.weight(.bold))
                                
                                
                                Text(album.author)
                                    .font(.title.weight(.bold))
                                
                            }
                            
                            
                            
                            
                            
                        }

                        
                        
                    }
                    
                    
                }
                
            }
            .navigationBarTitle("Custom View Builder")
            .toolbar {
                
                
                ToolbarItem{
                    
                    
                    Button {
                        
                        
                        if columns.count == 2 {
                            
                            
                            columns.removeLast()
                            
                            
                        }
                        else{
                            
                            columns.append(GridItem(.flexible(),spacing: 15))
                        }
                        
                    } label: {
                        
                        
                        Image(systemName : columns.count == 1 ?  "rectangle.3.offgrid" : "rectangle.grid.1x2")
                            .foregroundColor(.black)
                    }

                    
                    
                }
                
            }
            
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
