//  SecondViewController.swift
//  JonesSpencer_Exercise04
//  Created by Spencer Jones on 3/20/24.

import UIKit

class SecondViewController: UIViewController {

    // Outlets
    @IBOutlet var speciesTextField: UITextField!
    @IBOutlet var populationTextField: UITextField!
    @IBOutlet var isDomesticatedSegmentedControl: UISegmentedControl!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    
    var animal: Animal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Populate text fields with object properties from first view controller
        speciesTextField.text = animal.species
        populationTextField.text = String(animal.population)
        
        // Setting segmented control initial selection based on animal's isDomesticated property
        if animal.isDomesticated {
            isDomesticatedSegmentedControl.selectedSegmentIndex = 0 // True
        } else {
            isDomesticatedSegmentedControl.selectedSegmentIndex = 1 // False
        }
        
        // Setting keyboard type for the populationTextField
        populationTextField.keyboardType = .numberPad
    }
    

    // Save Button
    @IBAction func saveButtonTapped(_ sender: Any?) {
        // validate species
        guard let species = speciesTextField.text, !species.isEmpty
        else { // Error handling
            showAlert(message: "Species cannot be empty.")
            return
        }

        // Validate population
        guard let populationStr = populationTextField.text,
              let population = Int(populationStr), population > 0
        else { // Error handling
            showAlert(message: "Population must be a positive whole number.")
            return
        }
        
        
        // Get isDomesticated value from the segmented control
        let isDomesticated: Bool
            if isDomesticatedSegmentedControl.selectedSegmentIndex == 0 {
                isDomesticated = true
            } else {
                isDomesticated = false
            }
        
        // Pass data back to ViewController
        let firstVC = presentingViewController as! ViewController
        firstVC.animal.species = species
        firstVC.animal.population = population
        firstVC.animal.isDomesticated = isDomesticated
        
        // Update labels in first view controller
        firstVC.updateLabels()
        
        // Dismiss the view controller to return to the previous view controller
        dismiss(animated: true, completion: nil)
    }
    
    
    // Cancel button
    @IBAction func cancelButton(_ sender: Any?) {
        
        let firstVC = presentingViewController as! ViewController
        
        // Pass data back to ViewController as the state it previously was so that population remains the same if reproduce button was used
        firstVC.animal.population = animal.population

        // Update labels in first view controller
        firstVC.updateLabels()
        
        // Dismiss the view controller to return to the previous view controller
        dismiss(animated: true, completion: nil)
    }
    
    // Helper method to display an alert
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
    }
}
