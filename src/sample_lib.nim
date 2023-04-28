let g_pluginName* {.exportc, dynlib.}: cstring  = "Sample plugin"
let g_pluginDesc* {.exportc, dynlib.}: cstring  = "This is a basic plugin"
let g_pluginAuth* {.exportc, dynlib.}: cstring  = "OpenOrbis-Nim"

proc module_start*(argc : int64, args: pointer): int32 {.exportc, cdecl.} =
  echo "I am in module_start"
  return 0

proc module_stop*(argc : int64, args: pointer): int32 {.exportc, cdecl.} =
  echo "I am in module_stop"
  return 0
