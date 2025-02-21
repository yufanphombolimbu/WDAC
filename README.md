# WDAC
AppLocker
Windows Defender Application Control (WDAC) is a security feature built into Windows operating systems that helps organizations control and manage which applications and code can run on their devices. It provides administrators with a way to ensure that only trusted, authorized software can execute, reducing the risk of malware infections, unauthorized applications, and software vulnerabilities. WDAC leverages code integrity policies and is particularly effective in enforcing security at a granular level, supporting both the prevention of unapproved executables and ensuring that known good applications are allowed to run. It is a crucial tool for enterprises looking to enhance their endpoint security and implement a robust application control strategy.



Base policy xml file along with cip.
Base policy generated from the app control policy. Allow Windows Mode is used.
Keep on a mind
C:\Windows\system32\codeintegrity\Active\cipolices -> To keep the CIP file on a Windows system for use with AppControl in audit mode.
Use can also used xml for implementing audit mode on windows.
Please refers to microsoft official documentation.


Be careful before deploying Enforcement Mode on a Windows machine, as it will block all programs, applications, browsers, and other software. Enforcement Mode works based on a publisher, file attributes, hash, and folder paths specified in the policies. Think carefully before deploying Enforcement Mode, as it could cause your Windows PC to crash if the policy is not set correctly or if file signers are missing from the XML. A blue screen of death will appear after deploying Enforcement Mode if the instructions are not properly followed.

The workflow of the WDAC image has added on this repository, so it would help you for better understanding about windows defender Application control(WDAC).
