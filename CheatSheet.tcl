expr arg1 …     #evaluate an expression
+        -        *        /         %        **    
&        |        ^        &&        ||        ~
<        >        <=        >=
= , eq           != , nq             x?y:z

abs(arg)
cos(arg)     acos(arg)    cosh(arg)
sin(arg)     asin(arg)    sinh(arg)
tan(arg)     atan(arg)    tanh(arg)
ceil(arg)    floor(arg)   round(arg)
entier(arg)
bool(arg)    int(arg)     double(arg)
fmod(arg)
sqrt(arg)    isqrt(arg)
log(arg)     log10(arg)
min(arg)     max(arg)
pow(arg)
rand(arg)    srand(arg)
hypot(arg)



global var
rename oldVarName newVarName        #If newVarName is an empty string then oldVarName is deleted.
incr var value
set var value
unset <-nocomplain> var1 ...
upvar <level> otherVar1 myVar1 ... ...        #global level, if level is #0
append varName value1 ...
lappend varName value1 ...
lassign list varNames        #assign list elements to variables

The following global variables are created and managed automatically by the Tcl : 
errorCode
errorInfo
env(arrayName)        #home
tcl_version
tcl_patchLevel
tcl_platform(arrayName)        #machine , os , osVersion , platform , user , pathSeparator , pointerSize , threaded , wordSize , byteOrder , debug
tcl_precision
tcl_rcFileName
tcl_traceCompile
tcl_traceExec
tcl_wordchars
tcl_nonwordchars
trace - Monitor variable accesses, command usages and command executions




$var        # value of variable
$array(index)
${array}
[]        #opens as a Tcl script
{}        #parsed as a list or procedure
\a        #alert bell
\b        #backspace
\e        #ESC
\n        #new line
\t        #tab
\v        #vertical tab
\\        #backslash
cls        #clear command menu
string compare <-nocase> <-length length> string1 string2        #-length : only the first length characters are used ,  -nocase : compared in a case-insensitive manner
string equal <-nocase> <-length length> string1 string2
string first needleString haystackString <startIndex>
string last needleString haystackString <lastIndex>
string index string charIndex 
string is class <-strict> <-failindex varname> string        #class  : alnum , alpha , asci , boolean , control , digit , double , entire , false , true , graph
                                                                       integer , list , lower , upper , print , punct , space , wideinteger , wordchar , xdigit
string length string
string map <-nocase> mapping string        #mapping : {abc 1 ab 2 a 3 1 0}
string match <-nocase> pattern string        #pattern : * , ? ,\x
string range string first last        #returns strings in range
string repeat string count
string replace string first last <newstring>
string reverse string
string tolower string <first> <last>
string toupper string <first> <last>
string totitle string <first> <last>
string trim string <chars>
string trimleft string <chars>
string trimright string <chars>
string bytelength string
string wordend string charIndex
string wordstart string charIndex
subst <-nobackslashes> <-nocommands> <-novariables> string
regexp <switches> exp string <matchVar1 …>        #switches:-about , -expanded , -indices , -line , -linestop , -all , -lineanchor , -nocase , -inline , -start index
regsub <switches> exp string subSpec <varName>        #switches: -all , -expanded , -line , -linestop , -lineanchor , -nocase , -start index

scan string format <varName1 ...>        #format : %num, d decimal , o octal , x hexadecimal , b binary , u decimal , i integer , n input , c single character
                                                   s input substring , e or f or g floating-point value , [chars] substring consists , [^chars] substring not in chars
regexp <switches> exp string <matchVar1 …> -> outputvar        #switches : -about , -expanded , -indices , -line , -linestop , -lineanchor
                                                                           -nocase , -all , -inline , -start index , --
regsub <switches> exp string subSpec <varName>        #switches : -all , -expanded . -line , -linestop , -lineanchor , -nocase , -start index , --
binary decode format <-option1 value1 … ...> data
binary encode format <-option1 value1 … ...> data        #format and option :  base64
-maxlen length
-wrapchar character
-maxlen option        #default is "\n".
-strict  hex
-strict  uuencode
-maxlen length
-wrapchar character
-maxlen option        #default is "\n".
-strict
encoding option <encoding> data        #option : convertfrom , convertto , dirs , system 
                                       #encoding : iso8859-15 , utf-8



list var1 ...
concat var1 …
split string splitchars
join list joinstring
llength list
lset list index var
lindex list index
lrange list first last        #0-beginning end-last
linsert list index element
lreplace list first last element
lreverse list
lsort options list        #options : -ascii , -dictionary , -integer , -real , -command command , -increasing , -decreasing , -indices , -index indexList
lsearch options list pattern        #options : -exact , -glob , -regexp , -sorted , -all , -inline , -not , -start , -ascii ,-dictionary , -integer
                                               -nocase , -real , -increasing , -decreasing , -bisect ,-index indexList , -subindices , lrepeat count element
in var list        #var is present in list
ni var list        #var isn’t present in list



array set arrayName list
array unset arrayName pattern
parray arrayName 
array get arrayName pattern
array exists arrayName
array names arrayName <mode> pattern        #modes : -exact -glob -regexp
array size arrayName
array statistics arrayName
array startsearch arrayName        # array set test {0 a 1 b 2 c 3 d 4 f}
                                   # set sid[array startsearch test]
array anymore arrayName searchId        # while {[array anymore test $sid]} {
array nextelement arrayName searchId        # set key [array nextelement test $sid]
                                            # puts "test($key) = $test($key)"}
array donesearch arrayName searchId        # array donesearch test $sid ;



set dictionaryVariable [dict create <key value ...>]
dict remove dictionaryValue <key1 …>
dict set dictionaryVariable key1 … value
dict unset dictionaryVariable key1 ...
dict append dictionaryVariable key <string>
dict lappend dictionaryVariable key <value>
dict merge <dictionaryValue1 …>
dict replace dictionaryValue <key1 value1 … …>
dict for {keyVar valueVar} dictionaryValue {command}
dict get dictionaryValue <key>
dict exists dictionaryValue key1 …
dict incr dictionaryVariable key <increment>
dict info dictionaryValue
dict size dictionaryValue
dict keys dictionaryValue <globPattern>
dict values dictionaryValue <globPattern>
dict filter dictionaryValue key <globPattern1 ...>
dict filter dictionaryValue value <globPattern1 ...>
dict filter dictionaryValue command {keyVar valueVar} {command}
dict with dictionaryVariable <key1 ...> {command}
dict update dictionaryVariable key1 varName1 … … {command}
dict map {keyVar valueVar} dictionaryValue {command}



file channels <pattern>
file separator
file attributes name option        #option : -archive -hidden -readonly -system
file tempfile <nameVar>
file mkdir dir
file copy -force sourceDir targetDir
file rename -force sourceDir targetDir
file delete -force pathname
file exists name
file isdirectory name
file isfile name
file link -linktype linkName target        #linktype : -symbolic , -hard
file mtime name <time>
file owned name
file writable name
file readable name
file pathtype name
file readlink name
file split name        #splits dir name
file join name1 name2 ... ...
file tail name
file dirname name
file executable name
file extension name
file normalize name
file nativename name
file type name
file volumes
glob switches pattern        #return names of files that match patterns
                             #switches : -directory directory , -join , -nocomplain , -path pathPrefix , -tails , -types typeList



proc procName arg1 … {todo}
source filename
exit returnCode
procName arg1 …        #calls a proc
namespace - create and manipulate contexts for commands and variables
