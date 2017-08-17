windbg ANSI Command Tree 1.0

title {"Will's Analysis Checklist"}

body

{"Crash Dump Analysis Checklist"}

 {"General"}

  {"Versions and locations"} {"version"}

  {"Set longer stack trace"} {".kframes 100"}

 {"Application crash or hang"}

  {"Default analysis (crash)"} {"!analyze -v"}

  {"Default analysis (hang)"} {"!analyze -v -hang"}

  {"Switch to x86 architecture"} {".load wow64exts; .effmach x86"}

  {"Critical sections (locked)"} {"!locks"}

  {"Modules"} {"lmv"}

  {"Threads (all)"} {"~*kv 250"}

  {"Threads (unique)"} {"!uniqstack"}

  {"Gflags"} {"!gflag"}

  {"Time consumed by thread"} {"!runaway"}

  {"PEB"} {"!peb"}

  {"TEB"} {"!teb"}

  {"Hooked functions (ntdll)"} {"!chkimg -lo 50 -d !ntdll -v"}

  {"Hooked functions (kernel32)"} {"!chkimg -lo 50 -d !kernel32 -v"}

  {"Hooked functions (user32)"} {"!chkimg -lo 50 -d !user32 -v"}

  {"Hooked functions (ALL)"} {"!for_each_module !chkimg -lo 50 -d !${@#ModuleName} -v"}

  {"Exception handlers"} {"!exchain"}

  {"Computer name"} {"!envvar COMPUTERNAME"}

  {"Stack of exception thread"} {"~#kv 250"}

  {"Stack of current thread"} {"~.kv 250"}

  {"Switch to thread"}

   {"#0"} {"~0s"}

   {"#1"} {"~1s"}

   {"#2"} {"~2s"}

   {"#3"} {"~3s"}

   {"#4"} {"~4s"}

   {"#5"} {"~5s"}

   {"#6"} {"~6s"}

   {"#7"} {"~7s"}

   {"#8"} {"~8s"}

   {"#9"} {"~9s"}

 {"System hang"}

  {"Default analysis"} {"!analyze -v -hang"}

  {"ERESOURCE contention"} {"!locks"}

  {"Processes and virtual memory"} {"!vm 4"}

  {"Sorted pool consumption (paged)"} {"!poolused 4"}

  {"Sorted pool consumption (nonpaged)"} {"!poolused 3"}

  {"Waiting threads"} {"!stacks"}

  {"Critical system queues"} {"!exqueue f"}

  {"I/O"} {"!irpfind"}

  {"The list of all thread stack traces"} {"!process 0 ff"}

  {"Critical sections for current process"} {"!ntsdexts.locks"}

  {"Sessions"} {"!session"}

  {"Processes"} {"!process 0 0"}

  {"Running threads"} {"!running"}

  {"Ready threads"} {"!ready"}

  {"DPC queues"} {"!dpcs"}

  {"The list of APCs"} {"!apc"}

  {"Internal queued spinlocks"} {"!qlocks"}

  {"Computer name"} {"dS srv!srvcomputername"}

  {"Switch to processor"}

   {"#0"} {"~0s"}

   {"#1"} {"~1s"}

   {"#2"} {"~2s"}

   {"#3"} {"~3s"}

   {"#4"} {"~4s"}

   {"#5"} {"~5s"}

   {"#6"} {"~6s"}

   {"#7"} {"~7s"}

 {"BSOD"}

  {"Default analysis"} {"!analyze -v"}

  {"Processes and virtual memory"} {"!vm 4"}

  {"Bugcheck callback data (prior to Windows XP SP1)"} {"!bugdump"}

  {"Bugcheck secondary callback data"} {".enumtag"}

  {"Computer name"} {"dS srv!srvcomputername"}