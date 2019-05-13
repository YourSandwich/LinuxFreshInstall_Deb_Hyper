#!/bin/bash
##Update your System
sudo apt update --allow-insecure-repositories && sudo apt upgrade && sudo apt dist-upgrade
sudo apt-get install software-properties-common
##configure dpkg
sudo dpkg --add-architecture i386
##add repositroy
sudo add-apt-repository -y multiverse #multiverse
sudo add-apt-repository -y http://extras.ubuntu.com/ubuntu
sudo add-apt-repository -y ppa:graphics-drivers #Nvidia
sudo add-apt-repository -y ppa:yannubuntu/boot-repair #Boot Repair
sudo add-apt-repository -y ppa:obsproject/obs-studio #OBS Studio
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer #Grub Customizer
sudo add-apt-repository -y ppa:tehnick/q4wine #q4wine
sudo add-apt-repository -y ppa:webupd8team/haguichi #Haguichi
sudo add-apt-repository -y ppa:ubuntu-wine/ppa #Wine
sudo add-apt-repository -y ppa:noobslab/apps
sudo add-apt-repository -y ppa:morphis/anbox-support #Anbox
sudo add-apt-repository -y ppa:noobslab/themes #Themes
sudo add-apt-repository -y http://apt.pop-os.org/proprietary
sudo add-apt-repository -y http://dl.winehq.org/wine-builds/ubuntu/
sudo add-apt-repository -y http://extras.ubuntu.com/ubuntu
sudo add-apt-repository -y http://linux.teamviewer.com/deb
sudo add-apt-repository -y http://ppa.launchpad.net/system76/pop/ubuntu
sudo add-apt-repository -y https://packages.microsoft.com/ubuntu/16.04/prod
sudo add-apt-repository -y http://ppa.launchpad.net/webupd8team/haguichi/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/ubuntu-wine/ppa/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/graphics-drivers/ppa/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/yannubuntu/boot-repair/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/noobslab/icons/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/danielrichter2007/grub-customizer/ubuntu
sudo add-apt-repository -y http://packages.microsoft.com/repos/vscode
sudo add-apt-repository -y http://ppa.launchpad.net/noobslab/themes/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/morphis/anbox-support/ubuntu
sudo add-apt-repository -y http://dl.google.com/linux/chrome/deb/
sudo add-apt-repository -y http://ppa.launchpad.net/tehnick/q4wine/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/noobslab/apps/ubuntu
sudo add-apt-repository -y http://ppa.launchpad.net/obsproject/obs-studio/ubuntu

##Update repository
sudo apt update --allow-insecure-repositories && sudo apt upgrade

while true; do
    read -p "Do you wish to downlaod packages?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

##donload packages
wget -q https://packages.microsoft.com/config/ubuntu/18.10/packages-microsoft-prod.deb #Microsoft .NET
wget -q https://download.teamviewer.com/download/linux/teamviewer_amd64.deb #Teamviever
wget -q https://www.vpn.net/installers/logmein-hamachi_2.1.0.198-1_amd64.deb #Hamachi
wget -q https://az764295.vo.msecnd.net/stable/51b0b28134d51361cf996d2f0a1c698247aeabd8/code_1.33.1-1554971066_amd64.deb #Visual Studio Code
wget -q https://download.virtualbox.org/virtualbox/6.0.6/Oracle_VM_VirtualBox_Extension_Pack-6.0.6.vbox-extpack #Virtualbox Extension Pack
wget -q http://crossover.codeweavers.com/redirect/crossover.deb #crossover
wget -q https://tuxera.com/opensource/ntfs-3g_ntfsprogs-2017.3.23.tgz
wget -q http://archive.ubuntu.com/ubuntu/pool/main/i/icu/libicu55_55.1-7_amd64.deb #libicu55
wget -q http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u11_amd64.deb #libssl1.0.0
wget -q https://dl.google.com/dl/android/studio/ide-zips/3.4.0.18/android-studio-ide-183.5452501-linux.tar.gz #Android Studio
wget -q https://s3.amazonaws.com/parsec-build/package/parsec-linux.deb #parsec
wget -q https://www50.zippyshare.com/d/cjJRscKq/760233/jre-8u211-linux-x64.tar.gz #java

while true; do
    read -p "Do you wish to install apt Apps?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

#Install apt Apps
sudo apt install -y wine zip unzip yum arc-theme snapd ktorrent vlc krita obs-studio audacity grub-customizer q4wine inkscape haguichi discord filezilla google-chrome-stable atom lutris steam virtualbox winetricks gimp dish xdotool wireshark zenmap nmap gdebi playonlinux boot-repair blender gnome-tweaks android-sdk lsb git dialog
sudo apt update --allow-insecure-repositories && sudo apt upgrade

while true; do
    read -p "Do you wish to install .deb packages?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

##install deb
sudo gdebi parsec-linux.deb #parsec
sudo gdebi libicu55_55.1-7_amd64.deb #libicu55
sudo gdebi libssl1.0.0_1.0.1t-1+deb8u11_amd64.deb #libssl1.0.0
sudo gdebi packages-microsoft-prod.deb #Microsoft .NET
sudo gdebi teamviewer_amd64.deb #Teamviever
sudo gdebi logmein-hamachi_2.1.0.198-1_amd64.deb #Hamachi
sudo gdebi code_1.33.1-1554971066_amd64.deb #Visual Studio Code
sudo gdebi crossover.deb && /opt/cxoffice/bin/cxfix --auto #Install + fix missing 32-bit libraries

#Microsoft .NET
sudo apt install -y apt-transport-https     #Microsoft .NET
sudo apt update
sudo apt install -y dotnet-sdk-2.2          #Microsoft .NET
#

while true; do
    read -p "Do you want to install Java?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

##Java
sudo mkdir /usr/java
tar zxvf jre-8u211-linux-x64.tar.gz
sudo mv jre1.8.0_211 /usr/java

while true; do
    read -p "Do you wish to install Android Stuff?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

##Anbox
#Kernal
sudo apt install -y linux-headers-generic anbox-modules-dkms
sudo modprobe ashmem_linux
sudo modprobe binder_linux
ls -1 /dev/{ashmem,binder}
sudo apt install android-tools-adb
sudo snap install --devmode --beta anbox                   #Anbox

##Android-Studio
tar xvzf android-studio-ide-183.5452501-linux.tar.gz
cd android-studio/bin
./studio.sh
cd ../..

while true; do
    read -p "Do you wish to install Snap packages?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

##Snap Install
sudo snap install rambox                                   #rambox
sudo snap install wps-office-all-lang-no-internet          #wps office
sudo snap install dotnet                                   #dotnet
##Git install

while true; do
    read -p "Do you wish to install Git programs?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

#Gamemode
sudo apt install -y gamemode                #Gamemode
sudo apt install -y meson libsystemd-dev pkg-config ninja-build git
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
./bootstrap.sh
cd ..
#

#OsuLazer
git clone https://github.com/Alexmitter/osu-lazer-linux-installer.git
cd osu-lazer-linux-installer
sudo bash ./start.sh
cd ..
#

#Finish
sudo apt update -y --allow-insecure-repositories && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove

while true; do
    read -p "Do you want to reboot your System?(yes/no)" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
reboot
