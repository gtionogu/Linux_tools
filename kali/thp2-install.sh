service postgresql start
update-rc.d postgresql enable

msfdb init

apt-get update
apt-get install -y python-pefile bdfproxy mitmproxy python-openssl openssl subversion python2.7-dev python git gcc make libpcap-dev python-elixir ldap-utils rwho rsh-client x11-apps finger
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
cd /opt/the-backdoor-factory
./install.sh
pip install selenium
git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot
chmod +x install-dependencies.sh && ./install-dependencies.sh

git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make
make install
git clone https://github.com/Dionach/CMSmap /opt/CMSmap
git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan
cd /opt/wpscan && wpscan --update
git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/EyeWitness
git clone https://github.com/MooseDojo/praedasploit /opt/praedasploit
git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap
git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /opt/recon-ng
git clone https://github.com/leebaird/discover.git /opt/discover
cd /opt/discover && ./update.sh
git clone https://github.com/SpiderLabs/Responder.git /opt/Responder
git clone https://github.com/cheetz/Easy-P.git /opt/Easy-P
git clone https://github.com/cheetz/Password_Plus_One /opt/Password_Plus_One
git clone https://github.com/cheetz/PowerShell_Popup /opt/PowerShell_Popup
git clone https://github.com/cheetz/icmpshock /opt/icmpshock
git clone https://github.com/cheetz/brutescrape /opt/brutescrape
git clone https://www.github.com/cheetz/reddit_xss /opt/reddit_xss
git clone https://github.com/cheetz/PowerSploit /opt/HP_PowerSploit
git clone https://github.com/cheetz/PowerTools /opt/HP_PowerTools

git clone https://github.com/secforce/sparta.git /opt/sparta
git clone https://github.com/tcstool/NoSQLMap.git /opt/NoSQLMap
mkdir /opt/spiderfoot/ && cd /opt/spiderfoot
wget http://sourceforge.net/projects/spiderfoot/files/spiderfoot-2.3.0-src.tar.gz/download
tar xzvf download
python -m pip install lxml
python -m pip install netaddr
python -m pip install M2Crypto
python -m pip install cherrypy
python -m pip install mako
mkdir /opt/wce && cd /opt/wce
wget https://www.ampliasecurity.com/research/wce_v1_41beta_universal.zip
unzip wce_v1* -d /opt/wce && rm wce_v1*.zip
cd /opt/ && wget http://blog.gentilkiwi.com/downloads/mimikatz_trunk.zip
unzip -d ./mimikatz mimikatz_trunk.zip
rm -f mimikatz_trunk.zip
git clone https://github.com/trustedsec/social-engineer-toolkit/ /opt/set/
cd /opt/set && ./setup.py install

cd /opt/PowerSploit && wget https://raw.githubusercontent.com/obscuresec/random/master/StartListener.py && git clone https://github.com/darkoperator/powershell_scripts.git
git clone https://github.com/samratashok/nishang /opt/nishang

git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists
git clone https://github.com/DanMcInerney/net-creds.git /opt/net-creds
git clone https://github.com/derv82/wifite /opt/wifite
git clone https://github.com/sophron/wifiphisher.git /opt/wifiphisher
git clone https://github.com/pentestgeek/phishing-frenzy.git /var/www/phishing-frenzy
git clone https://github.com/macubergeek/gitlist.git /opt/gitlist
git clone https://github.com/trustedsec/unicorn /opt/unicorn
git clone https://github.com/michenriksen/gitrob.git /opt/gitrob
gem install bundler
service postgresql start
cd /opt/gitrob/bin
gem install gitrob
cd /opt
wget ftp://ftp.freeradius.org/pub/freeradius/old/freeradius-server-2.1.12.tar.bz2
tar xfj freeradius-server-2.1.12.tar.bz2 && rm -f freeradius-server-2.1.12.tar.bz2 && mv freeradius-server-2.1.12 freeradius-server && cd freeradius-server
wget https://raw.githubusercontent.com/brad-anton/freeradius-wpe/master/freeradius-wpe.patch
patch -p1 < freeradius-wpe.patch
./configure && make && make install
cd /opt && mkdir peCloak && cd peCloak
wget http://www.securitysift.com/download/peCloak.py
wget https://gist.githubusercontent.com/anonymous/420ab3bf69e4d5e1f833/raw/d598b65da5188676c7e43663d98ffb6ada95d2a8/SectionDoubleP.py
cd /tmp
echo "******************Press enter to save the file then q to exit******************"
apt-get install w3m -y
cd /opt/
wget http://winappdbg.sourceforge.net/dist/winappdbg-1.5.zip /opt/

unzip winappdbg-1.5.zip
cd winappdbg-1.5
python setup.py install
cd /opt/ 
rm winappdbg-1.5.zip

wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/libdasm/libdasm-1.5.tar.gz
tar -zxvf libdasm-1.5.tar.gz
cd libdasm-1.5
make
make install
cd pydasm
python setup.py build_ext
sudo python setup.py install
cd /opt/
rm libdasm-1.5.tar.gz

su - postgres
createuser -s gitrob
createdb -O gitrob gitrob
exit

cd /opt/
rm thp2-install.sh