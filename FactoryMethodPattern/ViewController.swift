//
//  ViewController.swift
//  FactoryMethodPattern
//
//  Created by rayeon lee on 2020/12/09.
//  Copyright © 2020 ryl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        let bakery = ParisBaguette()
        var bread : Bread
        bread = bakery.createBread(type: "Apple Pie")
        bread.bake()
        
        bread = bakery.createBread(type: "croissant")
        bread.bake()
        
        bread = bakery.createBread(type: "Donuts")
        bread.bake()
    
    }
}

