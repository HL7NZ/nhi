

sushi  -s -o .
if [[ $? -eq 0 ]]
then

# create the 2 summary files extensions.xml & profiles.xml. Saves in both /input.. & /fsh/ig-data...

echo "Creating Profiles and extensions summary pages..."
#../scripts/makeProfilesAndExtensions.js nhi


echo "Making terminology summary"   # will copy into IG input folder
#../scripts/makeTerminologySummary.js nhi

echo "Making API summary"
#../scripts/makeCapabilityStatement.js nhi

echo "Making NamingSystem summary"
#../scripts/makeNamingSystemSummary.js nhi


else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi