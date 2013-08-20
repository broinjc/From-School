echo $1
echo $2

echo "I'm making you a freaking user, pickles."

useradd $1 -p $2 -d /home/$1

echo "all done, master" 
