# Orchid Bridge

Orchid Bridge is a modular framework designed for FiveM servers, facilitating seamless integration of in-game systems with external applications.  
It provides a structured approach to manage data exports, UI components, and server-client communications.

---

## Features

- **Modular Architecture**: Organized into distinct components such as `data`, `exports`, `framework`, `target`, and `textui` for scalability and maintainability.
- **Data Management**: Efficient handling of game data, ensuring smooth interactions between server and client.
- **Custom Exports**: Define and manage custom exports to extend game functionalities.
- **User Interface Integration**: Integrate with in-game UI elements for enhanced player interactions.
- **Framework Compatibility**: Designed to work seamlessly with various FiveM frameworks.

---

## Project Structure

The repository is organized as follows:

```
orchid-bridge/
├── data/          # Data management modules
├── exports/       # Custom exports definitions
├── framework/     # Framework integration components
├── target/        # Targeting system modules
├── textui/        # Text-based UI components
├── fxmanifest.lua # Resource manifest for FiveM
├── init.lua       # Initialization script
├── version.lua    # Versioning information
└── LICENSE        # Project license
```

---

## Installation

1. Clone the repository into your FiveM server's `resources` directory:

```bash
git clone https://github.com/hearondale/orchid-bridge.git
```

2. Add the following line to your `server.cfg`:

```bash
ensure orchid-bridge
```

3. Ensure that any dependencies or required frameworks are properly installed and configured.

---

## Usage

Once installed, you can utilize the components provided by Orchid Bridge:

- **Data Management**: Access and manipulate game data through the modules in the `data` directory.
- **Exports**: Define custom exports in the `exports` directory and call them from other scripts.
- **UI Integration**: Use the `textui` components to display information to players within the game.

Refer to the individual module documentation for detailed usage instructions.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Contributions are welcome. Submit issues or pull requests for improvements or support requests.
