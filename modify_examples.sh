#!/bin/bash
touch testfile.txt;
mkdir $PWD/extra
echo $'1. Calling without any extra arguments\n';
./modifytest.sh
echo $'2. Calling with uppercase\n';
./modifytest.sh -u testfile.txt;
echo $'3. Calling with lowercase\n';
./modifytest.sh -l Testfile.txt;
echo $'4. Calling help\n';
./modifytest.sh -h testfile.txt;
echo $'5. Calling with recursion and uppercase\n';
./modifytest.sh -r -u testfile.txt;
echo $'6. Calling with recursion and lowercase\n';
./modifytest.sh -r -l Testfile.txt;
touch $PWD/extra/testfile2.txt;
echo $'7. Calling with uppercase and with directory\n';
./modifytest.sh -u $PWD/extra
echo $'8. Calling with lowercase and with directory\n';
./modifytest.sh -l $PWD/extra
echo $'10. Calling help and with path\n';
./modifytest.sh -h $PWD/extra
echo $'11. Calling with recursion and uppercase and with directory\n';
./modifytest.sh -r -u $PWD/extra
echo $'12. Calling with recursion and lowercase and with directory\n';
./modifytest.sh -r -l $PWD/extra
echo $'13. Calling with uppercase and path\n';
./modifytest.sh -u $PWD/extra/testfile2.txt;
echo $'14. Calling with lowercase and path\n';
./modifytest.sh -l $PWD/extra/Testfile2.txt;
echo $'15. Calling help with path\n';
./modifytest.sh -h $PWD/extra/testfile2.txt;
echo $'16. Calling with recursion and uppercase with path\n';
./modifytest.sh -r -u $PWD/extra/testfile2.txt;
echo $'17. Calling with recursion and lowercase with path\n';
./modifytest.sh -r -l $PWD/extra/Testfile2.txt;
echo $'18. Calling sed\n';
./modifytest.sh 's/\w\+/\L\u&/g';
echo $'19. Calling sed with directory\n';
./modifytest.sh 's/\w\+/\L\u&/g' $PWD/extra;
echo $'20. Calling sed with path\n';
./modifytest.sh 's/\w\+/\L\u&/g' $PWD/extra/Testfile2.txt;

#section of improper calling


echo $'21. Calling with an invalid parameter\n';
./modifytest.sh -z;
echo $'22. Calling with both uppercase and lowercase parameter\n';
./modifytest.sh -u -l $PWD/extra/testfile2.txt;
echo $'23. Calling with both uppercase and lowercase and recursion parameter\n';
./modifytest.sh -u -l -r;
echo $'24. Calling with both uppercase and recursion parameter and additional invalid parameter\n';
./modifytest.sh -u -b -r;
echo $'24. Calling with both uppercase and additional invalid parameter\n';
./modifytest.sh -z -u;
echo $'25. Calling directory with no options\n';
./modifytest.sh $PWD/extra;
echo $'25. Calling directory with both uppercase and lowercase\n';
./modifytest.sh -l -u $PWD/extra;
echo $'26. Calling both sed and directory\n';
./modifytest.sh 's/\w\+/\L\u&/g' $PWD/extra;
echo $'27. Calling sed and an additional sed\n';
./modifytest.sh 's/\w\+/\L\u&/g' 's/\w\+/\L\u&/g';











