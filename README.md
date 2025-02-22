# 🛠️ Penetration Testing Tools Menu

A **Bash-based menu** for ethical hacking and penetration testing. This script organizes commonly used tools into an easy-to-navigate menu, allowing users to **scan networks, exploit systems, crack Wi-Fi passwords, and more**.

## 🚀 Features
✅ **Categorized Tools** – Recon, Exploitation, Wireless Attacks, Post-Exploitation  
✅ **Dynamic User Input** – Enter target IPs, ports, arguments, and options  
✅ **Metasploit & Empire Automation** – Run commands directly from the menu  
✅ **Wireless Attacks** – Automate Aircrack-ng, Kismet, and Wifite  
✅ **Docker Ready** – Use inside a **pentesting Docker container**  

---

## 📌 Categories & Tools
### 1️⃣ **Reconnaissance & Scanning**
- 🕵️ `nmap` – Network scanning  
- ⚡ `masscan` – High-speed port scanning  
- 🌐 `nikto` – Web vulnerability scanner  
- 🛰️ `netcat` – Network communication  

### 2️⃣ **Exploitation**
- 🔥 `metasploit` – Exploitation framework  
- 🎯 `BeEF` – Browser exploitation  
- ⚔️ `Empire` – PowerShell post-exploitation  

### 3️⃣ **Wireless Attacks**
- 📡 `aircrack-ng` – Wi-Fi password cracking  
- 📶 `kismet` – Wireless network sniffing  
- 🚀 `wifite` – Automated Wi-Fi attacks  

### 4️⃣ **Post-Exploitation & Persistence**
- 🛡️ `OpenVAS` – Vulnerability scanning  
- 📡 `tcpdump` – Packet sniffing  

---

## 📥 Installation

### 🔹 **1. Clone the Repository**
```bash
git clone https://github.com/your-username/pentest-tools-menu.git
cd pentest-tools-menu
chmod +x pen_test_menu.sh
./pen_test_menu.sh
```

### 🔹 **2. Run on Docker**
```bash
docker build -t pentest-container .
docker run --rm -it --network=host pentest-container
```

## Example: Run Nmap scan with custom options:
```bash
# Select 1 → Reconnaissance
# Select 1 → Nmap
# Enter target: 192.168.1.1
# Enter Nmap arguments: -sS -A
```

## ⚠️ Legal Disclaimer
This script is intended for ethical hacking and security research purposes only.
You must have explicit permission before testing on any system.
The author is not responsible for any misuse.

## ⭐ Like This Project?
Feel free to star the repo and share it! 🚀

## ⚠️ Want to contribute?
Create a new branch and a pull request.
