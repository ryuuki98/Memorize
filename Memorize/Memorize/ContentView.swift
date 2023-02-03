//
//  ContentView.swift
//  Memorize
//
//  Created by 박인혁 on 2022/11/16.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🍎","🍐","🍊","🍌","🍉","🍓","🫐","🍇","🍑","🧄","🌽","🍆","🥑","🥦","🧅","🫑","🍔","🌭","🧇","🥩","🍗","🍕"]
    
    @State var emojiCount = 20
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 67))]){
                    ForEach (emojis[0..<emojiCount], id: \.self){emoji in
                        CardView(content: emoji).aspectRatio(2/3,contentMode:.fit)
                    }
                }
                
            }
            .foregroundColor(.red)
           
            .padding(.horizontal)
            .font(.largeTitle)
            
        }
        .padding(.all)
        
    }
    
}


struct CardView: View{
    @State var isFaceUP:Bool = false
    var content: String
    
    var body: some View{
        
        ZStack{
            let shape = RoundedRectangle(cornerRadius:25)
            
            if isFaceUP{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth:3)
                Text(content)
                    .font(.largeTitle)
            }else{
                shape.fill()
            }
            
        }
        .onTapGesture {
            isFaceUP = !isFaceUP
        }
    }
}
/*
func multiply(operate : Int , by : Int) -> Int{
       return operate * by
}

multiply(operate: 5, by: 6)
*/
































struct ContentView_Previews: PreviewProvider {
    static var previews: some View  {
       
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
        
    }
}
