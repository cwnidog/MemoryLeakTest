//
//  Person.swift
//  MemoryLeakTest
//
//  Created by John Leonard on 4/2/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

import Foundation

class Person {
  
  let name: String
  private let actionClosure: (() -> ())!
  
  init(name: String) {
    self.name = name
    
    // use of unowned self prevents the retain cycle
    actionClosure = {
      [unowned self] () -> () in
      println("I am \(self.name)")
    } // actionClosure
  } // init()
  
  func performAction() {
    actionClosure()
  } // performAction()
  
  deinit {
    println("\(name) is being deinitialized")
  }
  
} // Person