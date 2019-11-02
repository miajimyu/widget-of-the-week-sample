Set-Location (Split-Path $script:myInvocation.MyCommand.path -parent)

$files = Get-ChildItem *.mov

foreach ($file in $files) {
  ffmpeg -i $file.name -an -r 10 %04d.png
  convert *.png output_%04d.png
  convert output_*.png "$($file.BaseName).gif"
  Remove-Item *.png
}

Remove-Item $files

Pop-Location