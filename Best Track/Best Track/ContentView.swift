//
//  ContentView.swift
//  Best Track
//
//  Created by Nono. on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
@State var images = "QuestionMark"
 var image1 = "AppleLogo1"
 var image2 = "Gamedev2"
 var image3 = "VisualStudio1"
 var image4 = "Android1"

    var body: some View {
        ZStack{
            Image("Background13")
                .resizable()
                .ignoresSafeArea()
               
            VStack{
                Text("المسار المفضل لديك")
                    .font(.largeTitle)
                    .bold()
                
                Image(images)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                Text("iOS")
                    .frame(width: 200, height: 50)
                    .font(.title)
                    .background(.teal)
                    .foregroundColor(.white)
                    .cornerRadius(35)
                    .onTapGesture {
                        images = "AppleLogo1"
                    }
                    

                Text("Gamedev")
                    .frame(width: 200, height: 50)
                    .font(.title)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(35)
                    .onTapGesture {
                        images = "Gamedev2"
                    }
                
                
                Text("Web")
                    .frame(width: 200, height: 50)
                    .font(.title)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(35)
                    .onTapGesture {
                        images = "VisualStudio1"
                    }
                
                Text("Android")
                    .frame(width: 200, height: 50)
                    .font(.title)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(35)
                    .onTapGesture {
                        images = "Android1"
                    }


            } .padding()
                .onLongPressGesture{
                    images = "QuestionMark"
                }
           
                    
                  }
             

                
            }
   
            }
            
            
            
           
            
            
            
            
            
        
        
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
