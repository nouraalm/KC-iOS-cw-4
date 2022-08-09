//
//  ContentView.swift
//  CW4
//
//  Created by Noura. on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var FinalGrade = ""
    @State var Gradedes = ""
    var body: some View {
        
        ZStack{
            Color.cyan
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack{
                Text("حاسبة الدرجات")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    Spacer()
                
                Image("Calculator0")
                    .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .shadow(radius: 20)
                .padding()
                
                TextField("Enter your grade", text: $FinalGrade)
                    .textFieldStyle(.roundedBorder)
                    .background(.white)
                
                Text("احسب درجتي")
                    .frame(width: 200, height: 50)
                    .background(.yellow)
                    .cornerRadius(50)
                    .onTapGesture {
                        if (Double(FinalGrade) ?? 0) >= 90
                        {
                            Gradedes = "امتياز"
                        }
                        else if (Double(FinalGrade) ?? 0) >= 80
                        {
                           Gradedes = "جيد جداً"
                        }
                        else if (Double(FinalGrade) ?? 0) >= 70
                        {
                            Gradedes = "جيّد"
                        }
                        else if (Double(FinalGrade) ?? 0) >= 60
                        {
                            Gradedes = "مقبول"
                        }
                        else
                        {
                            Gradedes = "راسب"
                        }
                             
                    }
                
                Text("لقد حصلت على درجة")
                    .font(.title)
                Spacer()
                Text(Gradedes)
                    .font(.largeTitle)
                Spacer()

                
                
                
                
            } .padding()
            
        }
        
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
            
    }
}
