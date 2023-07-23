#!/bin/bash
#
#
clear
#
# Reference files
input_files=("data/applicants.pdf" "data/client.csv"  "data/partners.txt"  "data/staff.xls"  "data/students.docx")

# File Exist function
file_exist() {
  missing_files=()
  for file in "$@"; do
    if [[ ! -f "$file" ]]; then
        echo -e "File NOT FOUND : $file"
        missing_files+=("$file")
    fi
  done

# Check missing files
if [[ "${#missing_files[@]}" -eq 0 ]]; then
    echo -e "All Files Exist. \n\nCombining files..."
    sleep 0.5
    echo -e "\nFile combination complete!"
else
    return 1
fi
}

# Check the existence of files
if ! file_exist "${input_files[@]}"; then
    echo "Error!"
    exit 1
fi

# Combine the files
combined_file="combined_data.txt"       # Located at the present working directory
cat "${input_files[@]}" >"$combined_file"

# Remove the line containing "Name,Phone,Email,Address" from the combined file
sed -i '/Name,Phone,Email,Address/d' "$combined_file"

# Extract the Phone Numbers through regular pattern of capturing group(s)
phone_numbers=$(sed -n '1d; s/.*\b\([[:digit:]]\{10,\}\)\b.*/\1/p' "$combined_file" | cat -n | column -t | head -n 5)

# Extract the Email Addresses through regular pattern of capturing group \(..\) | + signifies one or more times
email_addresses=$(sed -n '1d; s/.*\b\([[:alnum:]_-]\+\)@\([[:alpha:]]\+\.[[:alpha:].]\{2,\}\)\b.*/\1@\2/p' "$combined_file" | cat -n | column -t | head -n 5) 

# Save the HTML content to index.html file
echo "$html_content" > index.html

# Print only names and addresses
name_addresses=$(awk -F ',' '{printf "%-3s%-25s%s\n", NR, $1, $4}' "$combined_file" | head -n 5)

emails=$(awk -F ',' '{printf "%-25s\n", $3}' "$combined_file" | head -n 3)

# Generate the HTML table content with row numbers using awk
index_html=$(awk -F ',' 'BEGIN {print "<table>"} 
                         {printf "<tr><td>%-3s</td><td>%-200s</td><td>%s</td><td>%s</td></tr>\n", NR, $1, $2, $3} 
                     END {print "</table>"}' "$combined_file")

# Add the title and "h1" header to the HTML content
html_content="
<!DOCTYPE html>
<html>
<head>
  <title>Data Report</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid black;
  padding: 8px;
  text-align: left;
}

th {
  background-color: #f2f2f2;
}
</style>
</head>
<body>
<h1 style=\"text-align: center;\">Data Dashboard</h1>
<table border=\"1\">
$index_html
</body>
</html>
"
# Create index.html in the present working directory
echo "$html_content" > index.html

# Display Phone Numbers
echo -e "\nPhone Numbers"
echo "==============="
echo "$phone_numbers"

# Display Email Addresses
echo -e "\nEmail Addresses"
echo "=========================="
echo "$emails"

# Display Names and Addresses
echo -e "\nNames and Addresses"
echo "=========================="
echo "$name_addresses"
echo "....."
sleep 1

# Convert to pdf
wkhtmltopdf index.html report.pdf
rm index.html combined_data.txt
mv report.pdf report/

# Final Notice
echo -e "\nFull report is saved as 'report/report.pdf'"
