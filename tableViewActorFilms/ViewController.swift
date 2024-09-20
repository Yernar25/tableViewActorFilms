//
//  ViewController.swift
//  tableViewActorFilms
//
//  Created by Yernar Dyussenbekov on 20.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var filmNameLabel: UILabel!
    
    @IBOutlet weak var filmRatingLabel: UILabel!
    
    @IBOutlet weak var filmGenre: UILabel!
    
    @IBOutlet weak var filmDateLabel: UILabel!
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    var actor = Actor()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmNameLabel.text = actor.filmName
        filmRatingLabel.text = String(actor.filmRaiting)
        filmGenre.text = actor.filmGenre
        filmDateLabel.text = String(actor.filmDate)
        filmImageView.image = UIImage(named: actor.filmImage)
        
        
        // Do any additional setup after loading the view.
    }


}

