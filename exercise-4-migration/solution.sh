# Count rows
wc -l produk-lama.csv

# Show top rows
cat produk-lama.csv | head

# Normalize category
sed 's/PAKAIAN/pakaian/g' produk-lama.csv

# Compress whitespace
sed 's/  */ /g' produk-lama.csv

# Deduplicate
sort produk-lama.csv | uniq

# Backup
cp produk-lama.csv output/backup.csv

# Archive
tar -czvf migration.tar.gz output/
