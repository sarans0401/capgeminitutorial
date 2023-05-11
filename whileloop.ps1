$i=0
while($i -lt 10)
{
    $filename = 'Saran' + $i + '.txt'
    New-Item -Path $filename -ItemType  File
     $i++
}
    
    $j=0 
    while( $j -lt 10)
{
    $foldernm = 'Saran' + $j
    New-Item -Path $foldernm -ItemType  Directory
    $j++
}

$j=0
while($j -lt 10)
{
    $folder = 'Saran' + $j
 
    $k=0
    while($k -lt 10)
    {
        $folder1 = 'Saran' + $k
        New-Item -Path $folder\$folder1 -ItemType  Directory
        $k++
    }
    $j++
    
}

 $j=0 
 while($j -lt 10)
{
    $folder = 'Saran' + $j

    $k=0
    while( $k -lt 10)
         {
            $folder1 = 'Saran' + $k
            $l=0
                while($l -lt 10)
                    {
                        $folder2 = 'SS' + $l + '.txt'
                        New-Item -Path $folder\$folder1\$folder2 -ItemType  file
                        $l++
                    }
                    
          $k++
        }
        
  $j++      
}


$j=0
while($j -lt 10)
{
    $folder = 'Saran' + $j
    $k=0
    while ($k -lt 10)
         {
            $folder1 = 'Saran' + $k
                $l=0 
                while( $l -lt 10  )
                    {
                        $cpfile = 'Saran' + $l + '.txt'
                        Copy-Item $cpfile -Recurse -Destination $folder\$folder1 
                        $l++
                    }
            $k++
    
        }
    $j++
}

$j=0 
While($j -lt 10)
{
    $folder = 'Saran' + $j
    $k=0
    while($k -lt 10)
    {
        $folder1 = 'Saran' + $k
        Remove-Item -Path $folder\$folder1\* -Recurse 
        $k++
    }
    $j++
    
}
