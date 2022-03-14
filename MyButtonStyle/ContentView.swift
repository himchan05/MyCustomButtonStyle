//
//  ContentView.swift
//  MyButtonStyle
//
//  Created by 박힘찬 on 2022/03/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {print("a")}) {
                Text("탭 햅틱")
            }
            .buttonStyle(MyButtonStyle(type: .tap))
            
            Button(action: {print("a")}) {
                Text("롱 햅틱")
            }
            .buttonStyle(MyButtonStyle(type: .long))
            
            Button(action: {print("a")}) {
                Text("축소 버튼")
            }
            .buttonStyle(MyButtonStyle(type: .reduce))
            Button(action: {print("a")}) {
                Text("회전 버튼")
            }
            .buttonStyle(MyButtonStyle(type: .rotate))
            Button(action: {print("a")}) {
                Text("모자이크 버튼")
            }
            .buttonStyle(MyButtonStyle(type: .blur))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
