#!/bin/bash
echo "최소값을 입력하세요:"
read min
echo "최대값을 입력하세요:"
read max

echo "몇 개의 랜덤 숫자를 출력할지 입력하세요:"
read count

if [[ $min -ge $max ]]; then
  echo "최소값이 최대값보다 커서는 안 됩니다. 다시 입력하세요."
  exit 1
fi

for ((i = 1; i <= $count; i++))
do
  random_number=$((RANDOM % (max - min + 1) + min))
  echo "랜덤 숫자 $i: $random_number"
done
