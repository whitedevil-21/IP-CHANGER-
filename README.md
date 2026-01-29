## IP-CHANGER
An automated IP rotation tool developed for Educational Purposes Only. This script leverages the Tor network to programmatically change your public IP address at set intervals.

## ⚠︎WARNING

<b>DISCLAIMER:</b> This tool is developed for educational use only. Do not misuse it for any reason. The author is not responsible for any consequences resulting from the misuse of this script.
<hr>

## Prerequisites
Before running the script, ensure your environment is updated and the necessary packages are installed.

<ul>
  <li>pkg update && pkg upgrade -y</li>
  <li>pkg install tor curl python netcat-openbsd -y</li>
</ul>
<hr>

## ⚙️ Configuration
To allow the script to request a "New Identity" from Tor, you must enable the Control Port.

<ol>
    <b><li>Open the Tor configuration file:</li></b>
    <ul>
      <li>nano $PREFIX/etc/tor/torrc</li>
    </ul>
  <b><li>Add or uncomment these lines:</li></b>
    <ul>
      <li>ControlPort 9051 <br>
          CookieAuthentication 0</li>
    </ul>
</ol>
<h4>Press CTRL+O, Enter, then CTRL+X to save and exit.</h4>
<hr>

## 🚀 Installation & Execution

<ol>
    <b><li>1. Setup the Script</li></b>
</ol>
<ul>
  <li>pkg update && pkg upgrade -y</li>
  <li>pkg install tor curl python netcat-openbsd -y</li>
  <li>pkg install git -y</li>
  <li>git clone </li>
  <li>chmod +x ipchanger.sh</li>
  <li>bash ipchanger.sh</li>
</ul>
