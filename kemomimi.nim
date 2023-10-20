import
  std/os,
  std/random,
  std/strutils

randomize()

proc generateKemomimi(length:int): string =
  var kemomimi: seq[string] = @[]
  result = ""
  for i in 0..length:
    let r = rand(40)
    if r <= 10:
      kemomimi.add("け")
    elif r <= 20:
      kemomimi.add("も")
    elif r <= 40:
      kemomimi.add("み")
  for ch in kemomimi:
    result = result & ch

when isMainModule:
  let cmdArgs = commandLineParams()
  if cmdArgs.len == 0:
    echo ">Failed"
    discard
  elif cmdArgs.len == 1:
    let kemomimi = generateKemomimi(cmdArgs[0].parseInt)
    echo ">", kemomimi
  else:
    echo ">Failed"
    discard