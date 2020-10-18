Remotely install MMA agent and Dependency Agent from any domain joined servers. (Prefer AzureMigrate Server)

1) Copy the OMSFolder to C:\.
2) Add ServerName/FQDN to Serverlist.csv.
3) Go to InstallAzureAgents.ps1.
4) Modify line 13, 14 and 21.
3) Open Powershell (Run as Admin or Domain Admin).
4) Run command cd C:\OMSFolder.
5) Run command .\Execute.ps1.

References
https://gallery.technet.microsoft.com/Deploying-Dependency-MMA-575f7326