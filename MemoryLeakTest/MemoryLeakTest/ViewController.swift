//
//  ViewController.swift
//  MemoryLeakTest
//
//  Created by John Leonard on 4/2/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let person = Person(name: "bob")
    person.performAction()
  } // viewDidLoad()

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  } // didReceiveMemoryWarning()


} // ViewController

