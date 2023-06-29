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
# Make a function to requirements 
req(){
# First check the os 
os=$(uname -o)
if [[ $os == "Android" ]];then
	command -v go > /dev/null 2>&1 || { echo -e "\e[32;1m Installing golang "; pkg install golang -y ;}

else
	command -v go > /dev/null 2>&1 || { echo -e "\033;32;1m Installing golang "; sudo apt install golang -y ;}
fi
}
# NOw call the requirements function 
req 

# Make a function for the About me 
about_me(){
echo -e "\e[32;1m Hi there , i am Prince Kumar a junior mechanical enginner. i am intrested in cyber security."
echo -e "\e[32;1m Here is my social media links if you want to contact me."
echo -e "\e[30;1m Instagram : https://instagram.com/princekrvert \n Facebook : https://facebook.com/princekrvert \n Telegram : t.me/princekrvert"
}

# now make a banner for this tool 
banner(){
echo -e "This is demo banner "	
}
# create a function to create file manue 
display_manue(){
# first check the number of lines in the file ..
n=$(wc -l .pkctf/$1 | awk '{ printf $1 }' )
i=1
# now read the lines ..
while read -r line;do
	# check if 6th filed is present or not 
	six_field=$( echo ${line} | awk '{ printf $6 }')
	if [[ $six_field == "" ]];then 
		echo "unsolved "
	else 
		# now compare the hash 
		ans=$( hash/main sha256 $six_field) 
		third_field=$( echo ${line} | awk '{ printf $3 }')
		first_field=$( echo ${line} | awk '{ printf $1 }')
       		if [[ $third_field == $ans ]];then
	 		echo -e "\033[32;1m[$i] $first_field"
		else
			echo -e "\033[31;1m[$i] $first_field "
		fi		
	fi
	i=$((i+1))
done < .pkctf/$1
}
# make a function to categoty .
category(){
clear 
echo -e "\033[32;1m[1] \033[31;1m Forensics"
echo -e "\033[32;1m[2] \033[31;1m Web exploitation"
echo -e "\033[32;1m[3] \033[31;1m Reverse Engineering"
echo -e "\033[32;1m[4] \033[31;1m Cryptography"
echo -e "\033[32;1m[5] \033[31;1m Binary exploitation"
echo -e "\033[32;1m[6] \033[31;1m Previous manue"
read c_optn
# now check the user option 
if [[ $c_optn == "1" ]];then
	if [[ -f .pkctf/forensic ]];then
		# now disply the manue 
		display_manue forensic
	else
		echo "file not found"
	fi
elif [[ $c_optn == "2" ]];then 
	echo "Web Exploitation called"
elif [[ $c_optn == "3" ]];then 
	echo "reverse Engineering"
elif [[ $c_optn == "4" ]];then 
	# first check if file is exist or not 
	if [[ -f .pkctf/cryptography ]];then
		# now check the number of lines here 
		echo ""
	else
		echo ''
	fi
elif [[ $c_optn == "5" ]];then 
	echo "Binary explotation called"
elif [[ $c_optn == "6" ]];then 
	main_m
else 
	echo -ne "\033[31;1m Invalid option "
	exit 1
fi
}
# Now make a manue for the ctf 
main_m(){
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
	# show to category to solve to the user
	category
elif [[ $user_f == "3" ]];then
	echo -e "\033[30;1m Update "
elif [[ $user_f == "4" ]];then
	about_me
elif [[ $user_f == "5" ]];then 
	echo -e "\033[30;1m Exit"
else 
	echo -e "\033[31;1m Invalid input Exiting.. "
	exit 1 
fi
}
main_m
