//
//  TableViewController.swift
//  tableViewActorFilms
//
//  Created by Yernar Dyussenbekov on 20.09.2024.
//

import UIKit



class TableViewController: UITableViewController {
    
    var arrayActors = [
        Actor(name: "Кевин", surname: "Харт", actorsCountry: "USA", image: "Hart.png", filmImage:"Джуманджи.jpg", filmName:"Джуманджи:\nЗов Джунглей", filmRaiting:6.4,filmGenre:"приключения, комедия, фэнтезия", filmDate: 2017),
        Actor(name: "Леонардо", surname: "Ди Каприо", actorsCountry: "США", image: "DiCaprio.png", filmImage:"Выживший.jpg", filmName:"Выживший",filmRaiting:7.5,filmGenre:"вестерн, драма, приключения", filmDate: 2015),
        Actor(name: "Роберт", surname: "Дауни-мл.", actorsCountry: "США", image: "Dauney jr.png",filmImage:"Мстители.jpg",filmName:"Мстители",filmRaiting:7.7,filmGenre:"фантастика, боевик, приключения", filmDate: 2012 ),
        Actor(name: "Киану", surname: "Ривз", actorsCountry: "США", image: "Rivz.png",filmImage:"Матрица.jpg",filmName:"Матрица",filmRaiting:8.2,filmGenre:"боевик, фантастика", filmDate: 1999),
        Actor(name: "Тимоте", surname: "Шаламе", actorsCountry: "США", image: "Shalame.png",filmImage:"Дюна.jpg", filmName:"Дюна",filmRaiting:7.8, filmGenre:"фантастика, приключения", filmDate: 2021),
        Actor(name: "Зендая", surname: "", actorsCountry: "США", image: "Zendaya.png", filmImage:"Эйфория.jpg",filmName:"Эйфория ", filmRaiting:8.3, filmGenre:"драма", filmDate: 2029),
        Actor(name: "Том", surname: "Холланд", actorsCountry: "США", image: "Holland.png",filmImage:"Анчартед.jpg", filmName:"Анчартед:\nНа картах не значится", filmRaiting:6.9, filmGenre:"боевик, приключения", filmDate: 2022),
        Actor(name: "Дженнифер", surname: "Лоуренс", actorsCountry: "США", image: "Lourens.png", filmImage:"Голодные игры.jpg", filmName:"Голодные игры",filmRaiting:7.2,filmGenre:"фантастика, приключения, фэнтези", filmDate: 2012)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayActors.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var ActorsListCell = ""
        if indexPath.row % 2 == 0 {
             ActorsListCell = "ActorsListCell1"
        } else {
             ActorsListCell = "ActorsListCell2"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ActorsListCell, for: indexPath)
        // Configure the cell...
        let actorNameLabel = cell.viewWithTag(1000) as! UILabel
        let actorSurnameLabel = cell.viewWithTag(1001) as! UILabel
        let actorCountryLabel = cell.viewWithTag(1002) as! UILabel
        let actorImage = cell.viewWithTag(1003) as! UIImageView
        
        actorNameLabel.text = arrayActors[indexPath.row].name
        actorSurnameLabel.text = arrayActors[indexPath.row].surname
        actorCountryLabel.text = arrayActors[indexPath.row].actorsCountry
        actorImage.image = UIImage(named: arrayActors[indexPath.row].image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let actorsFilmVC = storyboard?.instantiateViewController(identifier: "ActorsFilmViewController") as! ViewController
        
        actorsFilmVC.actor = arrayActors[indexPath.row]
        navigationController?.show(actorsFilmVC, sender: self)
    }
    
    
    @IBAction func add(_ sender: Any) {
        arrayActors.append(Actor(name: "Actor", surname: "Actorson", actorsCountry: "USA", image: "actoravatar.jpeg", filmImage:"avatar.jpeg", filmName:"Film about film",filmRaiting:10, filmGenre:"fantastic", filmDate: 2025))
        tableView.reloadData()
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayActors.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
