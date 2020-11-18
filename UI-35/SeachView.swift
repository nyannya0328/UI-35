//
//  SeachView.swift
//  UI-35
//
//  Created by にゃんにゃん丸 on 2020/11/18.
//

import SwiftUI

struct SeachView: View {
    @State var search = ""
    var columns = Array(repeating:GridItem(.flexible(),spacing:15),count:2)
    var body: some View {
        
       
        ScrollView{
            
            VStack(spacing:15){
                
                HStack{
                    Text("search")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    
                    Spacer(minLength: 0)
                    
                    
                }
                
                HStack(spacing:15){
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    TextField("search", text: $search)
                    
                    
                }
                .padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                
                LazyVGrid(columns:columns,spacing:20){
                    
                    ForEach(1...10,id:\.self){index in
                        
                        Image("p\(index)")
                            .resizable()
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                        
                        
                    }
                    
                    
                    
                }
                .padding(.top,10)
                
            
                
            }
            .padding()
            .padding(.bottom,80)
        }
            
        
       
    }
}


