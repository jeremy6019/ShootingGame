//
//  Enemy.swift
//  ShootingGame
//
//  Created by 503 on 2020/02/26.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class Enemy: GameObject {
    //물리랑 변화
    override func tick(){
        x += x + velX
        y += y + velY
    }
    //그래픽 처리
    override func render(){
        img.frame.origin.x = x
        img.frame.origin.y = y
       
    }
}
