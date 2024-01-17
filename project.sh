#!/bin/bash
i="0"
password=admin
sysadmin=sysadmin
sl
clear
read -p "Enter your Name: " username
read -s -p "Enter Password if you are Admin: " pass

#functions
listfiles(){
     echo "List all files and Directories here.."
        echo "Showing all files and directories...."
        sleep 2
        echo "Loading.."
        sleep 2
        echo "-------------------------------OutPut------------------------------------"
        ls
        echo " "
}
listfilesext(){
        echo "List of Files with Particular extensions here.."
        echo "Which type of file list you want to see?"
        echo "1- .c"
        echo "2- .cpp"
        echo "3- .sh"
        echo "4- .txt"
        echo -n "Enter your choice from 1-4: "
        read extopt
        echo "-------------------------------OutPut------------------------------------"
        if [ $extopt == 1 ]
        then
        echo "List of .c Files shown below."
        echo "Loading.."
        sleep 3
        ls *.c
        elif [ $extopt == 2 ]
        then
        echo "List of .cpp Files shown below."
        echo "Loading.."
        sleep 3
        ls *.cpp
        elif [ $extopt == 3 ]
        then
        echo "List of .sh Files shown below."
        echo "Loading.."
        sleep 3
        ls *.sh
        elif [ $extopt == 4 ]
        then
        echo "List of .txt Files shown below."
        echo "Loading.."
        sleep 3
        ls *.txt
        else
        echo "Invalid Input..Try again.."
        fi
}
listdirectories(){
      echo "-------------------------------OutPut------------------------------------"
        echo "List of all Directories here.."
        echo "showing all Directories..."
        echo "Loading.."
        sleep 3
        ls -d 
}
createfiles(){
         echo "Create New Files here.."
        echo "Which type of file you want to create !"
        echo "1- .c"
        echo "2- .cpp"
        echo "3- .sh"
        echo "4- .txt"
        echo -n "Enter your choice from 1-4"
        read filechoice
         if [ $filechoice == 1 ]
        then
        echo "Enter File Name without .c Extension"
        read filename
        touch $filename.c
        echo "-------------------------------OutPut------------------------------------"
        echo "File Created Successfully"
        echo " "

        elif [ $filechoice == 2 ]
        then
        echo "Enter File Name without .cpp Extension"
        read filename
        touch $filename.cpp
        echo "-------------------------------OutPut------------------------------------"
        echo "File Created Successfully"
        echo " "
        elif [ $filechoice == 3 ]
        then
        echo "Enter File Name without .sh Extension"
        read filename
        touch $filename.sh
        echo "-------------------------------OutPut------------------------------------"
        echo "File Created Successfully"
        echo " "
        elif [ $filechoice == 4 ]
        then
        echo "Enter File Name without .txt Extension"
        read filename
        touch $filename.txt
        echo "-------------------------------OutPut------------------------------------"
        echo "File Created Successfully"
        echo " "
        else
        echo "Inavlid Input..Try Again."
        echo " "
        fi
}
viewcontent(){
     echo "View content of file here.."
        echo "Enter File Name : "
        read readfile
        echo "-------------------------------OutPut------------------------------------"
        if [ -f "$readfile" ];
        then
        echo "Showing file content.."
        sleep 3
        cat $readfile
        else
        echo "$readfile does not exist"
        fi
}
deletefiles(){
       echo "Delete existing files here.. "
        echo "Enter name of File you want to Delete!"
        echo "Note: Please Enter full Name with Extension."
        read delfile
        echo "Looking fro file..."
        sleep 2
        echo "-------------------------------OutPut------------------------------------"

}
endprogram(){
    echo "------------------Exiting Project---------------"
echo " "
echo "-----------This project Was created by----------"
echo " "
echo "---Muhammad Afzal Hashmi----------F2021266252---"
echo "---Muhammad Hamid Nadeem----------F2021266271---"
echo "------Muhammad Yousaf-------------F2021266253---"
}

