# Animal Information App

This iOS app allows users to view information about different animals and edit their properties. The app consists of two view controllers: one for displaying animal information and another for editing the properties of the selected animal.

## Features

- Display information about the selected animal, including its species, population, domestication status, and endangerment status.
- Buttons to perform actions like hunting and reproduction for the selected animal.
- Edit button to modify the properties of the selected animal.
- Input fields for editing the properties such as species, population, and domestication status.
- Save button to save changes made to the properties of the animal.
- Error handling for invalid or incomplete data input.

## Custom Class (Animal)

The project includes a custom class called `Animal` with the following features:
- Stored properties: species (String), population (Int), isDomesticated (Bool)
- Computed properties: isEndangered (Bool), canHaveAsPet (String)
- Instance methods: reproduce(), hunt()
- Initializers: default initializer and custom initializer to set all properties

## File Structure

- `Animal.swift`: Contains the `Animal` class definition.
- `ViewController.swift`: First view controller displaying animal information and handling user actions.
- `SecondViewController.swift`: Second view controller for editing animal properties.
- `Main.storyboard`: Interface Builder file for designing the app's user interface.

## Usage

To use the app:
1. Clone the repository to your local machine.
2. Open the project in Xcode.
3. Build and run the app on a simulator or physical device.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or create a pull request.
