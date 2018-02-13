########
#Part 1#
########

$bracketOpenChar = "("
$bracketClosedChar = ")"
$brackets = (gc  S:\Prod\AdventOfCode\RhysE\inputDay1.txt) -split ''
$Counter = 0

foreach($action in $brackets){
    if($action -eq $bracketOpenChar){
        $Counter++
    } 
    elseif($action -eq $bracketClosedChar){
        $Counter--
    }
}
$counter

########
#Part 2#
########

$bracketOpenChar = "("
$bracketClosedChar = ")"
$brackets = (gc  S:\Prod\AdventOfCode\RhysE\inputDay1.txt) -split ''
$Counter = 0
$position = 0

foreach($action in $brackets){
    if($action -eq $bracketOpenChar){
        $Counter++
    } 
    elseif($action -eq $bracketClosedChar){
        $Counter--
    }
    $position++
    if ($Counter -eq -1) 
    {
        break
    }
}
$position