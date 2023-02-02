//
//  ContentView.swift
//  Memorize
//
//  Created by 박인혁 on 2022/11/16.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🍎","🍐","🍊","🍌","🍉","🍓","🫐","🍇","🍑","🧄","🌽","🍆","🥑","🥦","🧅","🫑","🍔","🌭","🧇","🥩","🍗","🍕"]
    
    @State var emojiCount = 3
    
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
            Spacer()
            HStack{
                remove
                Spacer()
                shuffle
                Spacer()
                add
                
                
            }
            .padding(.horizontal)
            .font(.largeTitle)
            
        }
        .padding(.all)
        
    }
    var remove: some View{
        Button{
            if emojiCount > 1{
                emojiCount-=1}
        }
    label:{
        Image(systemName: "minus.circle")
    }
        
    }
    var add: some View{
        Button{
            if emojiCount<emojis.count{
                emojiCount += 1}
            
        } label:{
            Image(systemName: "plus.circle")
              
        }
        
        
    }
    var shuffle: some View{
        Button{
            
        }label: {
            Text("shuffle")
        }
    }
    var clear: some View{
        Button{
            
        }label: {
            VStack{
                Text("clear")
                Text("card")
            }
        }
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
    

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View  {
       
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
        
    }
}
