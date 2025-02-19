#!/bin/bash

# Define tool locations (modify if needed)
BEEF_PATH="/opt/pentest-tools/beef"
EMPIRE_PATH="/opt/pentest-tools/empire"

while true; do
    clear
    echo "====================================="
    echo "   Ethical Hacking - Pen Tools Menu  "
    echo "====================================="
    echo "1. Reconnaissance & Scanning"
    echo "2. Exploitation"
    echo "3. Wireless Attacks"
    echo "4. Post-Exploitation & Persistence"
    echo "5. Exit"
    echo "====================================="
    read -p "Select a category: " category

    case $category in
        1)
            clear
            echo "==== Reconnaissance & Scanning ===="
            echo "1. Network Scan (Nmap)"
            echo "2. Fast Mass Scan (Masscan)"
            echo "3. Web Vulnerability Scan (Nikto)"
            echo "4. Netcat (Manual Communication)"
            echo "5. Back"
            read -p "Select an option: " recon_choice
            case $recon_choice in
                1)
                    read -p "Enter target (IP/Domain): " target
                    read -p "Enter Nmap arguments (e.g., -sS -A): " args
                    nmap $args "$target"
                    ;;
                2)
                    read -p "Enter target IP range: " target
                    read -p "Enter rate (e.g., 1000): " rate
                    masscan -p1-65535 "$target" --rate="$rate"
                    ;;
                3)
                    read -p "Enter target URL: " target
                    read -p "Enter Nikto arguments (optional): " args
                    nikto -h "$target" $args
                    ;;
                4)
                    read -p "Enter target IP: " target
                    read -p "Enter port: " port
                    read -p "Enter mode (listener: -l, connect: -nv): " mode
                    nc $mode "$target" "$port"
                    ;;
                5) continue ;;
                *) echo "Invalid choice" ;;
            esac
            ;;

        2)
            clear
            echo "==== Exploitation ===="
            echo "1. Launch Metasploit"
            echo "2. Start BeEF (Browser Exploitation)"
            echo "3. Start Empire (PowerShell Exploitation)"
            echo "4. Back"
            read -p "Select an option: " exploit_choice
            case $exploit_choice in
                1) 
                    read -p "Enter Metasploit command (e.g., use exploit/multi/handler): " msf_cmd
                    msfconsole -q -x "$msf_cmd"
                    ;;
                2) cd "$BEEF_PATH" && ./beef ;;
                3) cd "$EMPIRE_PATH" && ./empire ;;
                4) continue ;;
                *) echo "Invalid choice" ;;
            esac
            ;;

        3)
            clear
            echo "==== Wireless Attacks ===="
            echo "1. Wi-Fi Cracking (Aircrack-ng)"
            echo "2. Wireless Network Sniffing (Kismet)"
            echo "3. Automated Wi-Fi Attacks (Wifite)"
            echo "4. Back"
            read -p "Select an option: " wireless_choice
            case $wireless_choice in
                1)
                    read -p "Enter capture file (.cap): " cap_file
                    read -p "Enter wordlist file: " wordlist
                    aircrack-ng -w "$wordlist" "$cap_file"
                    ;;
                2) kismet ;;
                3) wifite ;;
                4) continue ;;
                *) echo "Invalid choice" ;;
            esac
            ;;

        4)
            clear
            echo "==== Post-Exploitation & Persistence ===="
            echo "1. Vulnerability Scanning (OpenVAS)"
            echo "2. Packet Sniffing (tcpdump)"
            echo "3. Back"
            read -p "Select an option: " post_choice
            case $post_choice in
                1)
                    read -p "Enter OpenVAS user (default: admin): " user
                    gvmd --create-user "$user" --passwd admin
                    ;;
                2)
                    read -p "Enter network interface (e.g., eth0): " iface
                    read -p "Enter filter (optional, e.g., port 80): " filter
                    sudo tcpdump -i "$iface" $filter
                    ;;
                3) continue ;;
                *) echo "Invalid choice" ;;
            esac
            ;;

        5)
            echo "Exiting..."
            exit 0
            ;;
        
        *)
            echo "Invalid choice, try again."
            ;;
    esac

    read -p "Press Enter to continue..."
done
