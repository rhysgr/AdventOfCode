########
#Part 1#
########

$list = (gc  S:\Prod\AdventOfCode\RhysE\inputDay6.txt)
$formattedList = @()
foreach ($instruction in $list)
{
    $commands= ($instruction -replace '^((turn|toggle)( off| on)?) ([0-9,]+) through ([0-9,]+)$', '$2$3xx$4xx$5') -split 'xx'
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
        $xStart = (($command.from) -split ',')[0]
        $yStart = (($command.from) -split ',')[1]
        $xEnd = (($command.from) -split ',')[0]
        $yEnd = (($command.from) -split ',')[1]

        for ($x =$xStart; $x -le $xEnd;$x++)
        {
            for ($y = $yStart; $y -lt $yend;$y++)
            {
                switch ($light[$x][$y]) {
                    0 { $command.Action = 'turn off' }
                    1 { $command.Action = 'turn on' }
                }
            }
        }
    }