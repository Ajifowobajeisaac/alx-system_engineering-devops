Web Server Configuration Project

Overview

This project involves configuring a web server (specifically, Nginx) on an Ubuntu 16.04 machine. The key tasks include file transfer, server installation, DNS setup, page redirection, and creating a custom 404 page. Additionally, the project covers the automation of these tasks using Bash scripting and Puppet.

Objectives

Configure and manage a web server.
Understand and implement child processes in a web server.
Automate server configuration tasks using Bash scripts and Puppet.
Set up DNS records and manage domain names.
Handle HTTP requests and redirections.
Requirements

Ubuntu 16.04 LTS
Nginx web server
Bash scripting knowledge
Basic understanding of Puppet
Familiarity with DNS and HTTP protocols
Tasks

File Transfer: Create a Bash script to transfer files to the server.
Nginx Installation: Install Nginx and configure it to serve a simple "Hello World" page.
DNS Setup: Register a .tech domain and configure DNS records to point to the server.
Page Redirection: Implement a 301 redirect to another page.
Custom 404 Page: Create a custom 404 page with a specific message.
Puppet Configuration: Use Puppet to automate the installation and configuration of Nginx.
Testing

Test scripts in an Ubuntu 16.04 sandbox environment.
Verify the correct functioning of the web server through curl commands.
Check the proper redirection and custom 404 page setup.
Best Practices

Ensure all Bash scripts pass Shellcheck without errors.
Maintain clean and well-commented code for readability and ease of maintenance.
Test configurations thoroughly before deployment.
