#!/bin/bash

# Simple Repo Setup Script
# Makes a basic folder structure and a README so I don't have to do it manually every time.

echo "Starting repo setup."

BLUE='\033[0;34m'
NC='\033[0m' # No Color

if [ -f "README.md" ]; then
    echo "README.md already exists. Skipping creation"
else
    echo "Creating README.md..."
    cat > README.md <<EOF
# Project Name

> TODO: task 1, 2, 3.

## What is this?
Basically, this project does [insert cool thing here]. I made it because [reason].

## Features
- Feature 1
- Feature 2
- It works (mostly)

## How to run it
1. Clone this repo
2. Install dependencies (check requirements.txt if it exists)
3. Run the main script

## Status
Work in Progress. There are probably bugs.

## License
MIT (do whatever you want with it)
EOF
fi

echo "Creating directory structure"
mkdir -p src
mkdir -p assets
mkdir -p docs
mkdir -p tests

touch src/.gitkeep
touch assets/.gitkeep
touch docs/.gitkeep
touch tests/.gitkeep

if [ -f ".gitignore" ]; then
    echo ".gitignore already exists."
else
    echo "Creating .gitignore..."
    cat > .gitignore <<EOF

__pycache__/
*.py[cod]
*$py.class
.env
venv/


node_modules/
dist/

.DS_Store
Thumbs.db

.vscode/
.idea/
EOF
fi

if [ ! -f "requirements.txt" ]; then
    echo "# Add your dependencies here" > requirements.txt
fi

echo ""
echo -e "${BLUE}Setup complete!${NC}"
echo "Next steps:"
echo "1. Edit README.md with actual info"
echo "2. Put your code in /src"
echo "3. git add . && git commit -m 'initial commit'"
