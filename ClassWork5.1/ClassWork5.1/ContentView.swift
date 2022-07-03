//
//  ContentView.swift
//  ClassWork5.1
//
//  Created by APPLE on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    var emoji = ["🙂" , "🙃" , "☺️" , "😜" , "😒", "😜" , "🥳"]
    @State var mymood = ""
    var body: some View {
        VStack{
            
            Text("اختر الايموجي الذي سيعبر عنك اليوم ")
                .padding()
                .font(.system(size: 25))
            Text("\(mymood)")
                .padding()
                .font(.system(size: 80))
            
            ScrollView(.horizontal){
                HStack{
                    ForEach (emoji , id: \.self ) {
                        counter in Text(counter)
                            .padding()
                            .font(.system(size: 40))
                            .background(Color.orange)
                            .clipShape(Circle())
                            .onTapGesture {
                                mymood = ("\(counter)")
                            }
                   
                    }
                }
                
                
            }
            
        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
