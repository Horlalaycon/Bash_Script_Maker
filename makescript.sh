
#!/bin/bash

#banner
echo "---------------------------------------------------------------------------"
figlet -c Script-Maker
echo -e "                        \e[7;2;34mThe Ultimate Bash Script Maker\e[0m"
echo -e "                        \e[3;2;34mAuthor==> \e[1;5;34mHorlalaycon @ github \e[0m\e[0m"
echo "---------------------------------------------------------------------------"

echo -e "\e[0;35mPlease Enter The FileName:\e[0m "
read file
echo -e "\e[0;35mWhat is the purpose of the script:\e[0m"
read purpose

touch $file.sh

echo "#banner" >> $file.sh
echo 'echo "---------------------------------------------------------------------------"' >> $file.sh
echo "#!/bin/bash" >> $file.sh
echo "figlet -c $file" >> $file.sh
echo 'banner_text="                        \e[7;2;34mThe Ultimate Bash Script\e[0m"' >> $file.sh
echo 'banner_text_author="                        \e[3;2;34mAuthor==> \e[1;5;34mHorlalaycon @ github \e[0m\e[0m"' >> $file.sh

echo  'echo "$banner_text"'>> $file.sh
echo 'echo "$banner_text_author"'>> $file.sh
echo 'echo "---------------------------------------------------------------------------"' >> $file.sh


echo " " >> $file.sh 

echo "#Date Created: " `date` >> $file.sh
echo "#Purpose: $purpose" >> $file.sh
echo "#Author: Horlalaycon" >> $file.sh

echo -e "\e[0;33mCreating Script\e[0m\e[5;33m...\e[0m"
sleep 3
echo ""
echo -e "Making \e[0;34m$file.sh\e[0m Executable..."
chmod +x $file.sh
sleep 3
echo " " 

echo -e "Script \e[1;34m$file.sh\e[0m Created \e[5;32mSuccessfully\e[0m"
