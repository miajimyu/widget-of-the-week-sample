$files = Get-ChildItem *.mov

foreach ($file in $files) {
  ffmpeg -i $file.name -an -r 10 %04d.png
  convert *.png -resize 40% output_%04d.png
  convert output_*.png "$($file.BaseName).gif"
  Remove-Item *.png
}
