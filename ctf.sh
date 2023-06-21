#!/usr/bin/bash 
#This tool is made by prince kumar 
#date 20 jun 2023 
# If are copying any part of the script give me the credit ..
# Trap the signal 
trap user_inttrupt SIGINT
trap user_inttrupt SIGTERM
user_inttrupt(){
echo -e "\033[31;1m Exiting ctf tool.."
exit 1
}
# Make a function for the About me 
about_me(){
echo -e "\e[32;1m Hi there , i am Prince Kumar a junior mechanical enginner. i am intrested in cyber security."
echo -e "\e[32;1m Here is my social media links if you want to contact me."
echo -e "\e[30;1m Instagram : https://instagram.com/princekrvert \n Facebook : https://facebook.com/princekrvet \n Telegram : t.me/princekrvert"
}
# now make a banner for this tool 
banner(){
echo -e "This is demo banner "	
}
# Now make a manue for the ctf 
echo -ne "\033[32;1m[~] \033[0;1m Choose :"
echo ""
echo -e "\033[35;1m[1] \033[33;0m All "
echo -e "\033[35;1m[2] \033[33;0m Category"
echo -e "\033[35;1m[3] \033[33;0m Update "
echo -e "\033[35;1m[4] \033[33;0m About me"
echo -e "\033[35;1m[5] \033[33;0m Exit"
# NOw read the answer form the user
read user_f
if [[ $user_f == "1" ]];then
	echo -e "\033[30;1m All called"
elif [[ $user_f == "2" ]];then 
	echo -e "\033[30;1m Category called"
elif [[ $user_f == "3" ]];then
	echo -e "\033[30;1m Update "
elif [[ $user_f == "4" ]];then
	about_me
elif [[ $user_f == "5" ]];then 
	echo -e "\033[30;1m Exit"
else 
	echo -e "\033[31;1m Exiting.. "
	exit 1 
fi

