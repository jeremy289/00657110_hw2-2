//
//  SecondView.swift
//  00657110_hw2
//
//  Created by User04 on 2020/4/8.
//  Copyright © 2020 110. All rights reserved.
//

import SwiftUI

struct SecondView: View {
//    let image = UIImage(named: "\(self.arrays[item])")!
    @State var arrays  = ["狠愛演1","狠愛演2","狠愛演3","狠愛演4","狠愛演5","狠愛演6","狠愛演7","狠愛演8","狠愛演9"]
   var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack {
                    ForEach(arrays.indices){(item) in
                        
                        Image(self.arrays[item])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100)
                        .clipShape(Circle())
                        .clipped()
                    }
                    
                   
                }
                .frame(height: 100)
                .padding(.horizontal, 20)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
