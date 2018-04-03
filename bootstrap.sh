echo deb http://http.debian.net/debian jessie-backports main >> /etc/apt/sources.list

# Update and fetch new packages.
sudo apt-get update
sudo apt-get -y upgrade

# Install desktop environment.
sudo apt-get install -y lxde

# Install Chromium web browser.
sudo apt-get install -y chromium 

# Install libwebkitgtk (Anypoint Studio needs this to connect to Anypoint Exchange).
sudo apt-get install -y libwebkitgtk-1.0.0 

# Install JDK 8.
sudo apt-get install -y -t jessie-backports openjdk-8-jdk

# Install maven.
sudo apt-get install -y --no-install-recommends -t jessie-backports maven

# Install GIT.
sudo apt-get install -y git-all

# Install Mule
# https://docs.mulesoft.com/mule-user-guide/v/3.8/downloading-and-starting-mule-esb#mule-standalone

# Download Anypoint Studio 3.9.0 64bit
# MD5: efd835346080d36e0aa91789b0607f9c
# Release Notes: https://docs.mulesoft.com/release-notes/anypoint-studio-6.4-with-3.9.0-runtime-release-notes
# Downloads: https://www.mulesoft.com/ty/dl/studio-linux
sudo echo "Downloading Anypoint Studio..."
sudo wget -O AnypointStudio.tar.gz -nv -nc https://mule-studio.s3.amazonaws.com/6.4.2-U2/AnypointStudio-for-linux-64bit-6.4.2-201712152228.tar.gz
sudo tar xvzf AnypointStudio.tar.gz
sudo rm -f AnypointStudio.tar.gz