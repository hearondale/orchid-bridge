# Orchid Bridge

A minimal, no-BS bridge for FiveM servers. It gives you a single place to configure your setup and exposes a couple of clean exports to tie things together. Lightweight. Convenient. Nothing extra.

## Structure
```
orchid-bridge/
├── data/          # Data modules
├── exports/       # Exports definitions for functions
├── ui-exports/    # Exports definitions for UI Components
├── framework/     # Core bridge layer connecting different frameworks (ESX, QBCore, etc.)
├── modules/       # Plug-and-play bridge modules (replaceable or extendable)
│   ├── context/   # Context menus (or quick setup for custom ones)
│   ├── notify/    # Notifications
│   ├── target/    # Target or other interaction systems(player/object/world interactions)
│   └── textui/    # Text UI bridge for different use cases
└── init.lua       # Entry point initializing the bridge for the resources
```

## Installation
Check out our Docs

## Usage
- **Data**: Handle server–client data with `data/`.
- **Exports**: Add custom exports in `exports/`.
- **UI**: Use `textui/` for in-game text displays.

See module documentation for details.

## License
MIT License. See [LICENSE](LICENSE).
