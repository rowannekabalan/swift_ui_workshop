//
//  DetailedView.swift
//  GeneralSurgery
//
//  Created by Rowanne Kabalan on 19/10/2023.
//

import SwiftUI
import LoremSwiftum

struct DetailedView : View {
    
    @State var scale = 0.5
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .mint, .teal], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            VStack {
                
                Image("person1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 300)
                    .clipShape(.circle)
                    .padding()
                    .scaleEffect(scale)
                    .onAppear {
                        withAnimation {
                            scale = 1
                        }
                    }              
                Spacer()
                VStack {
                    Text(Lorem.fullName)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                        .padding(.top)
                    Text("07389238102")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                    
                    HStack(spacing: 20) {
                        Button {
                            
                        } label : {
                            Image(systemName: "message")
                                .fontWeight(.bold)
                                .foregroundColor(.teal)
                                .padding(15)
                                .background(.white)
                                .clipShape(.circle)
                            
                        }
                        Button {
                            
                        } label : {
                            Image(systemName: "phone")
                                .fontWeight(.bold)
                                .foregroundColor(.teal)
                                .padding(15)
                                .background(.white)
                                .clipShape(.circle)
                            
                        }
                        Button {
                            
                        } label : {
                            Image(systemName: "camera")
                                .fontWeight(.bold)
                                .foregroundColor(.teal)
                                .padding(15)
                                .background(.white)
                                .clipShape(.circle)
                            
                        }
                    }
                    Text(Lorem.sentences(4))
                        .fontWeight(.heavy)
                        .foregroundStyle(.teal)
                        .padding(20)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                }
                .background {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.thinMaterial)
                        .ignoresSafeArea()
                        
                }
            }
        }
    }
}


#Preview {
    DetailedView()
}
