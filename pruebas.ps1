$or = (200,343,4,23,42,3,42,99,100)


$des=$or|sort
$des


"Second largest: " + $des[$des.length-2]
"Second smalest; " + $des[1]
"Middle value: "+ $des[$des.length/2]




$my_courses = @("course1 # Learning Task Automations # Vijay            ", 
                             "course2 # Advanced Scripting & tool making #  Vijay          ", 
                              "course3 # AD Management using PowerShell /In progress # Vijay            

                           ")




foreach($course in $my_courses)
{
if($course -like "*task*")
{ write-host($my_courses)}
}

$my_courses | Select-String "Task"
$my_courses | Sort-Object
$my_courses | Sort-Object -Descending

$arr=@('st1','st2','st3','st4')

for($i=$arr.Count;$i -gt 0;$i-=1)
{
    $i
    $arr[$i]
}