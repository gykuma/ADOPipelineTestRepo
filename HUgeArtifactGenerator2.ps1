#HugeArtifactGenerator
param([Int32]$multiplier=100)

$str = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus viverra accumsan in nisl nisi scelerisque eu. A lacus vestibulum sed arcu non odio euismod lacinia. Sollicitudin aliquam ultrices sagittis orci. Suspendisse interdum consectetur libero id faucibus nisl. Viverra nam libero justo laoreet sit amet cursus. Quis enim lobortis scelerisque fermentum dui faucibus. Aliquam vestibulum morbi blandit cursus. Lacinia at quis risus sed vulputate. Egestas diam in arcu cursus euismod quis viverra nibh. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Mauris commodo quis imperdiet massa. Sit amet aliquam id diam maecenas ultricies mi eget. Elementum tempus egestas sed sed risus. Eu feugiat pretium nibh ipsum consequat nisl vel. Sapien eget mi proin sed libero enim sed faucibus turpis. Aliquam etiam erat velit scelerisque in dictum non consectetur a.'

Remove-Item .\artifact -r 
New-Item -Path . -Name "artifact" -ItemType "directory"

New-Item -Path .\artifact\ -Name file1.txt -ItemType 'file' -Value $str

for($i = 0; $i -lt $multiplier; $i++){
    $newStr = $str
    for($j = 0; $j -lt 14; $j++){
        $newStr = $newStr + $newStr
    }
    #$fname = ''+$i+'.txt'
    #New-Item -Path .\artifact\ -Name $fname -ItemType 'file' -Value $newStr
    Add-Content -Path .\artifact\file1.txt -Value $newStr
}

#Compress-Archive -Path .\artifact -DestinationPath .\artifact\artifact
