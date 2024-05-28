//
//  ContentView.swift
//  GeneralSurgery
//
//  Created by Rowanne Kabalan on 19/10/2023.
//

import SwiftUI
import LoremSwiftum

struct ContentView: View {
    var body: some View {
            NavigationStack {
                List {
                    ForEach(1..<6) { number in
                            NavigationLink {
                                DetailedView()
                            } label: {
                            HStack(alignment: .top) {
                                Image("person\(number)")
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: 70, height: 70)
                                    .clipShape(.circle)
                                    .padding(.trailing)
                                
                
                                VStack(alignment: .leading) {
                                    HStack { Text(Lorem.fullName)
                                            .fontWeight(.bold)
                                        Spacer()
                                        Image(systemName: "heart")
                                        
                                    }
                                    Text(Lorem.words(3))
                                        .fontWeight(.ultraLight)
                                    
                                    
                                    HStack {
                                        Image(systemName: "message")
                                            .foregroundColor(.teal)
                                        Spacer()
                                        Divider().padding(.horizontal)
                                        Spacer()
                                        Image(systemName: "phone")
                                            .foregroundColor(.green)
                                        Spacer()
                                        Divider().padding(.horizontal)
                                        Spacer()
                                        Image(systemName: "camera")
                                            .foregroundColor(.purple)
                                    }
                        
                                    .padding(10)
                                }
                            }
                        }
                        .padding(10)
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowSpacing(30)
                    .background(RoundedRectangle(cornerRadius: 25.0).fill(.white.shadow(.drop(color: .gray, radius: 5))))

                }
                .listStyle(.plain)
                .navigationTitle("Consultants")
                .navigationBarTitleDisplayMode(.inline)
                .background {
                    LinearGradient(colors: [.white, .mint, .teal], startPoint: .topLeading, endPoint: .bottomLeading)
                        .ignoresSafeArea()
                }
        }
            .tint(.teal)
        }
    }


#Preview {
    ContentView()
}
