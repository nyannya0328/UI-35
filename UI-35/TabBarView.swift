//
//  TabBarView.swift
//  UI-35
//
//  Created by にゃんにゃん丸 on 2020/11/18.
//

import SwiftUI

struct TabBarView: View {
    
    @State var current = 2
    @Namespace var animation
    @State var expand = false
    
    var body: some View {
        
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection:$current){
                
                Text("Library")
                
                    .tag(0)
                
                    .tabItem {
                        
                        Image(systemName: "rectangle.stack.fill")
                        
                        Text("Library")
                        
                    }
                Text("Radio")
                
                    .tag(1)
                
                    .tabItem {
                        
                        Image(systemName: "dot.radiowaves.left.and.right")
                        
                        Text("Radio")
                        
                    }
                
               SeachView()
                
                    .tag(2)
                
                    .tabItem {
                        
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                        
                    }
                
             
                
                
                
                
                
                
            }
            
            MiniPlayer(animation: animation, expand: $expand)
            
           
                
            
            
            
        })
        
        
    }
}


