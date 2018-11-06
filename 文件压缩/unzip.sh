myPath='uzip'
rm -rf $myPath

if [ ! -d "$myPath" ]; then
mkdir "$myPath"
fi

for zipfile in *.zip
do
folder=$(basename $zipfile .zip)
targetPath="${myPath}/${folder}"
# echo ${targetPath}
unzip $zipfile -d $targetPath
done
