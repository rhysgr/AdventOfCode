######################
#Part 1=2            #
#Just added another 0#
######################

$puzzleKey = "ckczppom"
$counter = 0 
$md5 = new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = new-object -TypeName System.Text.UTF8Encoding
$hash = ""
While ($hash -notmatch "^00-00-00") {
$counter++
$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($puzzlekey+$counter)))
}
"`nHash: $hash `nCounter: $counter"