#!/bin/bash -x

echo "Welcome To Address Book"
j=1

function AddName() 
{

read -p "Enter the Name atleast 0ne UpperChar : " Name

pat='^[a-zA-Z]*[A-Z]+[a-zA-Z]*$'

if [[ $Name =~ $pat ]]
then
     echo $Name
else
     echo "pattern does not match plz write valid name"
fi

}
function LastName()
{

read -p "Enter the Name atleast 0ne UpperChar : " LastName

pat='^[a-zA-Z]*[A-Z]+[a-zA-Z]*$'

if [[ $LastName =~ $pat ]]
then
     echo $LastName
else
     echo "pattern does not match plz write valid name"
fi


}
function Address()
{

read -p "Enter the Address : " Address

pat='^[a-zA-Z]{8,}$'

if [[ $Address  =~ $pat ]]
then
       echo $Address
else
       echo "Pattern does not match write a valid one"
fi
}

function City()
{

read -p "Enter the City atleast one uppercase : " City

pat='^[a-zA-Z]*[A-Z]+[a-zA-Z]*$'

if [[ $City =~ $pat ]]
then
     echo $City
else
     echo "pattern does not match plz write valid name"
fi

}

function State()
{

read -p "Enter the name of State atleast one uppercase : " State

pat='^[a-zA-Z]*[A-Z]+[a-zA-Z]*$'

if [[ $State =~ $pat ]]
then
     echo $State
else
     echo "pattern does not match plz write valid name"
fi

}

function ZipCode()
{

read -p "Enter the ZipCode limit in 6 only : " Zipcode

pat='^[0-9]{6}'

if [[ $ZipCode =~ $pat ]]
then
      echo $ZipCode
else
      echo "It is Not Valid Code"
fi
}

function PhoneNo()
{

read -p "Enter the PhoneNo between 10 digit while compulsory start with (+91) : " PhoneNo

pat='^(.+)[91]{1}[ ]?[0-9]{10}'

if [[ $PhoneNo =~ $pat ]]
then
      echo $PhoneNo
else
      echo "It is Not valid No"
fi
}

