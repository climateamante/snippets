```bash
temp_total_number_of_files=$(ls | cat -n | wc -l | sed '/^$/d;s/[[:blank:]]//g');
ls | \
cat -n | \
while read sequence file_name; do \
echo "encrypting: ${sequence} of ${temp_total_number_of_files}";
echo "passphrase_goes_here..." | \
gpg \
 --yes \
--batch \
--quiet \
--passphrase-fd 0 \
--compress-level 0 \
--symmetric "${file_name}";
done;
```