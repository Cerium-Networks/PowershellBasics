# PowershellBasics
Very simple app, showcasing some of 'best practices' of PowerShell 

### Usage
```
.\training.ps1 <your name>
```

Observe: 
  - The heading block comment describing the application
  - [CmdletBinding()]   This must be the first thing in the function/file
  - param ()            Specifies a mandatory parameter, a string 'name'. If not supplied, it does not pass ValidateNotNullOrEmpty()
  
  - begin {}            I do any preliminary 'set-up' work in here. This starts with importing the second file, alerting the user of the start, and creating a helper function
  - process {}          This is where the beef of the script will go- use predefined helper functions and do what you need to do
  - end {}              Doing anything you need to do to wrap things up (log, close files, etc.)
  
Notice, most everything is in PascalCase, not camelCase (Every 'word' is capitalized), following a verb-noun process (e.g. `ReverseName`).
A few things, such as `begin`, `param`, or `true`, you may notice to be lowercase, and `.EXAMPLE` to be uppercase. Apparently that is also convention
