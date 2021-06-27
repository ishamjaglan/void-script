#!/bin/bash
echo "Script made by Isham Jaglan"
echo "Follow me on GitHub:"
echo "https://github.com/ixh4m"
mkdir downloaded-packages
cd downloaded-packages
sudo xbps-install curl
echo -e "\nWant to install Discord?"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
          yes)

            echo -e "\nInstalling Discord"
            curl -L "https://discord.com/api/download?platform=linux&format=tar.gz" -o "discord.tar.gz"
            sudo xbps-install -S libatomic
            sudo tar -xvzf discord-0.0.10.tar.gz -C /opt
            sudo ln -sf /opt/Discord/Discord /usr/bin/Discord
            sudo chmod +x /opt/Discord/discord.desktop
            sudo cp /opt/Discord/discord.desktop /usr/share/applications/discord.desktop
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
            sudo xbps-install -S vscode
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
            sudo xbps-install -Sy void-repo-nonfree void-repo-multilib
            sudo xbps-install -S steam libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit mesa-dri-32bit mono
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
            sudo xbps-install -S nmap binwalk sqlmap wireshark ftp ghidra john netcat hashcat thc-hydra ruby rust go sqlite nodejs python3 python3-pip wget
            
            #rubygems
            curl -L "https://rubygems.org/rubygems/rubygems-3.2.21.tgz" -o "rubygems.tgz"
            tar -xvzf rubygems.tgz
            sudo ruby setup.rb
            
            #wpscan
            sudo gem install wpscan
            
            #rust-cargo
            curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
            source $HOME/.cargo/env
            
            #rustscan
            sudo cargo install rustscan
            
            #metasploit framework
            curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
            chmod 755 msfinstall && \
            ./msfinstall

            #Veil-Evasion
            pip install pycrypto
            git clone https://github.com/Veil-Framework/Veil-Evasion.git
            cd Veil-Evasion/
            cd setup
            chmod +x setup.sh
            sudo setup.sh -c

            #SecLists
            wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip \
            && unzip SecList.zip \
            && rm -f SecList.zip
            sudo mv SecLists /usr/share/
            
            #haiti-hash
            sudo gem install haiti-hash

            #ffuf
            sudo go get -u github.com/ffuf/ffuf

            #

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
cd .. && rm -rf downloaded-packages
echo -e "\n\n\nScript made by Isham Jaglan"
echo "Follow me on GitHub:"
echo "https://github.com/ixh4m"
firefox https://github.com/ixh4m
