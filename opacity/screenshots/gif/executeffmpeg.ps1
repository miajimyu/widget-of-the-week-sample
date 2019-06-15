Param( [string]$fileName )

ffmpeg -i $fileName -an -r 10 %04d.png
convert *.png -resize 40% output_%04d.png

$file = Get-ChildItem $fileName
convert output_*.png "$($file.BaseName).gif"

Remove-Item *.png