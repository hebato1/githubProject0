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

struct ContentView: View {
    
    let boxes:[Box] = [
        Box(id: 0, title1: "An unknown journey", title2: "Story about him and her.", imageURL: "zd1"),
        Box(id: 1, title1: "Photo2", title2: "aaaa", imageURL: "zd2"),
        Box(id: 2, title1: "Photo3", title2: "aaaa", imageURL: "zd3"),
        Box(id: 3, title1: "Photo4", title2: "aaaa", imageURL: "zd4"),
        Box(id: 4, title1: "Photo5", title2: "aaaa", imageURL: "zd5")
    ]
    
    var body: some View {
        ZStack{
            Color(red: 81/255, green: 113/255, blue: 116/255)
                .ignoresSafeArea()
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
                Spacer()
            }
            .padding(5)
         
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
