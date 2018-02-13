########
#Part 1#
########

$elfList = (gc  S:\Prod\AdventOfCode\RhysE\inputDay2.txt)
$Length = 0
$Width = 0
$Height = 0
$TotalNeeded = 0 
foreach ($present in $elfList) {
    
    $dimensions = [int[]]($present -split 'x')

    $Width = $dimensions[0]
    $Length = $dimensions[1]
    $Height = $dimensions[2]

    $faceOne = (2 * $Width * $Length)
    $faceTwo = (2 * $Width * $Height)
    $faceThree = (2 * $Height * $Length)

    $TotalNeeded += ($faceOne + $faceTwo + $faceThree)

    $SmallFace = ($faceOne,$faceTwo,$faceThree | sort)[0]/2

    $TotalNeeded += $SmallFace

    }
    $TotalNeeded

########
#Part 2#
########

$elfList = (gc  S:\Prod\AdventOfCode\RhysE\inputDay2.txt)
$PerimOne = 0
$PermiTwo = 0
$PermiThree = 0
$SmallestPerim = 0
$Ribbon = 0 
$ForBow = 0
foreach ($present in $elfList) {
    
    $dimensions = [int[]]($present -split 'x')

    $Width = $dimensions[0]
    $Length = $dimensions[1]
    $Height = $dimensions[2]

    $SmallestPerim = (($Dimensions | sort)[0] *2) + (($Dimensions | sort)[1] *2)
    $ForBow = ($Width * $Length * $Height)

    $Ribbon += ($SmallestPerim + $ForBow)

    }
    $Ribbon
