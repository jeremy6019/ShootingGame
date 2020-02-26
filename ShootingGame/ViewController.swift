//
//  ViewController.swift
//  ShootingGame
//
//  Created by 503 on 2020/02/26.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hero:Hero!
    //게임에 등장할 모든 오브잭트는 게임루프에 의해
    //tick(),render()가 호출되어야 하므로
    //하나의 배열에 담아놓자
    var objectArray:Array = Array<GameObject>()
    
   
       
    @IBAction func btnClick1(_ sender: Any) {
        hero.velX = -1
    }
       
    @IBAction func btnClick2(_ sender: Any) {
        hero.velX = 1
    }
    @IBAction func btnClick3(_ sender: Any) {
        fire()
    }
       
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createHero()
        createEnemy()
        
        //GameLoop동작시작
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(gameLoop), userInfo: nil, repeats: true)
        
    }
    //주인공생성 메서드 추가
    func createHero(){
        
        hero = Hero(parent: self.view, url: "hero.png", x: 50, y: 750, width: 60, height: 60, velX: 0, velY: 0)
        
        //전체배열에 주인공도 담자
        objectArray.append(hero)
    }
    
    //적군 등장
    func createEnemy(){
        
        
    }
    //Bullet클래스로부터 인스턴스 생성하여 날리자
    func fire(){
        let bullet = Bullet(parent: self.view, url: "ball.png", x: hero.x, y: hero.y, width: 20, height: 20, velX: 0, velY: -10)
        //애도 게임루프에 이해 tick() render()가 호출되어야하믈오 배열애 담는다
        objectArray.append(bullet)
    }
    //모든 오브잭트의 tick(), render()호출!!
  @objc func gameLoop(){
        //개임류프는 객체의 종류에관심없고 무조건
    //전체배ㅑ열에 담겨진 객체들이 보유한 tick(), render()
    //를 호출하면 된다
    //단 배열애ㅔ 담을때 /GameObject로 담아/ㅅ으므로
    //GameObject클래스는 tick, render가 명시되어ㅗ잇/어야 한다
        for obj in objectArray {
            obj.tick()
            obj.render()
        }
   }

}
   


