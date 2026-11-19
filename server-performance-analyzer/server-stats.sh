echo "-------------------CPU Usage----------------------------"
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}' 


echo "-------------------Total memory usage (Free vs Used including percentage)------------------------"

free -m | awk 'NR==2{
total=$2
used=$3
free=$4

printf "Total memory is : %d MB\n" ,total
printf  "Used memory is: %d MB (%.2f%%)\n " ,used, (used/total)*100
printf  "free memory is: %d MB(%.2f%%)\n" ,free, (free/total)*100

}'