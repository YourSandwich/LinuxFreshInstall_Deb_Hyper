#!/bin/bash
##Update your System
apt update && apt upgrade && apt dist-upgrade
##configure dpkg
sudo dpkg --add-architecture i386
##add repositroy
apt-add-repository -y multiverse #multiverse
apt-add-repository -y http://extras.ubuntu.com/ubuntu
add-apt-repository -y ppa:graphics-drivers #Nvidia
add-apt-repository -y ppa:yannubuntu/boot-repair #Boot Repair
add-apt-repository -y ppa:obsproject/obs-studio #OBS Studio
add-apt-repository -y ppa:danielrichter2007/grub-customizer #Grub Customizer
add-apt-repository -y ppa:tehnick/q4wine #q4wine
add-apt-repository -y ppa:webupd8team/haguichi #Haguichi
add-apt-repository -y ppa:ubuntu-wine/ppa #Wine
add-apt-repository -y ppa:noobslab/apps
add-apt-repository -y ppa:morphis/anbox-support #Anbox
add-apt-repository -y ppa:noobslab/themes #Themes

##Update repository
apt update && apt upgrade

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

#Install apt Apps
sudo apt install -y wine zip unzip arc-theme snapd ktorrent vlc obs-studio audacity grub-customizer q4wine inkscape haguichi discord filezilla google-chrome-stable atom lutris steam virtualbox winetricks gimp dish xdotool wireshark zenmap nmap gdebi playonlinux boot-repair blender gnome-tweaks android-sdk lsb git dialog
sudo apt update && sudo apt upgrade
##install deb
dpkg -i libicu55_55.1-7_amd64.deb #libicu55
dpkg -i libssl1.0.0_1.0.1t-1+deb8u11_amd64.deb #libssl1.0.0
dpkg -i packages-microsoft-prod.deb #Microsoft .NET
dpkg -i teamviewer_amd64.deb #Teamviever
dpkg -i logmein-hamachi_2.1.0.198-1_amd64.deb #Hamachi
dpkg -i code_1.33.1-1554971066_amd64.deb #Visual Studio Code
dpkg -i crossover.deb && /opt/cxoffice/bin/cxfix --auto #Install + fix missing 32-bit libraries

#Microsoft .NET
apt install -y apt-transport-https     #Microsoft .NET
apt update
apt install -y dotnet-sdk-2.2          #Microsoft .NET
#

##Anbox
#Kernal
apt install -y linux-headers-generic anbox-modules-dkms
modprobe ashmem_linux
modprobe binder_linux
ls -1 /dev/{ashmem,binder}
apt install android-tools-adb
##Snap Install
snap install --devmode --beta anbox                   #Anbox
snap install rambox                                   #rambox
snap install wps-office-all-lang-no-internet          #wps office
snap install dotnet                                   #dotnet
##Git install

#Gamemode
apt insatll -y gamemoded               #Gamemode
apt install -y meson libsystemd-dev pkg-config ninja-build git
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
./bootstrap.sh
cd ..
#

#OsuLazer
git clone https://github.com/Alexmitter/osu-lazer-linux-installer.git
cd osu-lazer-linux-installer
bash start.sh
cd ..
#

#Finish
sudo apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot
