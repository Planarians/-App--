//
//  File.swift
//  Quizzler
//
//  Created by 小石头 on 2020/10/23.
//  Copyright © 2020 rongcosme. All rights reserved.
//

import Foundation


class Question{
    
    let answer : Bool
    let questionText: String
    
    init(text:String,correctAnswer:Bool){
        questionText = text
        answer = correctAnswer
    }
    
}

//初始化类
//Question(text: "量角器是笨蛋", correctAnswer: true)


