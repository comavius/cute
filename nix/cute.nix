# cute as standalone script
{writeScriptBin, ...}:
writeScriptBin
"cute"
''
  #!/bin/sh -eu
  . ${../cute} && cute $@
''
