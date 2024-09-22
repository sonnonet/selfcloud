
#!/bin/bash

# Run the Python script
python example.py

# Capture the exit status of the Python script
exit_status=$?

# Use the exit status to perform further logic
if [ $exit_status -eq 0 ]; then
    echo "Python script succeeded"
else
    echo "Python script failed with status $exit_status"
fi



# 센서 데이터를 계산하거나 받아오기
sensor_data = 123.456

# 데이터를 표준 출력에 출력
print(sensor_data)



#!/bin/bash

# Python 스크립트 실행하고 출력 캡처
output=$(python output_data.py)

# 출력된 데이터 사용
echo "Received sensor data: $output"




sensor_data = 123.456

# 파일에 데이터 쓰기
with open("sensor_data.txt", "w") as file:
    file.write(str(sensor_data))


#!/bin/bash

# Python 스크립트 실행
python write_data.py

# 파일에서 데이터 읽기
read sensor_data < sensor_data.txt

# 데이터 출력
echo "Received sensor data: $sensor_data"

