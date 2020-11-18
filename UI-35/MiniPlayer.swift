//
//  MiniPlayer.swift
//  UI-35
//
//  Created by にゃんにゃん丸 on 2020/11/18.
//

import SwiftUI

struct MiniPlayer: View {
    var animation : Namespace.ID
    @Binding var expand : Bool
    
    var height = UIScreen.main.bounds.height / 3
    
    var safearea = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var volum :CGFloat = 0
    
    @State var offset :CGFloat = 0
    
    var body: some View {
        VStack{
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ?  4 : 0)
                .opacity(expand ?  1 : 0)
                .padding(.top,expand ? safearea?.top : 0)
                .padding(.vertical,expand ?  30 : 0)
            
                
            
            
            HStack(spacing:15){
                
                if expand{Spacer(minLength: 0)}
                
                
                Image("f12")
                    .resizable()
                    .frame(width:expand ? height :  55,height: expand ? height : 55)
                    .cornerRadius(10)
                    
                
                if !expand{
                    
                    
                    Text("Girl")
                        .font(.title2)
                        .bold()
                    
                }
                
                
                
                
                
                
              
                
                
                Spacer(minLength: 0)
                
                if !expand{
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .matchedGeometryEffect(id: "label", in: animation)
                        
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                        
                    })
                    
                    
                }
                
                
               
                
                
                
                
            }
            .padding(.horizontal)
            
            VStack{
                Spacer(minLength: 0)
                
                HStack{
                    
                    if expand{
                        
                        Text("Smile")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.heavy)
                            .matchedGeometryEffect(id: "label", in: animation)
                        
                    }
                    Spacer(minLength: 0)
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                        
                    })
                    
                  
                    
                    
                    
                }
                .padding()
                .padding(.top,20)
                
                HStack{
                    
                    
                    Capsule()
                        .fill(LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.7),Color.primary.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                        
                        ).frame(height: 4)
                    
                    Text("live")
                        .bold()
                        .foregroundColor(.primary)
                    
                    
                    Capsule()
                        .fill(LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.7),Color.primary.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                        
                        ).frame(height: 4)
                    
                    
                }
                .padding()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "stop.fill")
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                })
                .padding()
                Spacer(minLength: 0)
                
                HStack(spacing:20){
                    
             
                        Image(systemName: "speaker.fill")
                        
                    
                    
                    Slider(value: $volum)
                    
                    Image(systemName: "speaker.wave.2.fill")
                    
                    
                }
                .padding()
                
                HStack{
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "arrow.up.message")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    
                }
                .padding(.bottom,safearea?.bottom == 0 ? 15 : safearea?.bottom)
                
                
                
                
                
                
                
                
                
                
                
            }
            
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            
            .opacity(expand ? 1 : 0)
            
          
            
            
        }
        .frame(maxHeight:expand ? .infinity : 80)
        .background(
            VStack(spacing:0){
                BlurView()
                Divider()
                
                
                
            }
            
            .onTapGesture(perform: {
                withAnimation(.spring()){expand = true}
            })
        
        )
        
        .cornerRadius(expand ? 20 : 0)
        .offset(y:expand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
        .ignoresSafeArea()
        
       
       
    }
    
    func onChanged(value:DragGesture.Value){
        
        if value.translation.height > 0 && expand{
            
            offset = value.translation.height
            
            
        }
        
        
        
        
    }
    
    func onEnded(value:DragGesture.Value){
        
        
        if value.translation.height > height{
            
            expand = false
            
            
        }
        
        
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.95)){
            
            
            offset = 0
        }
        
        
        
        
        
    }
    
}


