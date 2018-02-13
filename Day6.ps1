########
#Part 1#
########

$list = (gc  S:\Prod\AdventOfCode\RhysE\inputDay6.txt)
$formattedList = @()
foreach ($instruction in $list)
{
    $commands += ($instruction -replace '^((turn|toggle)( off| on)?) ([0-9,]+) through ([0-9,]+)$', '$2$3xx$4xx$5') -split 'xx'
    $formattedList += New-Object -TypeName PSObject -Property ([ordered]@{
        'Action' = $commands[0]
        'From' = $commands[1]
        'To' = $commands[2]
    })
}


($instruction -replace '^((turn|toggle)( off| on)?) ([0-9,]+) through ([0-9,]+)$', '$2$3xx$4xx$5') -split 'xx'


    $lights = @(0) * 1000
    0..999 | % {$lights[$_] = @(0) *1000}
    foreach ($command in $formattedList)
    {
        $xStart = (($command.from) -split ',')[4]
        $yStart = (($command.from) -split ',')[5]
        $xEnd = (($command.from) -split ',')[4]
        $yEnd = (($command.from) -split ',')[5]

        for ($x =0; $x -lt 1000;$x++)
        {
            for ($y = 0; $y -lt 1000;$y++)
            {
                $lights[$x][$y] 
            }
        }
    }