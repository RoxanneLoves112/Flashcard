//
//  DefinitionViewController.swift
//  FlashCards
//
//  Created by Roxanne Zhang on 9/25/19.
//  Copyright © 2019 Roxanne Zhang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
    @IBOutlet weak var commandLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    var flashcard: Flashcard?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard {
          commandLabel?.text = card.command
          definitionLabel?.text = card.definition
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
