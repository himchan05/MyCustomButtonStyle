//
//  ButtonStyle.swift
//  MyButtonStyle
//
//  Created by 박힘찬 on 2022/03/14.
//

import SwiftUI

enum ButtonType {
    case tap, long, reduce, rotate, blur
}
// MARK: Button Style
struct MyButtonStyle: ButtonStyle {
    var type: ButtonType = .tap
    
    func makeBody(configuration: Configuration) -> some View {
        
        if self.type == .tap || self.type == .long {
            configuration
                .label
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color.white)
                .padding()
                .cornerRadius(10)
                .background(Color.red)
                .onTapGesture {
                    if self.type == .tap {
                        let haptic = UIImpactFeedbackGenerator(style: .light)
                        haptic.impactOccurred()
                    }
                }
                .onLongPressGesture() {
                    if self.type == .long {
                        let haptic = UIImpactFeedbackGenerator(style: .heavy)
                        haptic.impactOccurred()
                    }
                }
        }
        
        if self.type == .reduce {
            configuration
                .label
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color.white)
                .padding()
                .cornerRadius(10)
                .background(Color.orange)
                .scaleEffect(configuration.isPressed ? 0.75 : 1.0)
        }
        
        if self.type == .rotate {
            configuration
                .label
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color.white)
                .padding()
                .cornerRadius(10)
                .background(Color.yellow)
                .rotationEffect(configuration.isPressed ? .degrees(180) : .degrees(0))
        }
        
        if self.type == .blur {
            configuration
                .label
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color.white)
                .padding()
                .cornerRadius(10)
                .background(Color.green)
                .blur(radius: configuration.isPressed ? 10 : 0)
        }
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {print("버튼 클릭")}) {
            Text("킹콩")
        }
        .buttonStyle(MyButtonStyle())
    }
}
