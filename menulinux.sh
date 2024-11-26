#!/bin/bash

echo "=================="
echo "      Menu"
echo "=================="
echo "Gestionar usuarios" 
echo "Gestionar permisos" 
echo "Exit"
read -p "Enter your option: " opcion
echo "You have selected $opcion"  

case $opcion in
    1)
        echo "=================="
        echo "      Menu"
        echo "=================="
        echo "1) Crear usuario"
        echo "2) Crear grupo"
        echo "3) Borrar usuario" 
        echo "4) Borrar grupo"
        echo "5) Introducir un usuario en un grupo"
        echo "6) Sacar un usuario de un grupo"
        echo "7) Exit"
        read -p "Enter your choice: " choice
        echo "You have selected $choice"
    


    case $choice in
        1)
            echo "Crear usuario"
            read -p "Introduzca el nombre del usuario: " username
            useradd $username
            ;;
        2)
            echo "Crear grupo"
            read -p "Introduzca el nombre del grupo: " groupname
            groupadd $groupname
            ;;
        3)
            echo "Borrar usuario"
            read -p "Introduzca el nombre del usuario: " username
            userdel $username
            ;;
        4)
            echo "Borrar grupo"
            read -p "Introduzca el nombre del grupo: " groupname
            groupdel $groupname
            ;;
        5)
            echo "Introducir un usuario en un grupo"
            read -p "Introduzca el nombre del usuario: " username
            read -p "Introduzca el nombre del grupo: " groupname
            usermod -a -G $groupname $username
            ;;
        6)
            echo "Sacar un usuario de un grupo"
            read -p "Introduzca el nombre del usuario: " username
            read -p "Introduzca el nombre del grupo: " groupname
            usermod -R -g $groupname $username
            ;;
        7)
            echo "Permisos sobre usuarios dentro de un grupo"
            read -p "Introduzca el nombre del grupo: " groupname
            chgrp $groupname *
            ;;
        8)
            echo "Permisos sobre grupos"
            read -p "Introduzca el nombre del grupo: " groupname
            chmod $groupname *
            ;;
        9)
            echo "Propiedad de un archivo a un usuario"
            read -p "Introduzca el nombre del usuario: " username
            read -p "Introduzca el nombre del archivo: " filename
            chown $username $filename
            ;;
        10)
            echo "Exit"
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
    ;;
    2)
        echo "=================="
        echo "      Menu"
        echo "=================="
        echo "1) Permisos sobre usuarios dentro de un grupo"
        echo "2) Permisos sobre grupos"
        echo "3) Propiedad de un archivo a un usuario"
        echo "4) Exit"
        read -p "Enter your choice: " choice
        echo "You have selected $choice"
        ;;

        case $choice in
            1)
                echo "Permisos sobre usuarios dentro de un grupo"
                read -p "Introduzca el nombre del grupo: " groupname
                chgrp $groupname *
                ;;
            2)
                echo "Permisos sobre grupos"
                read -p "Introduzca el nombre del grupo: " groupname
                chmod $groupname *
                ;;
            3)
                echo "Propiedad de un archivo a un usuario"
                read -p "Introduzca el nombre del usuario: " username
                read -p "Introduzca el nombre del archivo: " filename
                chown $username $filename
                ;;
            4)
                echo "Exit"
                ;;
            *)
                echo "Invalid choice"
                ;;
        esac
        ;;
    3)
        echo "Exit"
        ;;
    *)
        echo "Invalid option"
        ;;
esac
