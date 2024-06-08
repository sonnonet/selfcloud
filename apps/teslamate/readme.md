### Teslamate 
- 테슬라 차량 데이터 수집 관리 서비스
  - https://github.com/adriankumpf/teslamate
  - Document : https://docs.teslamate.org/docs/installation/docker
- how to download and run
  - wget https://raw.githubusercontent.com/jeonghoonkang/selfcloud/main/apps/teslamate/docker-compose.yml
  - 환경에 맞추어, docker-compose.yml 수정
  <pre>
services:
    teslamate:
      image: teslamate/teslamate:latest
      restart: always
      environment:
        - ENCRYPTION_KEY=*****   ####replace with a secure key to encrypt your Tesla API tokens
        - DATABASE_USER=teslamate
        - DATABASE_PASS=*****     ####insert your secure database password!
        - DATABASE_NAME=teslamate
        - DATABASE_HOST=database
        - MQTT_HOST=mosquitto
      ports:
        - 4001:4000
      volumes:
        - ./import:/opt/app/import
      cap_drop:
        - all
  
    database:
      image: postgres:16
      restart: always
      environment:
        - POSTGRES_USER=teslamate
        - POSTGRES_PASSWORD=***** ####insert your secure database password!
        - POSTGRES_DB=teslamate
      volumes:
        - teslamate-db:/var/lib/postgresql/data
  
    grafana:
      image: teslamate/grafana:latest
      restart: always
      environment:
        - DATABASE_USER=teslamate
        - DATABASE_PASS=*****    ####insert your secure database password!
        - DATABASE_NAME=teslamate
        - DATABASE_HOST=database
      ports:
        - 3000:3000
      volumes:
        - teslamate-grafana-data:/var/lib/grafana
  
    mosquitto:
      image: eclipse-mosquitto:2
      restart: always
      command: mosquitto -c /mosquitto-no-auth.conf
      # ports:
      #   - 1883:1883
      volumes:
        - mosquitto-conf:/mosquitto/config
        - mosquitto-data:/mosquitto/data
  
  volumes:
    teslamate-db:
    teslamate-grafana-data:
    mosquitto-conf:
    mosquitto-data:
   
  </pre>
- If run docker-compose, you can see below web page
  - <img width="800" alt="image" src="https://github.com/jeonghoonkang/selfcloud/assets/4180063/d9c16506-ad7c-461e-9835-1a3bc32e9af2">
 
