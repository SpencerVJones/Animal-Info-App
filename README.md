# Animal Information App
  <div align="left">
	
![Repo Views](https://visitor-badge.laobi.icu/badge?page_id=SpencerVJones/Animal-Info-App)
</div>
This iOS app allows users to view information about different animals and edit their properties. The app consists of two view controllers: one for displaying animal information and another for editing the properties of the selected animal.

## Features:
- Display information about the selected animal, including its species, population, domestication status, and endangerment status.
- Buttons to perform actions like hunting and reproduction for the selected animal.
- Edit button to modify the properties of the selected animal.
- Input fields for editing the properties such as species, population, and domestication status.
- Save button to save changes made to the properties of the animal.
- Error handling for invalid or incomplete data input.

## Custom Class (Animal):
The project includes a custom class called `Animal` with the following features:
- Stored properties: species (String), population (Int), isDomesticated (Bool)
- Computed properties: isEndangered (Bool), canHaveAsPet (String)
- Instance methods: reproduce(), hunt()
- Initializers: default initializer and custom initializer to set all properties

## File Structure:
- `Animal.swift`: Contains the `Animal` class definition.
- `ViewController.swift`: First view controller displaying animal information and handling user actions.
- `SecondViewController.swift`: Second view controller for editing animal properties.
- `Main.storyboard`: Interface Builder file for designing the app's user interface.


## View Controllers:
### ViewController:
The main view controller displays information about the animal species and allows users to interact with them:
- Shows details such as species, population, and domestication status.
- Provides buttons to trigger actions like hunting and reproduction.
- Allows navigation to the second view controller for editing.

### SecondViewController:
This view controller enables users to edit the details of the animal species:
- Allows modification of species name, population size, and domestication status.
- Validates user input and updates the data accordingly.
- Supports cancellation of changes and returns to the main view controller.


## Usage:
### To use the app:
1. Clone the repository to your local machine.
2. Open the project in Xcode.
3. Build and run the app on a simulator or physical device.
4. View and interact with animal species information in the main view.
5. Navigate to the editing view to modify species details.
6. Save changes or cancel to return to the main view.

## Technologies Used:
- **Swift:** The primary programming language used for iOS app development.
- **UIKit framework:** Provides the essential infrastructure for constructing and managing iOS apps' user interface.
- **IDE:** XCode

## Contributing:
Contributions are welcome! 

### You can contribute by:
-  Reporting bugs
-  Suggesting new features
-  Submitting pull requests to improve the codebase
