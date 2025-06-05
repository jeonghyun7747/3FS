### 인피니밴드 드라이버 설치

 
1. [master, worker] 인피니밴드 컨트롤러 확인: lspci | grep -i mellanox

2. [master, worker] 공식 홈페이지(Linux InfiniBand Drivers)에서 OS에 맞는 드라이버(MLNX_OFED)를 다운로드
[https://network.nvidia.com/products/infiniband-drivers/linux/mlnx_ofed/](https://network.nvidia.com/products/infiniband-drivers/linux/mlnx_ofed/)
 For example, for MLNX_OFED v3.4-2.x.x.x, RHEL7.2 and x86 CPU arch, use:
```sh
# wget http://www.mellanox.com/downloads/ofed/MLNX_OFED-3.4-2.0.0.0/MLNX_OFED_LINUX-3.4-2.0.0.0-rhel7.2-x86_64.tgz
```
3. [master, worker] 압축 해제
```sh
tar xvf MLNX_OFED_LINUX-5.8-3.0.7.0-ubuntu22.04-x86_64.tgz
```

4. [master, worker] 설치

4.1. 폴더 내부로 이동
```sh
cd MLNX_OFED_LINUX-5.8-3.0.7.0-ubuntu22.04-x86_64
```
4.2. force 옵션을 추가하여 드라이버 설치에 필요한 패키지 설치 및 HCA 펌웨어 업데이트도 같이 진행
```sh
sudo ./mlnxofedinstall --force
```
5. [master, worker] 드라이버 재시작 (HCA 펌웨어 업데이트도 했다면 재부팅)
```sh
sudo /etc/init.d/openibd restart
```
6. [master, worker] 인피니밴드 인터페이스가 잡히는지 확인
```sh
ifconfig -a | grep ib
```
7. [master, worker] 인피니밴드 상태 확인 (Port의 State가 Active인지)
```sh
ibstat
```
###  인피니밴드 인터페이스에 IP 주소 할당 (IPoIB를 사용할 경우)

 

1. [master, worker] 인터페이스 상태(Down) 및 이름 확인
```sh
ibdev2netdev
``` 

2. IP 할당 (각각의 CA 포트가 고유한 IP와 서브넷을 할당 받아야함 → 참고)

2.1. [master]
```sh
sudo ifconfig {IF_NAME} 192.168.12.1
```
2.2. [worker]
```sh
sudo ifconfig {IF_NAME} 192.168.12.2
```
3. [master, worker] 인터페이스 상태(Up) 및 이름 확인
```sh
ibdev2netdev
```
4. 통신 테스트 (ib_send_bw 옵션 확인 → 참고)

4.1. [master]
```sh
ib_send_bw -d {CA} -F --report_gbits
```
4.2. [worker]
```sh 
ib_send_bw -d {CA} -F --report_gbits 192.168.12.1
```
4.3. CA는 ibstat으로 확인 가능 (mlx5_0, mlx5_1)
