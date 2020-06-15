#!/usr/bin/bash

# [[:alnum:]] 双中括号的意思： 第一个中括号时匹配符[] 匹配中括号中的任意一个字符， 第二个[]时格式pattern 如[[:alnum:]]

# 匹配任意字母字符0-9 a-z A-Z
echo -e "egrep \"^a[[:alnum:]]c$\" word_test.txt:\n`egrep "^a[[:alnum:]]c$" word_test.txt`\n"
# 匹配任意字母, 大写或小写
echo -e "egrep \"^a[[:alpha:]]c$\" word_test.txt:\n`egrep "^a[[:alpha:]]c$" word_test.txt`\n"
# 匹配0-9
echo -e "egrep \"^a[[:digit:]]c$\" word_test.txt:\n`egrep "^a[[:digit:]]c$" word_test.txt`\n"
# 匹配大小字符A-Z
echo -e "egrep \"^a[[:upper:]]c$\" word_test.txt:\n`egrep "^a[[:upper:]]c$" word_test.txt`\n"
# 匹配小写字符a-z
echo -e "egrep \"^a[[:lower:]]c$\" word_test.txt:\n`egrep "^a[[:lower:]]c$" word_test.txt`\n"
# 匹配任意字母字符以及*出现0次或多次
echo -e "egrep \"^a[[:alnum:]]*c$\" word_test.txt:\n`egrep "^a[[:alnum:]]*c$" word_test.txt`\n"
# 匹配a开头c结尾的任意字母字符
echo -e "egrep \"^a.*c$\" word_test.txt:\n`egrep "^a.*c$" word_test.txt`\n"
