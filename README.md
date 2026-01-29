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
  <li>git clone https://github.com/whitedevil-21/IP-CHANGER.git </li>
  <li>chmod +x ipchanger.sh</li>
  <li>bash ipchanger.sh</li>
</ul>

## 📖 How it Works

<p>The script initializes a Tor circuit and enters a loop where it:</p>
<ol>
  <li>Verifies the current IP via the Tor SOCKS5 proxy ($127.0.0.1:9050$).</li>
  <li>Sends a SIGNAL NEWNYM command to Tor's Control Port ($9051$).</li>
  <li>Forces a circuit switch to assign a new exit node (and therefore a new IP).</li>
</ol>
<hr>

## ⚠️ Important Considerations

<ul>
  <b><li>Proxy Settings: This script only changes the IP of the Tor circuit. To route other apps through this IP, configure them to use the SOCKS5 proxy at 127.0.0.1:9050.</li></b>
  <b><li>Global Traffic: This tool does not act as a system-wide VPN. For full-device anonymity, consider using Orbot in VPN mode.</li></b>
  <b><li>Troubleshooting: If you see "connection refused," double-check that your torrc file was saved correctly and that Tor is running.</li></b>
</ul>

## ⓘ Contributing

<ul>
  <li>If you'd like to improve the automation or add a Python wrapper, feel free to fork this repo and submit a PR!</li>
</ul>

<h3>Developed by AMIT DEVI(whitedevil-21)</h3>