while [ $j  -eq 1 ]
do
read -p "Choose for Add user 1) , Edit User 2) , Delete User 3) , Sort by Name 4) : " option

                                       case $option in 
                                                   1 )
                                                        #Add User
                                                        read -p "Enter the no of person between 1 to 5 : " No
                                                        for (( i=1; i<=$No; i++ ))
                                                        do    
                                                        t=0
                                                        if [ $i -eq 1 ]
                                                        then

                                                                #User $i
                                                                declare -a AddUser1
                                                                Fname=$(AddName)
                                                                AddUser1[$t]=$Fname
                                                                ((t++))


                                                                 FlastName=$(LastName)
                                                                 AddUser1[$t]=$FlastName
                                                                ((t++))

                                                                 FAddress=$(Address)
                                                                 AddUser1[$t]=$FAddress
                                                                ((t++))

                                                                 Fcity=$(City)
                                                                 AddUser1[$t]=$Fcity
                                                                 ((t++))

                                                                 Fstate=$(State)
                                                                 AddUser1[$t]=$Fstate
                                                                 ((t++))

                                                                 Fzipcode=$(ZipCode)
                                                                 AddUser1[$t]=$Fzipcode
                                                                 ((t++))

                                                                 FPhoneNo=$(PhoneNo)
                                                                 AddUser1[$t]=$FPhoneNo
                                                                 ((t++))
                                                               echo "Total Information $i : " ${AddUser1[@]}
                                                               echo "Index Of Array    $i : " ${!AddUser1[@]}
                                                               echo "Lenght Of Array   $i : " ${#AddUser1[@]}
                                                               printf "Appended text is: %s\n" "${AddUser1[@]}" >> AddUser1.txt



                                                        elif [ $i -eq 2 ]
                                                        then
                                                                f=0
                                                                #User $i
                                                                declare -a AddUser2
                                                                 Fname=$(AddName)
                                                                AddUser2[$f]=$Fname
                                                                ((f++))


                                                                 FlastName=$(LastName)
                                                                 AddUser2[$f]=$FlastName
                                                                ((f++))

                                                                 FAddress=$(Address)
                                                                 AddUser2[$f]=$FAddress
                                                                ((f++))

                                                                 Fcity=$(City)
                                                                 AddUser2[$f]=$Fcity
                                                                 ((f++))

                                                                 Fstate=$(State)
                                                                 AddUser2[$f]=$Fstate
                                                                 ((f++))

                                                                 Fzipcode=$(ZipCode)
                                                                 AddUser2[$f]=$Fzipcode
                                                                 ((f++))

                                                                 FPhoneNo=$(PhoneNo)
                                                                 AddUser2[$f]=$FPhoneNo
                                                                 ((f++))

                                                               echo "Total Information $i : " ${AddUser2[@]}
                                                               echo "Index Of Array    $i : " ${!AddUser2[@]}
                                                               echo "Lenght Of Array   $i : " ${#AddUser2[@]}
                                                               printf "Appended text is: %s\n" "${AddUser2[@]}" >> AddUser2.txt


                                                        elif [ $i -eq 3 ]
                                                        then
                                                                c=0
                                                                #User $i
                                                                declare -a AddUser3

                                                                 Fname=$(AddName)
                                                                AddUser3[$c]=$Fname
                                                                ((c++))

                                                                 FlastName=$(LastName)
                                                                 AddUser3[$c]=$FlastName
                                                                ((c++))

                                                                 FAddress=$(Address)
                                                                 AddUser3[$c]=$FAddress
                                                                ((c++))

                                                                 Fcity=$(City)
                                                                 AddUser3[$c]=$Fcity
                                                                 ((c++))

                                                                 Fstate=$(State)
                                                                 AddUser3[$c]=$Fstate
                                                                 ((c++))

                                                                 Fzipcode=$(ZipCode)
                                                                 AddUser3[$c]=$Fzipcode
                                                                 ((c++))

                                                                 FPhoneNo=$(PhoneNo)
                                                                 AddUser3[$c]=$FPhoneNo
                                                                 ((c++))

                                                               echo "Total Information $i : " ${AddUser3[@]}
                                                               echo "Index Of Array    $i : " ${!AddUser3[@]}
                                                               echo "Lenght Of Array   $i : " ${#AddUser3[@]}
                                                               printf "Appended text is: %s\n" "${AddUser3[@]}" >> AddUser3.txt


                                                        elif [ $i -eq 4 ]
                                                        then
                                                                d=0
                                                                #User $i
                                                                declare -a AddUser4

                                                                 Fname=$(AddName)
                                                                AddUser4[$d]=$Fname
                                                                ((d++))


                                                                 FlastName=$(LastName)
                                                                 AddUser4[$d]=$FlastName
                                                                ((d++))

                                                                 FAddress=$(Address)
                                                                 AddUser4[$d]=$FAddress
                                                                ((d++))

                                                                 Fcity=$(City)
                                                                 AddUser4[$d]=$Fcity
                                                                 ((d++))

                                                                 Fstate=$(State)
                                                                 AddUser4[$d]=$Fstate
                                                                 ((d++))

                                                                 Fzipcode=$(ZipCode)
                                                                 AddUser4[$d]=$Fzipcode
                                                                 ((d++))

                                                                 FPhoneNo=$(PhoneNo)
                                                                 AddUser4[$d]=$FPhoneNo
                                                                 ((d++))

                                                               echo "Total Information $i : " ${AddUser4[@]}
                                                               echo "Index Of Array    $i : " ${!AddUser4[@]}
                                                               echo "Lenght Of Array   $i : " ${#AddUser4[@]}
                                                               printf "Appended text is: %s\n" "${AddUser4[@]}" >> AddUser4.txt


                                                        elif [ $i -eq 5 ]
                                                        then
                                                                e=0
                                                                #User $i
                                                                declare -a AddUser5

                                                                Fname=$(AddName)
                                                                AddUser5[$e]=$Fname
                                                                ((e++))

                                                                 FlastName=$(LastName)
                                                                 AddUser5[$e]=$FlastName
                                                                ((e++))

                                                                 FAddress=$(Address)
                                                                 AddUser5[$e]=$FAddress
                                                                ((e++))

                                                                 Fcity=$(City)
                                                                 AddUser5[$e]=$Fcity
                                                                 ((e++))

                                                                 Fstate=$(State)
                                                                 AddUser5[$e]=$Fstate
                                                                 ((e++))

                                                                 Fzipcode=$(ZipCode)
                                                                 AddUser5[$e]=$Fzipcode
                                                                 ((e++))

                                                                 FPhoneNo=$(PhoneNo)
                                                                 AddUser5[$e]=$FPhoneNo
                                                                 ((e++))

                                                               echo "Total Information $i : " ${AddUser5[@]}
                                                               echo "Index Of Array    $i : " ${!AddUser5[@]}
                                                               echo "Lenght Of Array   $i : " ${#AddUser5[@]}
                                                               printf "Appended text is: %s\n" "${AddUser5[@]}" >> AddUser5.txt




                                                       fi
                                                       done
                                                        ;;
                                                  2 )
                                                       #Edit User
                                                       #Name(1) LastName(2) Address(3) City(4) State(5) ZipCode(6) PhoneCode(7)
                                                        echo "Choose from Name(1) LastName(2) Address(3) City(4) State(5) ZipCode(6) PhoneNo(7)"
                                                        read -p "Choose which Information You Have to Edit  : " EditOption
                                                                 case $EditOption in 
                                                                                  1 )
                                                                                     read -p "Enter your old name : "    sName
                                                                                     if [ "${AddUser1[0]}" = "$Name" ]
                                                                                     then
                                                                                         Name=$(AddName)
                                                                                         cat AddUser1.txt | grep -v $sName > AddUser1.txt
                                                                                         echo -e "$Name" >> AddUser1.txt
                                                                                         sed '/s/$sName/$Name/g' >> AddUser1.txt

                                                                                         cat AddUser1.txt
                                                                                           AddUser1[0]=$Name

                                                                                     elif [ "${AddUser2[0]}" = "$Name" ]
                                                                                     then
                                                                                         read -p "Enter the new Name : " Name
                                                                                         cat AddUser2.txt | grep -v $sName > AddUser2.txt
                                                                                         echo -e "$Name" >> AddUser2.txt
                                                                                         sed  '/s/$sName/$Name/g' >> AddUser2.txt
                                                                                         cat AddUser2.txt
                                                                                          AddUser2[0]=$Name

                                                                                     elif [ "${AddUser3[0]}" = "$Name" ]
                                                                                     then
                                                                                         FileName="$AddUser3.txt"
                                                                                         read -p "Enter the new Name : " Name
                                                                                         cat $FileName | grep -v $sName > $FileName
                                                                                         sed -i 's/$sName/$Name/g' AddUser3.txt
                                                                                         cat AddUser3.txt
                                                                                          AddUser3[0]=$Name

                                                                                     elif [ "${AddUser4[0]}" = "$Name" ]
                                                                                     then
                                                                                         FileName="$AddUser4.txt"
                                                                                         read -p "Enter the new Name : " Name
                                                                                         cat $FileName | grep -v $sName > $FileName
                                                                                         sed -i 's/$sName/$Name/g' AddUser4.txt
                                                                                         cat AddUser4.txt
                                                                                          AddUser4[0]=$Name

                                                                                     elif [ "${AddUser5[0]}" = "$Name" ]
                                                                                     then
                                                                                         FileName="$AddUser5.txt"
                                                                                         read -p "Enter the new Name : " Name
                                                                                         cat $FileName | grep -v $sName > $FileName
                                                                                         sed -i 's/$sName/$Name/g' AddUser5.txt
                                                                                         cat AddUser5.txt
                                                                                          AddUser5[0]=$Name

                                                                                     fi
                                                                                      ;;
                                                                                   2 )
                                                                                     read -p "Enter your old Lastname : "   LastName
                                                                                     if [ "${AddUser1[1]}" = "$LastName" ]
                                                                                     then
                                                                                         read -p "Enter the new LastName : " LastName
                                                                                           AddUser1[1]=$LastName
                                                                                     elif [ "${AddUser2[1]}" = "$LastName" ]
                                                                                     then
                                                                                          read -p "Enter the new LastName : " LastName
                                                                                           AddUser2[1]=$LastName
                                                                                     elif [ "${AddUser3[1]}" = "$LastName" ]
                                                                                     then
                                                                                          read -p "Enter the new LastName : " LastName
                                                                                           AddUser3[1]=$LastName
                                                                                     elif [ "${AddUser4[1]}" = "$LastName" ]
                                                                                     then
                                                                                          read -p "Enter the new LastName : " LastName
                                                                                           AddUser4[1]=$LastName
                                                                                     elif [ "${AddUser5[1]}" = "$LastName" ]
                                                                                     then
                                                                                          read -p "Enter the new LastName : " LastName
                                                                                           AddUser5[1]=$LastName


                                                                                     fi
                                                                                      ;;
                                                                                   3 )
                                                                                     read -p "Enter your old Address : "   Address
                                                                                     if [ "${AddUser1[3]}" = "$Address" ]
                                                                                     then
                                                                                         read -p "Enter the new Address : " Address
                                                                                           AddUser1[3]=$Address
                                                                                     elif [ "${AddUser2[3]}" = "$Address" ]
                                                                                     then
                                                                                          read -p "Enter the new Address : " Address
                                                                                           AddUser2[1]=$Address
                                                                                     elif [ "${AddUser3[3]}" = "$Address" ]
                                                                                     then
                                                                                          read -p "Enter the new Address : " Address
                                                                                           AddUser3[1]=$Address
                                                                                     elif [ "${AddUser4[3]}" = "$Address" ]
                                                                                     then
                                                                                          read -p "Enter the new Address : " Address
                                                                                           AddUser4[1]=$Address
                                                                                     elif [ "${AddUser5[3]}" = "$Address" ]
                                                                                     then
                                                                                          read -p "Enter the new Address : " Address
                                                                                           AddUser5[1]=$Address


                                                                                     fi
                                                                                     ;;
                                                                                   4 )
                                                                                    read -p "Enter your old City : " City
                                                                                     if [ "${AddUser1[4]}" = "$City" ]
                                                                                     then
                                                                                         read -p "Enter the new City : " City
                                                                                           AddUser1[4]=$City
                                                                                     elif [ "${AddUser2[4]}" = "$City" ]
                                                                                     then
                                                                                          read -p "Enter the new City : " City
                                                                                           AddUser2[4]=$City
                                                                                     elif [ "${AddUser3[4]}" = "$City" ]
                                                                                     then
                                                                                          read -p "Enter the new City : " City
                                                                                           AddUser3[4]=$City
                                                                                     elif [ "${AddUser4[4]}" = "$City" ]
                                                                                     then
                                                                                          read -p "Enter the new City : " City
                                                                                           AddUser4[4]=$City
                                                                                     elif [ "${AddUser5[4]}" = "$City" ]
                                                                                     then
                                                                                          read -p "Enter the new City : " City
                                                                                           AddUser5[4]=$City

                                                                                     fi
                                                                                     ;;
                                                                                   5 )
                                                                                    read -p "Enter your old State : " State
                                                                                     if [ "${AddUser1[5]}" = "$State" ]
                                                                                     then
                                                                                         read -p "Enter the new State : " State
                                                                                           AddUser1[5]=$State
                                                                                     elif [ "${AddUser2[5]}" = "$State" ]
                                                                                     then
                                                                                          read -p "Enter the new State : " State
                                                                                           AddUser2[5]=$State
                                                                                     elif [ "${AddUser3[5]}" = "$State" ]
                                                                                     then
                                                                                          read -p "Enter the new State : " State
                                                                                           AddUser3[5]=$State
                                                                                     elif [ "${AddUser4[5]}" = "$State" ]
                                                                                     then
                                                                                          read -p "Enter the new State : " State
                                                                                           AddUser4[5]=$State
                                                                                     elif [ "${AddUser5[5]}" = "$State" ]
                                                                                     then
                                                                                          read -p "Enter the new State : " State
                                                                                           AddUser5[5]=$State


                                                                                     fi
                                                                                     ;;
                                                                                   6 )
                                                                                    read -p "Enter your old ZipCode : " ZipCode
                                                                                     if [ "${AddUser1[6]}" = "$ZipCode" ]
                                                                                     then
                                                                                         read -p "Enter the new ZipCode : " ZipCode
                                                                                           AddUser1[6]=$ZipCode
                                                                                     elif [ "${AddUser2[6]}" = "$ZipCode" ]
                                                                                     then
                                                                                          read -p "Enter the new ZipCode : " ZipCode
                                                                                           AddUser2[6]=$ZipCode
                                                                                     elif [ "${AddUser3[6]}" = "$ZipCode" ]
                                                                                     then
                                                                                          read -p "Enter the new ZipCode : " ZipCode
                                                                                           AddUser3[6]=$ZipCode
                                                                                     elif [ "${AddUser4[6]}" = "$ZipCode" ]
                                                                                     then
                                                                                          read -p "Enter the new ZipCode : " ZipCode
                                                                                           AddUser4[6]=$ZipCode
                                                                                     elif [ "${AddUser5[6]}" = "$ZipCode" ]
                                                                                     then
                                                                                          read -p "Enter the new ZipCode : " ZipCode
                                                                                           AddUser5[6]=$ZipCode


                                                                                     fi
                                                                                     ;;
                                                                                   7 )
                                                                                     read -p "Enter your old name : " PhoneNo
                                                                                     if [ "${AddUser1[7]}" = "$PhoneNo" ]
                                                                                     then
                                                                                         read -p "Enter the new name : " PhoneNo
                                                                                           AddUser1[7]=$PhoneNo
                                                                                     elif [ "${AddUser2[7]}" = "$PhoneNo" ]
                                                                                     then
                                                                                          read -p "Enter the new Name : " PhoneNo
                                                                                             AddUser2[7]=$PhoneNo
                                                                                     elif [ "${AddUser3[7]}" = "$PhoneNo" ]
                                                                                     then
                                                                                          read -p "Enter the new Name : " PhoneNo
                                                                                             AddUser3[7]=$PhoneNo
                                                                                     elif [ "${AddUser4[7]}" = "$PhoneNo" ]
                                                                                     then
                                                                                          read -p "Enter the new Name : " PhoneNo
                                                                                             AddUser4[7]=$PhoneNo
                                                                                     elif [ "${AddUser5[7]}" = "$PhoneNo" ]
                                                                                     then
                                                                                          read -p "Enter the new Name : " PhoneNo
                                                                                             AddUser5[7]=$PhoneNo


                                                                                     fi
                                                                                     ;;
                                                                              esac
                                                                              echo "New Edited User 1 Data Is" ${AddUser1[@]}
                                                                              echo "New Edited User 2 Data Is" ${AddUser2[@]}
                                                                              echo "New Edited User 1 Data Is" ${AddUser3[@]}
                                                                              echo "New Edited User 2 Data Is" ${AddUser4[@]}
                                                                              echo "New Edited User 1 Data Is" ${AddUser5[@]}



                                                                ;;

                                                   3 )
                                                       #Delete User
                                                       echo "First and Last Name of User " 
                                                       read -p "First Name Of User : " Name
                                                       read -p "Last Name of User  : " LastName
                                                                 if [ "${AddUser1[0]}" = "$Name" ] && [ "${AddUser1[1]}" = "$LastName" ]
                                                                 then
                                                                     echo "******deleting total User1 Details*******"
                                                                     unset AddUser1[@]

                                                                 elif [ "${AddUser2[0]}" = "$Name" ] && [ "${AddUser2[1]}" = "$LastName" ]
                                                                 then
                                                                     echo "******deleting total User2 Details********"
                                                                     unset AddUser2[@]
                                                                 elif [ "${AddUser3[0]}" = "$Name" ] && [ "${AddUser3[1]}" = "$LastName" ]
                                                                 then
                                                                     echo "******deleting total User2 Details********"
                                                                     unset AddUser3[@]
                                                                 elif [ "${AddUser4[0]}" = "$Name" ] && [ "${AddUser4[1]}" = "$LastName" ]
                                                                 then
                                                                     echo "******deleting total User2 Details********"
                                                                     unset AddUser4[@]
                                                                 elif [ "${AddUser5[0]}" = "$Name" ] && [ "${AddUser5[1]}" = "$LastName" ]
                                                                 then
                                                                     echo "******deleting total User2 Details********"
                                                                     unset AddUser5[@]

                                                                 fi

                                                                 if [ ${#AddUser1[@]} -eq 0 ]
                                                                 then
                                                                     echo "User 1 ${AddUser1[@]} is Empty"

                                                                 elif [ ${#AddUser2[@]} -eq 0 ]
                                                                 then
                                                                     echo "User 2 ${AddUser2[@]} is Empty"
                                                                  elif [ ${#AddUser3[@]} -eq 0 ]
                                                                 then
                                                                     echo "User 3 ${AddUser3[@]} is Empty"
                                                                  elif [ ${#AddUser4[@]} -eq 0 ]
                                                                 then
                                                                     echo "User 4 ${AddUser4[@]} is Empty"
                                                                  elif [ ${#AddUser5[@]} -eq 0 ]
                                                                 then
                                                                     echo "User 5 ${AddUser5[@]} is Empty"
                                                                 fi
                                                                 echo ${AddUser1[@]}
                                                                 echo ${AddUser2[@]}
                                                                 echo ${AddUser3[@]}
                                                                 echo ${AddUser4[@]}
                                                                 echo ${AddUser5[@]}

                                                          ;;


                                                 4 )
                                                   #Search User
                                                    read -p "Enter 1st and last Name of User" Name
                                                    if [ "${AddUser1[0]} ${AddUser1[1]}" = "$Name" ]
                                                    then
                                                    echo "User1 Details" ${AddUser1[@]}

                                                    elif [ "${AddUser2[0]} ${AddUser2[1]}" = "$Name" ]
                                                    then
                                                    echo "User2 Details" ${AddUser2[@]}

                                                    elif [ "${AddUser3[0]} ${AddUser3[1]}" = "$Name" ]
                                                    then
                                                    echo "User2 Details" ${AddUser3[@]}

                                                    elif [ "${AddUser4[0]} ${AddUser4[1]}" = "$Name" ]
                                                    then
                                                    echo "User2 Details" ${AddUser4[@]}

                                                    elif [ "${AddUser5[0]} ${AddUser5[1]}" = "$Name" ]
                                                    then
                                                    echo "User2 Details" ${AddUser5[@]}

                                                    fi
                                                    ;;

                                              esac
done
