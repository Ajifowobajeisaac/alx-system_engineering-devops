Project: 0x0F-load_balancer

Purpose:  Configure a load balancing infrastructure to enhance web stack redundancy and reliability.

Concepts:

Load balancing
Web stack debugging
HAProxy configuration
Bash scripting
Puppet (optional task)
Prerequisites:

Access to Ubuntu servers (details provided in project description)
Basic familiarity with Nginx, Bash scripting, and Linux administration.
Optional: Understanding of Puppet configuration management.
Tasks

0. Double the number of webservers

Configure web-02 to mirror the setup of web-01.
Automate configuration with Bash script (0-custom_http_response_header).
Add X-Served-By custom HTTP header to Nginx responses for tracking.
1. Install your load balancer

Install and configure HAproxy on lb-01.
Enable round-robin load balancing to web-01 and web-02.
Set up init script for HAProxy management.
Automate configuration with Bash script (1-install_load_balancer).
2. Add a custom HTTP header with Puppet (advanced)

Create a Puppet manifest (2-puppet_custom_http_response_header.pp) to automate the addition of the X-Served-By header to Nginx.
Getting Started

Clone the GitHub repository: alx-system_engineering-devops
Review detailed instructions within each task directory (e.g., 0x0F-load_balancer/0-custom_http_response_header)
Execute Bash scripts or apply the Puppet manifest, as needed, to configure the servers.
