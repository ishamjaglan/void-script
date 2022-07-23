#!/bin/bash
echo "Script made by Isham Jaglan"
echo "Follow me on GitHub:"
echo "https://github.com/ixh4m"
mkdir downloaded-packages
cd downloaded-packages
sudo xbps-install -Syu axel void-repo-multilib void-repo-nonfree void-repo-multilib-nonfree flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
export PATH=$PATH:/var/lib/flatpak/exports/share:/home/$USER/.local/share/flatpak/exports/share
echo "export PATH=$PATH:/var/lib/flatpak/exports/share:/home/$USER/.local/share/flatpak/exports/share" >> ~/.bash_profile
echo "export PATH=$PATH:/var/lib/flatpak/exports/share:/home/$USER/.local/share/flatpak/exports/share" >> ~/.zshenv
source ~/.bash_profile
source ~/.zshenv
flatpak install -y flathub
sudo xbps-install -Syu
echo -e "\nWant to install Discord?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Discord"
	    flatpak install -y com.discordapp.Discord
	    sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install LibreOffice?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling LibreOffice"
	    sudo xbps-install -y libreoffice
	    sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install VSCode?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling VSCode"
            sudo xbps-install -Sy vscode
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install Steam?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Steam"
            sudo xbps-install -Sy steam libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit mesa-dri-32bit mono
            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install Hacking Tools?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\n So you want to be a hacker XD"
            echo -e "\nInstalling the tools"
            sudo xbps-install -Sy nmap binwalk sqlmap wireshark ghidra john netcat hashcat thc-hydra ruby rust go sqlite nodejs python3 python3-pip wget gcc ruby-devel libxml2 libxml2-devel libxslt libxslt-devel inetutils
            
            #rubygems
	    sudo xbps-install -y ruby-devel

            #wpscan
            sudo gem install nokogiri
            sudo gem install wpscan
            
            #rust-cargo
            curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
            source $HOME/.cargo/env
            
            #rustscan
            sudo cargo install rustscan

            #SecLists
            git clone https://github.com/danielmiessler/SecLists.git
            sudo mv SecLists /usr/share/
            
            #haiti-hash
            sudo gem install haiti-hash

            #ffuf
            sudo go get -u github.com/ffuf/ffuf



            #metasploit framework
            axel "http://downloads.metasploit.com/data/releases/metasploit-latest-linux-installer.run"
            chmod +x metasploit-latest-linux-installer.run
            sudo ./metasploit-latest-linux-installer.run
	    rm metasploit-latest-linux-installer.run
            sleep 1
            break
            ;;
          no)
            echo -e "You can't hack you noob."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install Xtreme Download Manager?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Xtreme Download Manager"
            axel "https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz" -o "xdm.tar.xz"
	    tar -xf xdm.tar.xz
	    sudo ./install.sh
	    rm install.sh readme.sh xdm.tar.xz
	    sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install Spotify?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Spotify"
	    flatpak install -y com.spotify.Client
	    sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done
echo -e "\nWant to install Bitwarden?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Spotify"
	    flatpak install -y com.bitwarden.desktop
	    sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done

echo -e "\nWant to install QEMU?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling QEMU and Virt-Manager"
            sudo xbps-install -y qemu virt-manager

            sleep 1
            break
            ;;
          no)
            echo -e "Nise."
            sleep 1
            break
            ;;
  esac
done

cd .. && rm -rf downloaded-packages
echo -e "\n\n\nScript made by Isham Jaglan"
echo "Follow me on GitHub:"
echo "https://github.com/ixh4m"
firefox https://github.com/ixh4m
