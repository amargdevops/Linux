#! /bin/bash
echo "Hello $1, How are you doing today?"
echo "\$# gives $#"
echo "\$* gives $*"
echo "\$@ gives $@"
echo "\$0 gives $0"

# trying to show every single argument on a saperated line
echo showing the interpreatation of \$*
for i in "$*";
do
  echo $i
done

echo showing the interpreatation of \$@
for j in "$@*";
do
  echo $j
done
