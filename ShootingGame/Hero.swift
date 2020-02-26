//
//  Hero.swift
//  ShootingGame
//
//  Created by 503 on 2020/02/26.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class Hero: GameObject {
    //생성자는 자바와 달리 스위프트는 생성자를 상속받는다
    //init메서드는 내가 현재 가지고 있다
    // 이클래스에서 추가할 메서드만 작성하자
    
    //물리랑 변화
    override func tick(){
        x = x + velX
    }
    //그래픽 처리
    override func render(){
        img.frame.origin.x = x 
    }
}
