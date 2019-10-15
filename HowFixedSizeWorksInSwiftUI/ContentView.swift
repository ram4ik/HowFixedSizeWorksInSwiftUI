//
//  ContentView.swift
//  HowFixedSizeWorksInSwiftUI
//
//  Created by ramil on 15.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var width: CGFloat = 100
    @State var horizaontal = true
    @State var vertical = false
    var body: some View {
        VStack {
            Text("This sample shows how fixedSize works")
                .fixedSize(horizontal: horizaontal, vertical: vertical)
                .border(Color.blue)
                .frame(width:width, height: 100)
                .border(Color.green)
                .font(.title)
            
            Slider(value: $width, in: 100...500)
            Toggle(isOn: $horizaontal) { Text("Horizontal") }
            Toggle(isOn: $vertical)  { Text("Vertical") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
