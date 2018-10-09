# Xcode Templates

## Installation
Move each `.xctemplate` directory into `~/Library/Developer/Xcode/Templates/Custom/.`

## Template Descriptions

### xViper
Named after and inspired by VIPER architecture. Wireframes create and dependency inject each component of a module:
- DataManageable injects into
- Interactor injects into
- Presentor injects into
- ViewController instantiated from a
- Storyboard file

xViper assumes existence of a `DataManager` class that provides a single point of entry for your apps interaction with the Network. After generating an xViper module the `DataManager` must conform to `xDataManageable`.