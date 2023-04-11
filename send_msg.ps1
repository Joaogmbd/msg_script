write-host '''
  _________                  .___                        
 /   _____/ ____   ____    __| _/   _____   ______ ____  
 \_____  \_/ __ \ /    \  / __ |   /     \ /  ___// ___\ 
 /        \  ___/|   |  \/ /_/ |  |  Y Y  \\___ \/ /_/  >
/_______  /\___  >___|  /\____ |  |__|_|  /____  >___  / 
        \/     \/     \/      \/        \/     \/_____/  
''' -foregroundcolor green
$msg = read-host "Digite a mensagem"
write-host "Em alguns instantes a mensagem será enviada..."
$alive=@()
for ($i=0; $i -le 50){
	ping -w LAB05-$i -n 1 | Out-Null
	if ($? -eq $true){
		$alive += "LAB05-$i"
	}
} 
foreach ($i in $working){
	msg alunodev /server:$i $msg
}
