#!/bin/bash

# Function to generate a random email domain name and extension
function generate_email_domain() {
  local email_domains=("gmail.com" "yahoo.com" "hotmail.com" "ymail.com" "rocketmail.co" "outlook.com" "icloud.com" "aol.com" "protonmail.com" "mail.com")
  local random_index=$((RANDOM % ${#email_domains[@]}))
  echo "${email_domains[random_index]}"
}

# Generate random sample data for the files
cat << EOF > client.csv
Name,Phone,Email,Address
John Doe,1234567890,johndoe@$(generate_email_domain),123 Main St
Jane Smith,9876543210,janesmith@$(generate_email_domain),456 Elm St
Alice Johnson,4567890123,alicejohnson@$(generate_email_domain),789 Oak St
Bob Williams,7890123456,bobwilliams@$(generate_email_domain),321 Maple Ave
Mike Brown,5678901234,mikebrown@$(generate_email_domain),654 Pine Rd
Sarah Lee,2345678901,sarahlee@$(generate_email_domain),987 Birch Ln
Chris Evans,8901234567,chrisevans@$(generate_email_domain),654 Cherry Ct
Tom Davis,0123456789,tomdavis@$(generate_email_domain),321 Walnut Dr
Lucy Taylor,3456789012,lucytaylor@$(generate_email_domain),987 Cedar Pl
Mark Miller,6789012345,markmiller@$(generate_email_domain),123 Pineapple Rd
EOF

cat << EOF > staff.xls
Name,Phone,Email,Address
Emily Johnson,2345678901,emilyjohnson@$(generate_email_domain),123 Apple St
Michael Smith,8901234567,michaelsmith@$(generate_email_domain),456 Orange Ave
Jessica Lee,0123456789,jessicalee@$(generate_email_domain),789 Banana Ln
David Brown,3456789012,davidbrown@$(generate_email_domain),321 Grape Rd
Sarah Evans,6789012345,sarahevans@$(generate_email_domain),654 Pear Ct
Chris Davis,9012345678,chrisdavis@$(generate_email_domain),987 Cherry Dr
Laura Taylor,6789012345,laurataylor@$(generate_email_domain),321 Plum Pl
Ryan Miller,9012345678,ryanmiller@$(generate_email_domain),987 Watermelon Rd
Amanda Wilson,5678901234,amandawilson@$(generate_email_domain),123 Lemon St
Daniel Thomas,8901234567,danielthomas@$(generate_email_domain),456 Mango Ave
Emma Allen,0123456789,emmaallen@$(generate_email_domain),789 Pineapple Ln
John Johnson,3456789012,johnjohnson@$(generate_email_domain),321 Orange Rd
Sophia Smith,6789012345,sophiasmith@$(generate_email_domain),654 Banana Ct
Matthew Lee,9012345678,matthewlee@$(generate_email_domain),987 Grape Dr
Olivia Brown,5678901234,oliviabrown@$(generate_email_domain),123 Pear Pl
Ethan Evans,8901234567,ethanevans@$(generate_email_domain),456 Cherry Rd
Isabella Davis,0123456789,isabelladavis@$(generate_email_domain),789 Plum Ln
Alexander Taylor,3456789012,alexandertaylor@$(generate_email_domain),321 Watermelon Ave
Ava Miller,6789012345,avamiller@$(generate_email_domain),654 Lemon St
EOF

cat << EOF > students.docx
Name,Phone,Email,Address
Sophia Wilson,2345678901,sophiawilson@$(generate_email_domain),123 Apple St
Noah Thomas,8901234567,noahthomas@$(generate_email_domain),456 Orange Ave
Olivia Allen,0123456789,oliviaallen@$(generate_email_domain),789 Banana Ln
Liam Johnson,3456789012,liamjohnson@$(generate_email_domain),321 Grape Rd
Emma Smith,6789012345,emmasmith@$(generate_email_domain),654 Pear Ct
Michael Lee,9012345678,michaellee@$(generate_email_domain),987 Cherry Dr
Isabella Brown,5678901234,isabellabrown@$(generate_email_domain),321 Plum Pl
Ethan Evans,8901234567,ethanevans@$(generate_email_domain),987 Watermelon Rd
Ava Davis,5678901234,avadavis@$(generate_email_domain),123 Lemon St
Sophia Evans,8901234567,sophiaevans@$(generate_email_domain),456 Mango Ave
Alexander Davis,5678901234,alexanderdavis@$(generate_email_domain),789 Pineapple Ln
Olivia Wilson,0123456789,oliviawilson@$(generate_email_domain),321 Orange Rd
Liam Johnson,3456789012,liamjohnson@$(generate_email_domain),654 Banana Ct
Emma Smith,6789012345,emmasmith@$(generate_email_domain),987 Grape Dr
Michael Lee,9012345678,michaellee@$(generate_email_domain),123 Pear Pl
Isabella Brown,5678901234,isabellabrown@$(generate_email_domain),456 Cherry Rd
Ethan Evans,8901234567,ethanevans@$(generate_email_domain),789 Plum Ln
Ava Davis,5678901234,avadavis@$(generate_email_domain),321 Watermelon Ave
Sophia Evans,8901234567,sophiaevans@$(generate_email_domain),654 Lemon St
Alexander Davis,5678901234,alexanderdavis@$(generate_email_domain),987 Apple Ln
Olivia Wilson,0123456789,oliviawilson@$(generate_email_domain),321 Grape Rd
Liam Johnson,3456789012,liamjohnson@$(generate_email_domain),654 Orange Ct
Emma Smith,6789012345,emmasmith@$(generate_email_domain),987 Banana Dr
Michael Lee,9012345678,michaellee@$(generate_email_domain),123 Pear Pl
Isabella Brown,5678901234,isabellabrown@$(generate_email_domain),456 Cherry Rd
Ethan Evans,8901234567,ethanevans@$(generate_email_domain),789 Plum Ln
Ava Davis,5678901234,avadavis@$(generate_email_domain),321 Watermelon Ave
Sophia Evans,8901234567,sophiaevans@$(generate_email_domain),654 Lemon St
Alexander Davis,5678901234,alexanderdavis@$(generate_email_domain),987 Apple Ln
Olivia Wilson,0123456789,oliviawilson@$(generate_email_domain),321 Grape Rd
EOF

cat << EOF > partners.txt
Name,Phone,Email,Address
James Johnson,2345678901,jamesjohnson@$(generate_email_domain),123 Apple St
Sophia Smith,8901234567,sophiasmith@$(generate_email_domain),456 Orange Ave
Liam Lee,0123456789,liamlee@$(generate_email_domain),789 Banana Ln
Emma Brown,3456789012,emmabrown@$(generate_email_domain),321 Grape Rd
Michael Evans,6789012345,michaelevans@$(generate_email_domain),654 Pear Ct
Isabella Davis,9012345678,isabelladavis@$(generate_email_domain),987 Cherry Dr
Alexander Miller,5678901234,alexandermiller@$(generate_email_domain),321 Plum Pl
EOF

cat << EOF > applicants.pdf
Name,Phone,Email,Address
Emily Wilson,2345678901,emilywilson@$(generate_email_domain),123 Apple St
Michael Thomas,8901234567,michaelthomas@$(generate_email_domain),456 Orange Ave
Jessica Allen,0123456789,jessicaallen@$(generate_email_domain),789 Banana Ln
David Johnson,3456789012,davidjohnson@$(generate_email_domain),321 Grape Rd
Sarah Smith,6789012345,sarahsmith@$(generate_email_domain),654 Pear Ct
Chris Lee,9012345678,chrislee@$(generate_email_domain),987 Cherry Dr
Laura Brown,6789012345,laurabrown@$(generate_email_domain),321 Plum Pl
Ryan Evans,9012345678,ryanevans@$(generate_email_domain),987 Watermelon Rd
Amanda Davis,5678901234,amandadavis@$(generate_email_domain),123 Lemon St
Daniel Evans,8901234567,danielevans@$(generate_email_domain),456 Mango Ave
Emma Davis,0123456789,emmadavis@$(generate_email_domain),789 Pineapple Ln
John Wilson,3456789012,johnwilson@$(generate_email_domain),321 Orange Rd
Sophia Johnson,6789012345,sophiajohnson@$(generate_email_domain),654 Banana Ct
Matthew Smith,9012345678,matthewsmith@$(generate_email_domain),987 Grape Dr
Olivia Lee,5678901234,oliviale@$(generate_email_domain),123 Pear Pl
Ethan Brown,8901234567,ethanbrown@$(generate_email_domain),456 Cherry Rd
Isabella Evans,0123456789,isabellaevans@$(generate_email_domain),789 Plum Ln
Alexander Davis,3456789012,alexanderdavis@$(generate_email_domain),321 Watermelon Ave
Ava Miller,6789012345,avamiller@$(generate_email_domain),654 Lemon St
Emily Wilson,2345678901,emilywilson@$(generate_email_domain),987 Apple Ln
Michael Thomas,8901234567,michaelthomas@$(generate_email_domain),321 Grape Rd
Jessica Allen,0123456789,jessicaallen@$(generate_email_domain),654 Orange Ct
David Johnson,3456789012,davidjohnson@$(generate_email_domain),987 Banana Dr
Sarah Smith,6789012345,sarahsmith@$(generate_email_domain),123 Pear Pl
Chris Lee,9012345678,chrislee@$(generate_email_domain),456 Cherry Rd
Laura Brown,6789012345,laurabrown@$(generate_email_domain),789 Plum Ln
Ryan Evans,9012345678,ryanevans@$(generate_email_domain),321 Watermelon Ave
Amanda Davis,5678901234,amandadavis@$(generate_email_domain),654 Lemon St
Daniel Evans,8901234567,danielevans@$(generate_email_domain),987 Apple Ln
Emma Davis,0123456789,emmadavis@$(generate_email_domain),321 Grape Rd
John Wilson,3456789012,johnwilson@$(generate_email_domain),654 Orange Ct
Sophia Johnson,6789012345,sophiajohnson@$(generate_email_domain),987 Banana Dr
Matthew Smith,9012345678,matthewsmith@$(generate_email_domain),123 Pear Pl
Olivia Lee,5678901234,oliviale@$(generate_email_domain),456 Cherry Rd
Ethan Brown,8901234567,ethanbrown@$(generate_email_domain),789 Plum Ln
Isabella Evans,0123456789,isabellaevans@$(generate_email_domain),321 Watermelon Ave
Alexander Davis,3456789012,alexanderdavis@$(generate_email_domain),654 Lemon St
Ava Miller,6789012345,avamiller@$(generate_email_domain),987 Apple Ln
Emily Wilson,2345678901,emilywilson@$(generate_email_domain),321 Grape Rd
Michael Thomas,8901234567,michaelthomas@$(generate_email_domain),654 Orange Ct
Jessica Allen,0123456789,jessicaallen@$(generate_email_domain),987 Banana Dr
David Johnson,3456789012,davidjohnson@$(generate_email_domain),123 Pear Pl
Sarah Smith,6789012345,sarahsmith@$(generate_email_domain),456 Cherry Rd
Chris Lee,9012345678,chrislee@$(generate_email_domain),789 Plum Ln
Laura Brown,6789012345,laurabrown@$(generate_email_domain),321 Watermelon Ave
Ryan Evans,9012345678,ryanevans@$(generate_email_domain),654 Lemon St
EOF

echo "Sample data files have been created."
