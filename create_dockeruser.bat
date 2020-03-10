@echo off

net user "DockerUser" "password987" /add
net localgroup "Administrators" "DockerUser" /add
WMIC USERACCOUNT WHERE "Name='DockerUser'" SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='DockerUser'" SET Passwordchangeable=FALSE