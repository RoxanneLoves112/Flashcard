//
//  ViewController.swift
//  FlashCards
//
//  Created by Roxanne Zhang on 9/23/19.
//  Copyright © 2019 Roxanne Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let deck = Deck()
  var flashcard: Flashcard?
  
  @IBOutlet weak var commandLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
//    if let flashcard = deck.drawRandomCard() {
//      self.flashcard = flashcard
//      commandLabel?.text = flashcard.command
//    }
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    if let flashcard = deck.drawRandomCard() {
      self.flashcard = flashcard
      commandLabel?.text = flashcard.command
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDefinition" {
      let showDefinition:DefinitionViewController = segue.destination as! DefinitionViewController
      showDefinition.flashcard = self.flashcard
    }
  }
}

