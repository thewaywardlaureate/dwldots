#!/bin/sh 

if acpi -b | grep -q Dis
then 
echo "🔋: $(acpi -b | sed -n -e 's/^.*\(g, \)//p')"
else
echo "🔌: $(acpi -b | sed -n -e 's/^.*\(g, \)//p')"
fi




