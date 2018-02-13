########
#Part 1#
########

$list = (gc  S:\Prod\AdventOfCode\RhysE\inputDay5.txt)

$niceStringCount = 0

foreach ($string in $list) 
{

    if ($string -match "([aeiou].*){3}") 
    {
        if ($string -match "([a-z])\1") 
        {
            if ($string -notmatch "(ab|cd|pq|xy)") 
            {
                $niceStringCount++
            }
        }
    }
}

$niceStringCount

########
#Part 2#
########


$list = (gc  S:\Prod\AdventOfCode\RhysE\inputDay5.txt)

$niceStringCount = 0

foreach ($string in $list) 
{

    if ($string -match "([a-z]{2}).*\1") 
    {
        if ($string -match ".*([a-z]).\1.*") 
        {
            $niceStringCount++
        }
    }
}

$niceStringCount
