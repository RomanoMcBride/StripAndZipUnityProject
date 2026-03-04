This script can be used to add an action to the Finder context menu that zips a Unity project without generated folders like /Library (which often makes most of the size of a project). This allows easy sharing of a Unity project at a smaller size than sharing the entire project folder.

<img width="467" height="457" alt="screenshot_finder" src="https://github.com/user-attachments/assets/c3b8536f-a4a5-47e9-8a7e-48dfeae06e65" />

https://github.com/user-attachments/assets/37d42549-0956-4271-a238-0f50ce3fe47b

# Usage

- open Automator
- create a new "Quick Action"
- add the "Run Shell Script" option
- copy & paste the contents of StripAndZipUnityProject.sh
- make sure that "pass input" is set to "as arguments"
- set "workflow receives current" to "folders" in Finder
- save (⌘ + S)

<img width="1191" height="800" alt="screenshot_automator" src="https://github.com/user-attachments/assets/21544904-6214-4825-92ab-83b87b539d1a" />

The option should now appear under "quick actions" in the context menu of any folder in Finder.
