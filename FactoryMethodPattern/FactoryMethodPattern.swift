//
//  FactoryMethodPattern.swift
//  FactoryMethodPattern
//
//  Created by rayeon lee on 2020/12/09.
//  Copyright © 2020 ryl. All rights reserved.
//

import Foundation

protocol Bakery{
    
    func createBread(type:String)-> Bread
}

class ParisBaguette : Bakery {
    
    func createBread(type: String) -> Bread {
        if type == "apple pie" {
            return ApplePie()
        }else if type == "croissant"{
            return Croissant()
        }else {
            return Donuts()
        }
    }
}

protocol Bread {
    
    func bake()
}

class ApplePie : Bread {
    func bake(){
        print("Apple Pie 굽기")
    }
}

class Croissant : Bread{
    func bake() {
        print("Croissant 굽기")
    }
}

class Donuts : Bread{
    func bake() {
        print("Donuts 굽기")
    }
}
