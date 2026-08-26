@echo off
echo Starting repo setup...

if exist "README.md" (
    echo README.md already exists. Skipping creation.
) else (
    echo Creating README.md...
    (
        echo # Project Name
        echo.
        echo ^> TODO: Come up with a cooler name later.
        echo.
        echo ## What is this?
        echo Basically, this project does [insert cool thing here]. I made it because [reason].
        echo.
        echo ## Features
        echo - Feature 1
        echo - Feature 2
        echo - It works (mostly)
        echo.
        echo ## How to run it
        echo 1. Clone this repo
        echo 2. Install dependencies (check requirements.txt if it exists)
        echo 3. Run the main script
        echo.
        echo ## Status
        echo 🚧 Work in Progress. There are probably bugs.
        echo.
        echo ## License
        echo MIT (do whatever you want with it)
    ) > README.md
)

echo Creating directory structure...
if not exist "src" mkdir src
if not exist "assets" mkdir assets
if not exist "docs" mkdir docs
if not exist "tests" mkdir tests

type nul > src\.gitkeep
type nul > assets\.gitkeep
type nul > docs\.gitkeep
type nul > tests\.gitkeep

if exist ".gitignore" (
    echo .gitignore already exists.
) else (
    echo Creating .gitignore...
    (
        echo # Python
        echo __pycache__/
        echo *.py[cod]
        echo *$py.class
        echo .env
        echo venv/
        echo.
        echo # Node
        echo node_modules/
        echo dist/
        echo.
        echo # OS
        echo .DS_Store
        echo Thumbs.db
        echo.
        echo # IDE
        echo .vscode/
        echo .idea/
    ) > .gitignore
)

if not exist "requirements.txt" (
    echo # Add your dependencies here > requirements.txt
)

echo.
echo ✓ Setup complete!
echo Next steps:
echo 1. Edit README.md with actual info
echo 2. Put your code in /src
echo 3. git add . ^&^& git commit -m "initial commit"

pause
