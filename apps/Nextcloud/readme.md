# IoT Stack 을 활용하여 설치

- curl -fsSL https://raw.githubusercontent.com/SensorsIot/IOTstack/master/install.sh | bash
- cd ~/IOTstack
- sudo ./menu.sh
  - 이후 메뉴에 따라 설치 (./iostack_run.md)

## 문제 발생시, 설치 완료 불가능
<pre>
python 3.11 외부 설정 문제
EXTERNALLY-MANAGED 이슈 나오면서, 설치가 안되는 경우가 있음. 아래처럼 변경하였음 (3.11은 버전에 따라 변경될 수 있음)
sudo mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED_OLD
</pre>
