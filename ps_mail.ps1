#script d'envoi de mail
#renseigner le mot de passe de la boite mail.

$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Utilisateur = "Monmail@gmail.com"
$Password = "NotMyPassword"

$to = "destinataire@gmail.com"
$subject = "#objet"
$body = "#coeur message"
$attachment = "D:\path\to\img"
#C:\path\to\whatuWant
$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)
$message.from = $utilisateur
$message.attachments.add($attachment)

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)
write-host "Mail Sent"