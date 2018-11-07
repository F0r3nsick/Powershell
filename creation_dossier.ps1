clear
write-host "creation du dossier & fichier en cours`n"
sleep 2
New-Item -Path C:\ -name dossier1 -ItemType "directory"
sleep 2
New-Item -Path C:\dossier1 -name fichier1.txt -ItemType "file" -Value "hello world"
sleep 2
gci c:\dossier1\
sleep 2 
gc c:\dossier1\fichier1.txt