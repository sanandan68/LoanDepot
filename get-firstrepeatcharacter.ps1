#$ts = ‘lcoauywfnqumfheolfzaliigngulxqdbnzprnylfqvsxathrqsyjowm’
$foo = ‘lcoauywfnqumfheolfzaliigngulxqdbnzprnylfqvsxathrqsyjowm’
#'abcdedcba'

get-firstrepeatcharacter($foo)

 function get-firstrepeatcharacter {
    [CmdletBinding()]   
    param (
      [string]$foo
    )

    [string] $temp = ""

    for ($j=0; $j -lt $foo.ToLower().ToCharArray().length; $j++) {
      #$foo[$j]
      if($temp.$psitem) {
        $temp += $foo[$j]
      }
      else {
        #$temp
        #$foo[$j]
        if ($temp.Contains($foo[$j])) {
          write-host $foo[$j] "is the first repeated character occurence!"
          #write-host $foo[$j] 
          break
        }
        $temp += $foo[$j]
      }
    }

  }

