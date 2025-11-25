# Quick Command

Quick installation tool for common commands, supporting macOS, Linux, and WSL platforms.

## Project Structure

```
quick-command/
├── command/           # Platform-specific command directory
│   ├── macos/         # macOS-specific commands
│   ├── linux/         # Linux-specific commands
│   └── wsl/           # WSL-specific commands
├── install-macos.sh   # macOS installation script
├── install-linux.sh   # Linux installation script
├── install-wsl.sh     # WSL installation script
├── uninstall.sh       # Uninstall script
├── update.sh          # Update script
└── README.md
```

## Installation

### macOS

```bash
git clone https://github.com/liyinan2333/quick-command.git
cd quick-command
./install-macos.sh
source ~/.zshrc
```

### Linux

```bash
git clone https://github.com/liyinan2333/quick-command.git
cd quick-command
./install-linux.sh
source ~/.zshrc
```

### WSL

```bash
git clone https://github.com/liyinan2333/quick-command.git
cd quick-command
./install-wsl.sh
source ~/.zshrc
```

## Available Commands

### Common Commands

Commands supported on all platforms:

- **docker-in** `<container_id>` - Enter Docker container bash
- **docker-psf** `<pattern>` - Filter Docker containers by name
- **docker-start** - Start Docker (Linux/WSL only)
- **json** `<args>` - JSON processing tool (based on jq)
- **open** `<path>` - Open files or directories (macOS: open, Linux: xdg-open, WSL: explorer.exe)
- **tailf** `<file>` - View file contents in real-time

### macOS-Specific Commands

- **proxy** - Set proxy (socks5://127.0.0.1:33211)
- **unproxy** - Remove proxy settings

### Built-in Aliases

The following aliases are automatically added after installation:

- `lsort` - Display files sorted by size
- `ltime` - Display files sorted by modification time

## Update

To update to the latest version:

```bash
./update.sh
source ~/.zshrc
```

## Uninstall

To uninstall quick-command from your system:

```bash
./uninstall.sh
source ~/.zshrc
```

The uninstall script removes all quick-command-related configurations from `~/.zshrc`.

## Feature Description

### Docker Related

- **docker-in**: Quickly enter specified container, provides interactive bash session
- **docker-psf**: Find and filter Docker containers by pattern name
- **docker-start**: Start Docker service (Linux/WSL only)

### File Operations

- **open**: Cross-platform file/directory opening tool
  - macOS: Uses system `open` command
  - Linux: Uses `xdg-open` command
  - WSL: Uses `explorer.exe` to open
- **tailf**: Real-time file content monitoring

### JSON Processing

- **json**: Formatting, querying, and processing of JSON data (based on jq)

### Proxy Settings (macOS-Specific)

- **proxy**: Set system proxy
- **unproxy**: Remove system proxy settings

## System Requirements

- Zsh shell
- Platform-specific dependencies:
  - macOS: No additional dependencies
  - Linux: jq, Docker (optional)
  - WSL: Windows 10/11, Docker (optional)

## License

MIT
