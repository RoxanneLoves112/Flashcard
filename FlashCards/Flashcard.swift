//
//  Flashcard.swift
//  FlashCards
//
//  Created by Roxanne Zhang on 9/23/19.
//  Copyright © 2019 Roxanne Zhang. All rights reserved.
//

import Foundation

struct Flashcard {
  public var command : String = ""
  public var definition: String = ""
  
  init(_ command: String, _ definition: String) {
    self.command = command
    self.definition = definition
  }
}
