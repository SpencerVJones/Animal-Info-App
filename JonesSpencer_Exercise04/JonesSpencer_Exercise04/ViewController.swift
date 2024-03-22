//  ViewController.swift
//  JonesSpencer_Exercise04
//  Created by Spencer Jones on 3/20/24.

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet var speciesLabel: UILabel!
    @IBOutlet var populationLabel: UILabel!
    @IBOutlet var isDomesticatedLabel: UILabel!
    @IBOutlet var isEndangeredLabel: UILabel!
    @IBOutlet var canHaveAsPetLabel: UILabel!
    @IBOutlet var huntButton: UIButton!
    @IBOutlet var reproduceButton: UIButton!
    @IBOutlet var editButton: UIButton!
    
    // Object based off of Animal Class
    var animal: Animal = Animal()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }

    // Updating labels based on animal object
    func updateLabels() {
        speciesLabel.text = "Species: \(animal.species)"
        populationLabel.text = "Population: \(animal.population)"
        isDomesticatedLabel.text = "Domesticated: \(animal.isDomesticated)"
        isEndangeredLabel.text = "Endangered: \(animal.isEndangered)"
        canHaveAsPetLabel.text = "\(animal.canHaveAsPet)"
    }
    
    // Hunt button action
    @IBAction func huntButtonPressed(_ sender: Any?) {
        let message = animal.hunt()
        
        // Show an alert to show that the animal is hunting
        let alertController = UIAlertController(title: "This animal is hunting!", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    // Reproduce button action
    @IBAction func reproduceButtonPressed(_ sender: Any?) {
        let message = animal.reproduce()
        // update labels in the first view controller
        updateLabels()
        
        // Show an alert to show that the reproduce function has occured
        let alertController = UIAlertController(title: "This animal has reproduced!", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController // Set destination as SecondViewController
        
        // Pass the animal object to the Second ViewController
        secondVC.animal = animal
    }
}
