![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?style=flat-square&logo=robotframework&logoColor=white)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=flat-square&logo=selenium&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![BDD](https://img.shields.io/badge/BDD-Given%2FWhen%2FThen-blue?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green.svg)

# 🤖 Robot Framework BDD — QMA Daily Tracker

Automated end-to-end test suite for the **QMA Daily Tracker** application built with Robot Framework, SeleniumLibrary, and Behavior-Driven Development (Given/When/Then) syntax. The project demonstrates keyword-driven, data-driven, and BDD testing approaches with multiple external data sources including CSV and Excel files.

---

## 📑 Table of Contents

- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Test Scenarios](#-test-scenarios)
- [Design Patterns](#-design-patterns)
- [Reports](#-reports)
- [Author](#-author)

---

## ✨ Features

- **BDD Syntax** — Human-readable test cases using Given/When/Then keywords
- **Keyword-Driven Testing** — Reusable keyword abstractions for login and tracker workflows
- **Data-Driven Testing** — Parameterized tests powered by CSV and Excel data files
- **Multiple Data Sources** — Supports `.csv`, single-sheet `.xlsx`, multi-sheet `.xlsx`, and WPS-format `.xlsx`
- **Resource Modularization** — Separated keyword files for login and daily tracker operations
- **Rich HTML Reports** — Auto-generated `report.html`, `log.html`, and `output.xml` after each run

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| Robot Framework | Test automation framework |
| SeleniumLibrary | Browser automation and web element interaction |
| Python | Runtime environment for Robot Framework |
| BDD (Given/When/Then) | Behavior-driven test specification |
| CSV / Excel | External test data sources |

---

## 📁 Project Structure

```
robotfw-test-bdd/
├── tests/
│   ├── LoginQMA_csv.robot              # Login tests using CSV data
│   ├── LoginQMA_excel.robot            # Login tests using Excel data
│   ├── LoginQMA_excellibrary.robot     # Login tests using ExcelLibrary
│   ├── LoginQMA_testcase.robot         # Keyword-driven login test cases
│   ├── LoginQMA_testsuite.robot        # Login test suite execution
│   └── qcBDD.robot                     # BDD test cases (Given/When/Then)
├── keywords/
│   ├── login_resources.robot           # Login keyword definitions
│   └── mytracker_resources.robot       # Daily tracker keyword definitions
├── data/
│   ├── Login.csv                       # Login credentials (CSV format)
│   ├── Login_1sheet.xlsx               # Login data (single sheet)
│   ├── Login_2sheet.xlsx               # Login data (multi-sheet)
│   ├── Login_wps.xlsx                  # Login data (WPS format)
│   └── data.xlsx                       # General test data
├── results/
│   ├── report.html                     # Test execution report
│   ├── log.html                        # Detailed execution log
│   └── output.xml                      # Machine-readable output
└── README.md
```

---

## 📋 Prerequisites

- **Python** 3.8+
- **pip** (Python package manager)
- **Google Chrome** / **Mozilla Firefox** browser
- **ChromeDriver** / **GeckoDriver** matching your browser version

---

## 🚀 Getting Started

### Installation

```bash
# Install Robot Framework and required libraries
pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-datadriver
pip install robotframework-excellibrary
```

### Running Tests

```bash
# Run the full BDD test suite
robot --outputdir results tests/qcBDD.robot

# Run data-driven tests with CSV
robot --outputdir results tests/LoginQMA_csv.robot

# Run data-driven tests with Excel
robot --outputdir results tests/LoginQMA_excel.robot

# Run the complete test suite
robot --outputdir results tests/
```

---

## 🧪 Test Scenarios

| Scenario Name | Type | Description |
|---|---|---|
| Login with CSV Data | Data-Driven | Validates login functionality using credentials from `Login.csv` |
| Login with Excel Data | Data-Driven | Validates login functionality using credentials from `.xlsx` files |
| Login with ExcelLibrary | Data-Driven | Validates login using ExcelLibrary for multi-sheet data |
| Keyword-Driven Login | Keyword-Driven | Executes login flow through reusable keyword abstractions |
| Daily Task Insert | BDD | Given user is logged in, When a new daily task is submitted, Then the task appears in the tracker |
| Check-In Verification | BDD | Given user is on the tracker page, When check-in is performed, Then attendance is recorded |
| Mood Selection | BDD | Given user accesses the mood feature, When a mood is selected, Then the selection is saved |
| Menu Navigation | BDD | Given user is authenticated, When navigating through menus, Then all menu items are accessible |
| Profile Verification | BDD | Given user opens the profile section, When profile details are displayed, Then information matches expected data |
| Logout | BDD | Given user is logged in, When the logout action is performed, Then the user is redirected to the login page |

---

## 🏗 Design Patterns

### Keyword-Driven Architecture

Test logic is abstracted into reusable keywords stored in dedicated resource files. `login_resources.robot` encapsulates all login-related actions, while `mytracker_resources.robot` handles daily tracker operations. This separation ensures that changes to the application UI only require updates in one place.

### Data-Driven Testing

Test data is externalized into CSV and Excel files, allowing the same test logic to execute against multiple data sets without code duplication. This approach enables non-technical stakeholders to add or modify test data without touching the test scripts.

### Behavior-Driven Development (BDD)

The `qcBDD.robot` file uses Given/When/Then syntax to express test scenarios in natural language. This bridges the communication gap between business analysts and QA engineers, making test intent immediately clear to all project stakeholders.

---

## 📊 Reports

After each test run, Robot Framework automatically generates:

| Report | Description |
|---|---|
| `report.html` | High-level summary with pass/fail statistics and execution timeline |
| `log.html` | Detailed step-by-step execution log with keyword-level granularity |
| `output.xml` | Machine-readable output for CI/CD integration and custom report generation |

Open `report.html` in any browser to review results:

```bash
start results/report.html
```

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Ridho Tadjudin**

[![Website](https://img.shields.io/badge/Website-ridhotadjudin.id-blue?style=flat-square&logo=google-chrome&logoColor=white)](https://ridhotadjudin.id)
[![GitHub](https://img.shields.io/badge/GitHub-ridhotadjudin-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/ridhotadjudin)
