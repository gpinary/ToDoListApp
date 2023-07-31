//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Gökçe Pınar Yıldız on 31.07.2023.
//

import UIKit

class MainPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func detailButton(_ sender: Any) {
        let todo = Todo(todo_id: 1, todo_name: "Buy some clothes")
        performSegue(withIdentifier: "toUpdate", sender: todo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toUpdate" {
            //Any--> super class
            //Todo --> sub class
            // Downcasting super --> sub
            if let todo = sender as? Todo { //Soru isareti varsa kisi yi nil yapıyor
                let toVC = segue.destination as? UpdateToDo//Downcasting
                toVC?.todo = todo
            }
        }
    }
    
}


