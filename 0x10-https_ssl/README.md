Project Title: 0x10. HTTPS SSL - Website Traffic Encryption

Domain: DevOps, SysAdmin, Security

Objective:  Learn to implement HTTPS/SSL and understand its importance in securing website traffic.

Background

What is HTTPS/SSL? A protocol that encrypts web traffic for security and privacy.
Importance of Encryption: Prevents sensitive data (like passwords or financial info) interception.
SSL Termination: The process of decrypting encrypted traffic on a load balancer or reverse proxy.
Tasks

0. World Wide Web

Configure your domain zone to add subdomains (www, lb-01, web-01, web-02).
Create a Bash script to display domain and subdomain DNS information.
1. HAProxy SSL Termination

Install HAproxy (1.5 or later)
Generate SSL certificates using certbot
Configure HAproxy to handle and decrypt HTTPS traffic for the www subdomain.
2. No Loophole in Your Website Traffic (Optional)

Configure HAproxy to redirect all HTTP traffic to HTTPS (using 301 redirects).
Requirements

Editors: vi, vim, emacs
Code: Executable, Shellcheck-compliant Bash scripts.
Resources

What is HTTPS?
What are the 2 main elements that SSL is providing
HAProxy SSL termination on Ubuntu16.04
SSL termination
Quiz
Include relevant quiz questions to test understanding.

Repo Information

GitHub repository: alx-system_engineering-devops
Directory: 0x10-https_ssl
Files:
0-world_wide_web (Bash script)
1-haproxy_ssl_termination (HAproxy config)
100-redirect_http_to_https (HAproxy config, optional)
Example Usage

Bash
# Display DNS info - all subdomains
./0-world_wide_web holberton.online 

# Display DNS info - specific subdomain
./0-world_wide_web holberton.online web-02
