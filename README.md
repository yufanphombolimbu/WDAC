# WDAC
AppLocker
Windows Defender Application Control (WDAC) is a security feature built into Windows operating systems that helps organizations control and manage which applications and code can run on their devices. It provides administrators with a way to ensure that only trusted, authorized software can execute, reducing the risk of malware infections, unauthorized applications, and software vulnerabilities. WDAC leverages code integrity policies and is particularly effective in enforcing security at a granular level, supporting both the prevention of unapproved executables and ensuring that known good applications are allowed to run. It is a crucial tool for enterprises looking to enhance their endpoint security and implement a robust application control strategy.



Base policy xml file along with cip.
Base policy generated from the app control policy. Allow Windows Mode is used.
Keep on a mind
C:\Windows\system32\codeintegrity\Active\cipolices -> To keep the CIP file on a Windows system for use with AppControl in audit mode.
Use can also used xml for implementing audit mode on windows.
Please refers to microsoft official documentation.



