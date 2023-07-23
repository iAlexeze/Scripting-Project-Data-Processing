# Scripting Project - Data Processing and Analysis

![GitHub](https://img.shields.io/badge/GitHub-Scripting--Project--Data--Processing--and--Analysis-orange)

This repository contains a scripting project aimed at processing and analyzing data from various sources. The project combines data from different files, extracts relevant information, and presents it in a user-friendly format. The primary goal is to provide users with insights and statistics from the collected data.

## Table of Contents
- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [How it Works](#how-it-works)
- [Example Output](#example-output)
- [Contributing](#contributing)
- [License](#license)

## Introduction<a name="introduction"></a>

Data processing and analysis are vital tasks in various fields, and this scripting project streamlines the process of handling data from different sources. It combines data from applicant files, client information, partner details, staff records, and student profiles. The script extracts essential details, such as names, phone numbers, email addresses, and physical addresses, and presents them in a clear and organized manner.

## Getting Started<a name="getting-started"></a>

### Prerequisites<a name="prerequisites"></a>

To run this project, you need the following prerequisites:

- `bash` - A Unix shell for running the script.
- `wkhtmltopdf` - A tool to convert the generated HTML report to PDF format.

### Installation<a name="installation"></a>

1. Clone the repository to your local machine:

    git clone https://github.com/your-username/Scripting-Project-Data-Processing-and-Analysis.git

2. Change into the project directory:

    cd Scripting-Project-Data-Processing-and-Analysis

## Usage<a name="usage"></a>
- Ensure that the required prerequisite tools (bash and wkhtmltopdf) are installed on your system.

To install wkhtmltopdf, run:

    sudo apt install wkhtmltopdf -y

- Navigate to the project directory in your terminal.

- Run the gen-email.sh script to generate random sample data:

    bash gen-email.sh

The script will create sample data files for clients, staff, students, and partners, with randomly generated email addresses.

Once the sample data is generated, follow the instructions in the "Usage" section to process and analyze the data using joint-data.sh.

- Run the joint-data.sh script to process the data:

    bash joint-data.sh

The script will combine the data from various files, generate an HTML report, and convert it to a PDF file named report.pdf in the report directory.

Open the report.pdf file to view the analysis and statistics generated from the collected data.

Features<a name="features"></a>
- Combines data from multiple files into a single consolidated file.

- Extracts phone numbers and email addresses from the combined data.

- Presents the data in an organized HTML table and converts it to a PDF report.

- Provides insights into names, addresses, and other relevant information.

## How it Works<a name="#how-it-works"></a>
- The gen-email.sh script generates random sample data for client, staff, student, and partner files. It includes names, phone numbers, and randomly generated email addresses.

- The joint-data.sh script reads data from files located in the data directory, including applicants.pdf, client.csv, partners.txt, staff.xls, and students.docx.

- It combines the data into a single file named combined_data.txt in the present working directory.

- The script then extracts phone numbers and email addresses from the combined data using regular expressions.

- The extracted data is formatted into an HTML table and saved as index.html.

- Finally, wkhtmltopdf converts the index.html file into a PDF report named report.pdf, which is stored in the report directory.

## Example Output<a name="example-output"></a>
Here is an example of the generated PDF report: [Report Example](report/report.pdf).

## Contributing<a name="contributing"></a>
We welcome contributions to improve this scripting project. If you have any bug fixes, feature enhancements, or other improvements, feel free to submit a pull request. Please ensure that your code follows the project's coding standards.

## License<a name="license"></a>
This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the code according to the terms of the license.

Thank you for your interest in our Scripting Project - Data Processing and Analysis. We hope this tool simplifies your data processing tasks and provides valuable insights from your data. If you encounter any issues or have suggestions for improvements, please don't hesitate to create an issue or contribute to the project.

Happy data processing!

## Let's Connect,
### [GitHub](github.com/ialexeze)
### [LinkedIn](linkedin.com/in/alexeze)
### [Twitter](twitter.com/ialexeze)


