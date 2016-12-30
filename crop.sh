#Crops All the images of given size by with same frame

ls $1> new.txt

while read line ; do
    mogrify -crop 1000x750+366+14 "$line" 
done < new.txt

rm new.txt
