//
//  GameObject.swift
//  ShootingGame
//
//  Created by 503 on 2020/02/26.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit
//이 게임에 등장할 모든 사물의 최상위 객체 정의 '
//어떤 누구도  이 객체를 벗어날 수 없다
class GameObject: NSObject {
    var parent:UIView!
    var url:String //이미지 경로
    var img:UIImageView! //표현될 이미지
    var x:CGFloat //위치 X
    var y:CGFloat  //위치Y
    var width:CGFloat
    var height:CGFloat
    var velX:CGFloat  //x축 이동속도
    var velY:CGFloat //y 츅 이동속도
    
    init(parent:UIView,url:String, x:CGFloat, y:CGFloat, width:CGFloat, height:CGFloat, velX:CGFloat, velY:CGFloat){
        self.url = url
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.velX = velX
        self.velY = velY
        
        //이미지 처리
        self.img = UIImageView(image: UIImage(named: url))
        //위치 및 크기 설정
        self.img.frame = CGRect(x: x, y: y, width: width, height: height)
        //부모뷰에 부착하기
        parent.addSubview(img)
    }
    
    func tick(){}
    func render(){}
    
}
