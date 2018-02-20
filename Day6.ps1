########
#Part 1#
########

$list = (gc  c:\inputDay6.txt)
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
        $command
        $xStart = [int]((($command.from) -split ',')[0])
        $yStart = [int]((($command.from) -split ',')[1])
        $xEnd = [int]((($command.to) -split ',')[0])
        $yEnd = [int]((($command.to) -split ',')[1])

        for ($x = $xStart; $x -le $xEnd;$x++)
        {
            for ($y = $yStart; $y -le $yend;$y++)
            {
                switch ($command.Action) {
                    'turn off' { $lights[$x][$y] = 0 }
                    'turn on' { $lights[$x][$y] = 1 }
                    'toggle' { 
                        if ($lights[$x][$y] -eq 0) {
                        $lights[$x][$y] = 1
                        } elseif ($lights[$x][$y] -eq 1) {
                        $lights[$x][$y] = 0
                        }
                    }
                }
            }
        }

    }

    ($lights | % {$_ | measure -sum | select -ExpandProperty Sum}) | measure -sum

########
#Part 2#
########

#$a = [int](![bool]$a)
#$a

$list = (gc  c:\inputDay6.txt)
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
        $command
        $xStart = [int]((($command.from) -split ',')[0])
        $yStart = [int]((($command.from) -split ',')[1])
        $xEnd = [int]((($command.to) -split ',')[0])
        $yEnd = [int]((($command.to) -split ',')[1])

        for ($x = $xStart; $x -le $xEnd;$x++)
        {
            for ($y = $yStart; $y -le $yend;$y++)
            {
                switch ($command.Action) {
                    'turn off' { 
                        if ($lights[$x][$y] -gt 0) {
                            $lights[$x][$y] -= 1 
                        }
                    }
                    'turn on' { $lights[$x][$y] += 1 }
                    'toggle'  { $lights[$x][$y] += 2 }
                    }
                }
            }
        }

    ($lights | % {$_ | measure -sum | select -ExpandProperty Sum}) | measure -sum
