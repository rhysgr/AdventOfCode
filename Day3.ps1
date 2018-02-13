########
#Part 1#
########

$hash = @{}
$elfMoves = (gc  S:\Prod\AdventOfCode\RhysE\inputDay3.txt) -split ''
$x = 0
$y = 0

$VRight = ">"
$VLeft = "<"
$VUp = "^"
$VDown = "v"

foreach ($move in $elfMoves) {
   
   if($move -eq $VRight){
        $x++
    } 
    elseif($move -eq $VLeft){
        $x--
    }
    elseif($move -eq $VUp){
        $y++
    } 
    elseif($move -eq $VDown){
        $y--
    } 
    
    $hash."$x.$y" ++
    
}
    $hash.GetEnumerator() | measure

########
#Part 2#
########

$hash = @{}
$elfMoves = (gc  S:\Prod\AdventOfCode\RhysE\inputDay3.txt) -split ''

$sx = 0
$sy = 0

$rx = 0
$ry = 0

$VRight = ">"
$VLeft = "<"
$VUp = "^"
$VDown = "v"
$SantaMove = $true

foreach ($move in $elfMoves) {
   if ($SantaMove -eq $true) {
   $SantaMove = $false
       if($move -eq $VRight){
            $sx++
        } 
        elseif($move -eq $VLeft){
            $sx--
        }
        elseif($move -eq $VUp){
            $sy++
        } 
        elseif($move -eq $VDown){
            $sy--
        }
$hash."$sx.$sy" ++
    } elseif ($SantaMove -eq $false) {
    $SantaMove = $true
        if($move -eq $VRight){
            $rx++
        } 
        elseif($move -eq $VLeft){
            $rx--
        }
        elseif($move -eq $VUp){
            $ry++
        } 
        elseif($move -eq $VDown){
            $ry--
        }
$hash."$rx.$ry" ++
    } 
}
    $hash.GetEnumerator() | measure
