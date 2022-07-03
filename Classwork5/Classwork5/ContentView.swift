//
//  ContentView.swift
//  Classwork5
//
//  Created by APPLE on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var result = 0.0
    @State var status = ""
    var body: some View {
      
        
        VStack{
           
            Image("BIN")
                .resizable()
                .frame(width: 200, height: 220)
            Text("ادخل الطول والوزن")
                
            .padding()
            
            TextField("ادخل الطول",text: $height)
                .multilineTextAlignment(.trailing)
                .background()
                .font(.system(size: 30))
                .background()
                .padding()
            
            TextField("ادخل الوزن",text: $weight)
                .multilineTextAlignment(.trailing)
                .font(.system(size: 30))
                .background()
                .padding()
            
            Text("احسب")
                .font(.system(size: 35))
                .frame(width: 150, height: 50)
                .background(Color.gray)
                .clipShape(Capsule())
                .onTapGesture {
                    result = calc(Calcweight: weight, Calcheight: height)
                    status = TheState(result: result)
                }
            Text(String(format: "%.2f", result))
                .font(.system(size: 20))
            Text("الحالة هي :  \(status)")
                .font(.system(size: 20))
           
           
        }
       
        }
    func calc (Calcweight : String , Calcheight : String) -> Double{
     return  (Double(Calcweight) ?? 0.0) / ((Double(Calcheight) ?? 0.0) * (Double(Calcheight) ?? 0.0))
    }
    func TheState (result : Double) -> String {
        if result <= 20 {
           return "ضعيف"
        }
        else if result <= 25 {
            return "جيد"
         }
         else {
           return "سمين"
     }
    }
                                             
                                           
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//result = calc(Calcweight: weight, Calcheight: height)
//status = TheState(result: result)


  