exit(){
    echo "Good Bye $username.."
    echo "Successfully Exit"
}

while [ $i -lt 100 ]
do
clear
    if [ $pass == $sysadmin ]
    then
        while [ $i -lt 100 ]
        do
        g++ sysadmin.cpp -o proj
        ./proj
        echo "$username, What action do you want to perform? "
        echo -n "Enter 0-14: "
        read sOpt

        if [ $sOpt == 1 ]
        then
        echo "Showing all files and directories...."
        sleep 2
        echo "Loading.."
        sleep 2
        ranger
        clear
        echo " "

        elif [ $sOpt == 2 ]
        then
        echo "Showing Information of CPU.."
        echo "1- Detailed"
        echo "2- Simple"
        read -p "Enter 1-2: " opt
        sleep 2
        
        if [ $opt == 1 ]
        then
        echo "Showing Detailes Information.."
        echo "Loading..."
        sleep 2
        cat /proc/cpuinfo
        elif [ $opt == 2 ]
        then
        echo "Showing Simple Information.."
        echo "Loading..."
        sleep 2
        cpufetch
        else
        echo "Invalid Input"
        fi
        
        elif [ $sOpt == 3 ]
        then
        echo "Detailed Memory Info.. "
        echo "Loading..."
        sleep 2
        cat /proc/meminfo

        elif [ $sOpt == 4 ]
        then
        echo "Showing System details.."
        echo "Loading..."
        sleep 2
        bpytop
        clear

        elif [ $sOpt == 5 ]
        then
        sleep 2
        clear
        echo "!!Showing Your IP!!"
        echo "Loading..."
        sleep 2
        echo "-------------------------------OutPut------------------------------------"
        ifconfig

        elif [ $sOpt == 6 ]
        then
        echo "Showing all running Process.."
        echo "Please wait.."
        sleep 2
        echo "Still loading.."
        sleep 2
        top
        clear

        elif [ $sOpt == 7 ]
        then
        
        clear
        echo "Listing all Files..."
        sleep 2
        ls -l
        echo "1- Read Permission "
        echo "2- Write Permission "
        echo "3- Executable Permission "
        read -p "Enter 1-3: " opt
        read -p "Enter File with extension to change permission: " filename
        if [ -f "$filename" ];
        then

        if [ $opt == 1 ]
        then
        echo "Changing Permissions.."
        echo "Loading..."
        sleep 2
        chmod +r $filename
        echo "Permission updated.."
        elif [ $opt == 2 ]
        then
        echo "Changing Permissions.."
        echo "Loading..."
        sleep 2
        chmod +w $filename
        echo "Permission updated.."
        elif [ $opt == 3 ]
        then
        echo "Changing Permissions.."
        echo "Loading..."
        sleep 2
        chmod +x $filename
        echo "Permission updated.."
        else
        echo "Invalid Input"
        fi

        else
        echo "$filename File does not exist..Try again"
        fi
        echo " "

        sleep 2
        clear

        elif [ $sOpt == 8 ]
        then
        echo "Cheacking For Internet.."
        echo "Cheacking Speed.."
        sleep 2
        speedtest-cli

        elif [ $sOpt == 9 ]
        then
        echo "Add New Linux User.."
        read -p "Enter user Name: " user
        echo "Creating New User..."
        sleep 2
        echo "Loading..."
        sudo adduser $user
        echo "User Created.."
        sleep 2
        clear

        elif [ $sOpt == 10 ]
        then
        read -p "Enter User Name: " user
        echo "Showing user..."
        sleep 2
        id $user
        echo " "
        sleep 2
        clear

        elif [ $sOpt == 11 ]
        then
        echo "Switching User.."
        read -p "Enter User Name: " user
        echo "Switching Now..."
        sleep 2
        su $user
        echo " "
        clear

        elif [ $sOpt == 12 ]
        then
        read -p "Enter User Name to be Deleted: " user
        echo "Deleting..."
        sleep 2
        sudo deluser $user
        echo " "
        sleep 1
        clear
        
        elif [ $sOpt == 13 ]
        then
        echo "Exiting.."
        sleep 1
        exit

        elif [ $sOpt == 14 ]
        then
        echo "Hacker Mode.."
        echo "Switching to Matrix.."
        sleep 1
        echo "Loading...."
        sleep 2
        cmatrix
        clear
        
        elif [ $sOpt == 0 ]
        then
        exit
        break
        else
        echo "Invalid Input..Try again...."
        fi
        i=$[$i+1]
        done
    elif [ $pass == $password ]
    then
        while [ $i -lt 100 ]
        do
        g++ adminn.cpp -o proj
        ./proj
        echo "$username, What action do you want to perform? "
        echo -n "Enter 0-16: "
        read aOpt

        if [ $aOpt == 1 ]
        then
        listfiles

        elif [ $aOpt == 2 ]
        then

        createfiles
        
        elif [ $aOpt == 3 ]
        then

        deletefiles

        if [ -f "$delfile" ];
        then
        rm $delfile
        echo "Deleting..."
        sleep 2
        echo "Successfully Deleted."
        echo " "
        else
        echo "File Does not Exist..Try again"
        echo " "
        fi

        elif [ $aOpt == 4 ]
        then
        echo "-------------------------------OutPut------------------------------------"
        echo "Rename files here.."
        echo "Enter Old Name of File with Extension.."
        read old
        echo "Checking for file..."
        sleep 3
        if [ -f "$old" ];
        then
        echo "Ok File Exist."
        echo "Now Enter New Name for file with Extension"
        read newn
        mv $old $newn
        echo "Successfully Rename."
        echo "Now Your File Exist with $new Name"
        else
        echo "$old does not exist..Try again with correct filename."
        fi
        echo " "
        elif [ $aOpt == 5 ]
        then
        echo "Edit file content here.."
        echo "Enter File Name with Extension : "
        read edit
        echo "-------------------------------OutPut------------------------------------"
        echo "Checking for file.."
        sleep 3
        if [ -f "$edit" ];
        then
        echo "Opening file.."
        sleep 3
        nano $edit
        echo " "
        else
        echo "$edit File does not exist..Try again."
        fi
        elif [ $aOpt == 6 ]
        then
        echo "Search files here.."
        echo "Enter File Name with Extension to search"
        read f
        echo "-------------------------------OutPut------------------------------------"
        if [ -f "$f" ];
        then
        echo "Searching for $f File"
        echo "File Found."
        find /home/afzalhashmi -name $f
        echo " "
        else
        echo "File Does not Exist..Try again."
        echo " "
        fi
        elif [ $aOpt == 7 ]
        then
        echo "Detail of file here.."
        echo "Enter File Name with Extension to see Detail : "
        read detail
        echo "-------------------------------OutPut------------------------------------"
        echo "Checking for file.."
        sleep 4
        if [ -f "$detail" ];
        then
        echo "Loading Properties.."
        stat $detail
        else
        echo "$detail File does not exist..Try again"
        fi
        echo " "
        elif [ $aOpt == 8 ]
        then
        
        viewcontent
        
        echo " "
        elif [ $aOpt == 9 ]
        then
        echo "Sort files content here.."
        echo "Enter File Name with Extension to sort :"
        read sortfile
        echo "-------------------------------OutPut------------------------------------"
        if [ -f "$sortfile" ];
        then
        echo "Sorting File Content.."
        sleep 3
        sort $sortfile
        else
        echo "$sortfile File does not exist..Try again."
        fi
        echo " "
        elif [ $aOpt == 10 ]
        then
        listdirectories
        echo " "
        elif [ $aOpt == 11 ]
        then

        listfilesext

        echo " "
        elif [ $aOpt == 12 ]
        then
        echo "-------------------------------OutPut------------------------------------"
        echo "Total number of Directories here.."
        echo "Loading all directories.."
        sleep 3
        echo "Counting.."
        sleep 3
        echo "Number of Directories are : "
        echo */ | wc -l
        echo " "
        elif [ $aOpt == 13 ]
        then
        echo "-------------------------------OutPut------------------------------------"
        echo "Total Numbers of Files in Current Directory here.."
        echo "Loading all files.."
        sleep 3
        echo "Number of Files are : "
        ls -l | grep -v 'total' | grep -v '^d' | wc -l
        echo " "
        elif [ $aOpt == 14 ]
        then
        echo "-------------------------------OutPut------------------------------------"
        echo "Sort Files here.."
        echo "Your Request of Sorting file is Generated."
        echo "Sorting.."
        sleep 3
        ls | sort
        echo " "

        elif [ $aOpt == 15 ]
        then
        echo "Create New Directory here.."
        echo -n "Enter Directory Name: "
        read directory
        echo "-------------------------------OutPut------------------------------------"
        
        if [  -d "$directory"  ]
        then
        echo "Directory with given name already exist"
        echo " "
        else 
        mkdir $directory
        echo "Creating..."
        sleep 2
        echo "Successfully created."
        echo " "
        fi
        sleep 3
        clear

        elif [ $aOpt == 16 ]
        then
        echo "Delete existing Directory here.. "
        echo "Enter name of Directory you want to Delete!"
        echo "Note: Please Enter full Name."
        read directory
        echo "Looking for directory..."
        sleep 2
        echo "-------------------------------OutPut------------------------------------"

        if [ -d "$directory" ];
        then
        rmdir $directory
        echo "Deleting..."
        sleep 2
        echo "Successfully Deleted."
        echo " "
        else
        echo "Directory Does not Exist..Try again"
        echo " "
        fi
        sleep 3
        clear

        elif [ $aOpt == 0 ]
        then
        exit
        break
        else
        echo "Invalid Input..Try again...."
        fi
        i=$[$i+1]
        done

    else 
        while [ $i -lt 100 ]
        do
        gcc user.c -o proj
        ./proj
        echo "$username, What action do you want to perform? "
        echo -n "Enter 0-7: "
        read uOpt


        if [ $uOpt == 1 ]
        then
        listfiles
        echo " "

        elif [ $uOpt == 2 ]
        then
    
        createfiles
    
        elif [ $uOpt == 3 ]
        then
        echo "Edit file content here.."
        echo "Enter File Name with Extension : "
        read edit
        echo "-------------------------------OutPut------------------------------------"
        echo "Checking for file.."
        sleep 3
        if [ -f "$edit" ];
        then
        echo "Opening file.."
        sleep 3
        nano $edit
        echo " "
        else
        echo "$edit File does not exist..Try again."
        fi
        elif [ $uOpt == 4 ]
        then
        viewcontent
        echo " "
        elif [ $uOpt == 5 ]
        then
        listdirectories
        echo " "
        elif [ $uOpt == 6 ]
        then
        
        listfilesext

        echo " "
        
        elif [ $uOpt == 7 ]
        then
        echo "Create New Directory here.."
        echo -n "Enter Directory Name: "
        read directory
        if [  -f "$directory"  ]
        then
        echo "Directory with given name already exist"
        echo " "
        else 
        mkdir $directory
        echo "Creating..."
        sleep 2
        echo "Successfully created."
        echo " "
        fi

        elif [ $uOpt == 0 ]
        then
        exit
        break
        else
        echo "Invalid Input..Try again...."
        fi
        i=$[$i+1]
        done
    fi
clear
read -s -p "Enter Password for $username to exit press 0: " pass
if [ $pass == 0 ]
then 
clear
endprogram
break
fi
i=$[$i+1]
done