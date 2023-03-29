# Fresh-Ubuntu-Setup

this is my Ubuntu enviroment as a Android Developer with the applicaions
that I personaly need in my every day usage 

1. update the system

```bash
sudo apt-get update && sudo apt-get upgrade -y

sudo apt update && sudo apt upgrade
```

2. Increase the swap memory

```bash
sudo swapon --show
sudo swapoff /swapfile
sudo fallocate -l 8G /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
```

3. add system packages
    - AnyConnect:
    
    ```bash
    sudo apt-get install openconnect network-manager-openconnect-gnome
    ```
    
    - Gnome Chrome Extensions:
    
    ```bash
    sudo apt-get install chrome-gnome-shell
    ```
    
    - extension manager:
    
    ```bash
    sudo apt install gnome-shell-extension-manager
    ```
    
    - tweaks:
    
    ```bash
    sudo add-apt-repository universe
    
    sudo apt install gnome-tweaks
    ```
    

4. Install Extensions:
    - Bluetooth quick connect
    - User Themes
    - just perfection
    - removable drive menu
    - clipboard indictor
    - top panel workspace scroll
    - Search Light

5. Install Applications:
    - bitwarden [link](https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb)
    - FireWall config [link](https://costales.github.io/projects/gufw/)
    - Google Chrome
    - Google Keep
    - Google Calendar
    - Postman [link](https://dl.pstmn.io/download/latest/linux_64)
    
    ```bash
    sudo rm -rf /opt/Postman
    
    sudo mv Postman /opt/Postman
    
    sudo ln -s /opt/Postman/Postman /usr/bin/postman
    
    cat > ~/.local/share/applications/postman.desktop <<EOL
    [Desktop Entry]
    Encoding=UTF-8
    Name=Postman
    Exec=postman
    # Before v6.1.2
    # Icon=/opt/Postman/resources/app/assets/icon.png
    Icon=/opt/Postman/app/resources/app/assets/icon.png
    Terminal=false
    Type=Application
    Categories=Development;
    EOL
    ```
    
    - Rhythmbox
    
    ```bash
    sudo add-apt-repository ppa:ubuntuhandbook1/rhythmbox
    
    sudo apt install rhythmbox
    ```
    
    - simple notes [link](https://github.com/Automattic/simplenote-electron/releases/download/v2.21.0/Simplenote-linux-2.21.0-amd64.deb)
    - Stacer
    
    ```bash
    sudo apt install stacer
    ```
    
    - Telegram [link](https://telegram.org/dl/desktop/linux)
    - VLC [link](apt://vlc)
    - XDM [link](https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz)
    - Skype [link](https://go.skype.com/skypeforlinux-64.deb)
    - vs code [link](https://az764295.vo.msecnd.net/stable/92da9481c0904c6adfe372c12da3b7748d74bdcb/code_1.76.0-1677667493_amd64.deb)
    - Ferdium [link](https://objects.githubusercontent.com/github-production-release-asset-2e65be/481432086/558d5a8c-e448-4bd4-afa4-b4667fe10ddd?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230306T050907Z&X-Amz-Expires=300&X-Amz-Signature=350a6bd08064befe4a96b67ca5317716dbbeea6b9aab456b36cf396f37e7fdc2&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=481432086&response-content-disposition=attachment%3B%20filename%3DFerdium-linux-6.2.4-amd64.deb&response-content-type=application%2Foctet-stream)
    - Brave [link](https://brave.com/linux/#debian-ubuntu-mint)
    - Min [link](https://github.com/minbrowser/min/releases/download/v1.27.0/min-1.27.0-amd64.deb)
    - Todoist
    - Github Desktop
    
    ```bash
    sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
    
    sudo apt-get install gdebi-core
    
    sudo gdebi GitHubDesktop-linux-3.1.1-linux1.deb
    ```
    
    - Android Studio
    
    ```bash
    sudo add-apt-repository ppa:maarten-fonville/android-studio
    sudo apt update
    sudo apt install android-studio -y
    
    sudo apt-get install android-tools* -y
    ```
    
    - Idea Intellj community
    
    ```bash
    sudo apt update
    sudo add-apt-repository ppa:mmk2410/intellij-idea -y
    
    sudo apt install intellij-idea-community -y
    ```
    
    - Pomodoro Timer [link](https://github.com/roldanjr/pomatez/releases/download/v1.2.2/Pomatez-v1.2.2-linux.deb):
    - Discord [link](https://discord.com/api/download?platform=linux&format=deb)
    - OBS
    
    ```bash
    sudo add-apt-repository ppa:obsproject/obs-studio
    sudo apt update
    sudo apt install ffmpeg obs-studio
    ```
    
    - Matlab [link](https://medium.com/@lh.long/install-matlab-r2018b-on-ubuntu-9d00062a4911)
    - **android-file-transfer-linux**
    
    ```bash
    sudo apt-get install android-file-transfer
    ```
    
    - **Mailspring [link](https://updates.getmailspring.com/download?platform=linuxDeb)**
    - **FromScratch**  [link](https://github.com/Kilian/fromscratch/releases/download/v1.4.3/FromScratch_1.4.3_amd64.deb)
    
    
6. Install Extra packages:
    - git    
    ```bash
    sudo apt install git
    ```

    - curl        
    ```bash
    sudo apt install curl
    ```    
    - rar
        
    ```bash
    sudo apt install rar
    ```    
    - zip    
    ```bash
    sudo apt install zip
    ```
        
    - JAVA  [link](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-do-I-install-Java-on-Ubuntu)    
    ```bash
    sudo apt-get update
    sudo apt install default-jdk
    java -version

    #configaring java home location
    update-alternatives --config java
    sudo nano /etc/environment

    #add this line to the end 
    # JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"

    source /etc/environment
    echo $JAVA_HOME
    ```
        
    - SSH for github [link](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
        


7. Extra settings:

    - Chrome horizontal YouTube lines

    ```jsx
    chrome://settings/?search=hardware
    ```

    - keyboard shortcuts:   
    USB: sh -c "udisksctl unmount -b /dev/sdb1; udisksctl power-off -b /dev/sdb"
        
    - suspend: systemctl suspend
        
    - Create system ISO [link](https://itslinuxfoss.com/how-to-create-an-iso-from-current-installation-in-ubuntu-22-04/)
    
    ```bash
    cd Documents
    mkdir BackupFolder
    cd BackupFolder
    mkisofs -o ubuntu22.iso ~
    ```
    
    - Arrange App Menu
    ```bash
    gsettings set org.gnome.shell app-picker-layout "[]"
    
    // then logout
    ```