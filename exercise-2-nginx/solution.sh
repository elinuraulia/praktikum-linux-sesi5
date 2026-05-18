mkdir -p output

awk '{print $1}' access.log | sort | uniq -c | sort -rn | head -10 > output/top-ip.txt
awk '{
match($4, /:([0-9]{2}):/, h)
hour=h[1]
total[hour]++
if($9 ~ /^4|^5/) error[hour]++
}
END {
print "hour total error rate%"
for(h in total){
rate=(error[h]/total[h])*100
printf "%s %d %d %.2f%%\n", h, total[h], error[h], rate
}
}' access.log > output/error-rate.txt
awk '$7 ~ /login|admin/ {print $1}' access.log | sort | uniq -c | awk '$1 > 50' > output/bruteforce.txt
awk '{sum[$7]+=$NF; cnt[$7]++} END {for(e in sum) print sum[e]/cnt[e], e}' access.log | sort -rn | head -10 > output/slow-endpoints.txt
awk '{sum+=$10} END {
mb=sum/1024/1024
gb=mb/1024
printf "Bytes: %d\nMB: %.2f\nGB: %.2f\n", sum, mb, gb
}' access.log > output/bytes.txt

