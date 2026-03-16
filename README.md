Adds a Finder context menu action to zip Unity projects without generated folders like /Library (which often account for most of the project size).



# Usage

The project contains different scripts, one for each platform.

## MacOS

<img width="467" height="457" alt="screenshot_finder" src="https://github.com/user-attachments/assets/c3b8536f-a4a5-47e9-8a7e-48dfeae06e65" />

https://github.com/user-attachments/assets/37d42549-0956-4271-a238-0f50ce3fe47b

- open Automator
- create a new "Quick Action"
- add the "Run Shell Script" option
- copy & paste the contents of StripAndZipUnityProject.sh
- make sure that "pass input" is set to "as arguments"
- set "workflow receives current" to "folders" in Finder
- save (⌘ + S)

<img width="1191" height="800" alt="screenshot_automator" src="https://github.com/user-attachments/assets/21544904-6214-4825-92ab-83b87b539d1a" />

The option should now appear under "quick actions" in the context menu of any folder in Finder.

## Windows

- copy StripAndZipUnityProject.ps1 to C:\users\<your-username>\tools
- open StripUnity.reg (this will add a shortcut to the explorer to easily run the script on a Unity project)

- the option should now appear in the context menu for folders in Explorer
- on Windows 11, click "more options"
