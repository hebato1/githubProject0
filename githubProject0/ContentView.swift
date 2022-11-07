//
//  ContentView.swift
//  githubProject0
//
//  Created by Jakub N on 07/11/2022.
//

import SwiftUI

struct Box {
    var id: Int
    let title1, title2, imageURL: String
}

struct Box2 {
    var id: Int
    let title1, title2, imageURL: String
}

struct ContentView: View {
    
    let boxes:[Box] = [
        Box(id: 0, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "zd1"),
        Box(id: 1, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "zd2"),
        Box(id: 2, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "zd3"),
        Box(id: 3, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "zd4"),
        Box(id: 4, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "zd5")
    ]
    
    let boxesBigger:[Box2] = [
        Box2(id: 0, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "duze1"),
        Box2(id: 1, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "duze2"),
        Box2(id: 2, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "duze3"),
        Box2(id: 3, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "duze4"),
        Box2(id: 4, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "duze5")
    ]
    
    
    
    var body: some View {
        ZStack{
            Color(red: 81/255, green: 113/255, blue: 116/255)
                .ignoresSafeArea()
            VStack{
                VStack {
                    VStack{
                        Text("Free stories")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 30, weight: .semibold))
                        Text("Enjoy our free collection of audio stories.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14))
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(boxes, id: \.id) { box in
                                    BoxView(box: box)
                                }
                            }
                            
                        }
                    }
                    VStack{
                        Text("Top Premium Stories")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 30, weight: .semibold))
                        Text("Our best stories for premium users.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14))
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(boxesBigger, id: \.id) { box in
                                    BoxViewBig(boxBig: box)
                                }
                            }
                            
                        }
                    }
                }
                
                .padding(5)
                Spacer()
            }
        }
        
            

    }
    struct BoxView: View {
        let box: Box
        
        
        var body: some View {
                VStack{
                    Image(box.imageURL)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(12)
                    Text(box.title1)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 12, weight: .semibold))
                        .multilineTextAlignment(.leading)
                        .frame(width: 150, alignment: .leading)
                    
                    
                    
                    Text(box.title2)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 8))
                        .multilineTextAlignment(.leading)
                        .frame(width: 150, alignment: .leading)
                    
                        
            }
        }
    }
    
    
    struct BoxViewBig: View {
        let boxBig: Box2
        
        
        var body: some View {
                VStack{
                    Image(boxBig.imageURL)
                        .resizable()
                        .frame(width: 150, height: 300)
                        .cornerRadius(12)
                    Text(boxBig.title1)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 12, weight: .semibold))
                        .multilineTextAlignment(.leading)
                        .frame(width: 150, alignment: .leading)
                    
                    

                    Text(boxBig.title2)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 8))
                        .multilineTextAlignment(.leading)
                        .frame(width: 150, alignment: .leading)
                    
                        
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
