mkdir -p output
# Hitung jumlah status
awk -F 'NR>1 {print tolower($6)}' data.csv  | sort | uniq -c > output/status-count.txt
# Filter gmail
awk -F 'NR==1 || tolower($3) ~ /@gmail\.com$/' data.csv > output/gmail-customer.csv
# Hapus duplicate email
awk -F, 'NR==1 || !seen[tolower($3)]++' data.csv > output/no-duplicate.csv

