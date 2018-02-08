//
//  ViewController.swift
//  nano3
//
//  Created by Rafael Zabotini on 07/02/18.
//  Copyright © 2018 Rafael Zabotini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var taskListButton: UIButton!
    
    func buttonSizeCalculator() -> CGFloat {
        //TODO: - calcular a altura do botão para que seja relativa a relação TarefasRegistradas/TarefasAFazer
        return view.frame.size.height/2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //TODO: Chamar a função buttonSizeCalculator() quando pronta
    }
}

