# OSS Audit Project

##  Student Details
- **Name:** Utkarsh Shukla  
- **Registration Number:** 24BCE10990  

---

##  Chosen Software
- **Software:** Python  
- **Category:** Programming Language  
- **License:** Python Software Foundation License  

---

##  Project Overview
This project is part of the Open Source Software course. It focuses on understanding open-source philosophy and demonstrating basic Linux skills using shell scripting.

The project includes:
- Analysis of an open-source software (Python)
- Five shell scripts demonstrating Linux command-line concepts

---

##  Scripts Description

###  Script 1: System Identity Report
Displays basic system information such as:
- Kernel version  
- Logged-in user  
- System uptime  
- Date and time  
- Linux distribution  

---

###  Script 2: FOSS Package Inspector
- Checks if a package (Python) is installed or not
- Displays version and details  
- Uses a case statement to describe the software  

---

###  Script 3: Disk and Permission Auditor
- Loops through important directories  
- Displays:
  - Permissions  
  - Owner  
  - Disk usage  

---

###  Script 4: Log File Analyzer
- Reads a log file line by line  
- Counts occurrences of a keyword (e.g., "error")  
- Displays summary of matches  

---

###  Script 5: Open Source Manifesto Generator
- Takes user input interactively  
- Generates a personalized open-source philosophy  
- Saves output to a `.txt` file  

---

##  Requirements / Dependencies

- Linux environment       
- Bash shell
- Basic Linux utilities:
  - `grep`
  - `awk`
  - `cut`
  - `du`
  - `ls`
- Python installed (`python3`)

---

##  Setup Instructions

### Step 1: Clone the Repository
```bash
git clone https://github.com/shuklautkarsh2204/oss-audit-24BCE10990.git
cd oss-audit-24BCE10990
```
### Step 2: Granting Permission to Execut
```bash
chmod +x *.sh
```
### Step 3: Execute the Scripts
```bash
./system_report.sh
./script2.sh
./script3.sh
./log_analyzer.sh /var/log/my_test.log error
./script5.sh
```
## Context of Project

These scripts support a capstone report that explores:
- The origin and philosophy of Python as an open-source programming language.
- Ethical aspects of open-source software and community-driven development.
- Python’s footprint on Linux (installation, directories, execution, and updates).
- A comparison between Python (FOSS) and proprietary programming tools.

Each script is accompanied by a **screenshot** in the main project report attached along with the repo link in vityarthi, showing its output on my system.

---
## License

The chosen software, **Python**, is distributed under the **Python Software Foundation (PSF) License**.

This is a permissive open-source license that allows users to:
- Use the software for any purpose  
- Modify the source code  
- Distribute original or modified versions  
- Use it in both open-source and commercial projects  

Unlike stricter licenses such as GPL, the PSF License does not require modified versions to be released as open source. This provides greater flexibility for developers and organizations.

The license reflects the philosophy of Python: promoting accessibility, collaboration, and widespread adoption across different domains.

For more information, visit the official Python website: https://www.python.org/
