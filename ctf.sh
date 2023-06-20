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
