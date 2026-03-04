This script can be used to add an action to the Finder context menu that zips a Unity project without generated folders like /Library (which often makes most of the size of a project). This allows easy sharing of a Unity project at a smaller size than sharing the entire project folder.

# Usage

- open Automator
- create a new "Quick Action"
- add the "Run Shell Script" option
- copy & paste the contents of StripAndZipUnityProject.sh
- make sure that "pass input" is set to "as arguments"
- set "workflow receives current" to "folders" in Finder
- save (⌘ + S)

The option should now appear under "quick actions" in the context menu of any folder in Finder.
