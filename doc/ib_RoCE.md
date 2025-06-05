
## soft RoCE
### 기본 패키지
```sh
sudo apt update
sudo apt install -y rdma-core ibverbs-providers ibutils perftest
sudo apt install -y rdma-core ibverbs-utils infiniband-diags qperf mstflint
```
* rdma-core : RDMA 라이브러리 및 기본 유틸리티
* ibverbs-providers : 여러 RDMA 디바이스 공급자 드라이버
* ibutils : InfiniBand 네트워크 유틸리티
* perftest : RDMA 성능 테스트 도구
* ibverbs-utils : ibv_devinfo, ibv_rc_pingpong 등 RDMA 장치 확인 및 테스트 유틸리티
* infiniband-diags : ibstat, ibnetdiscover 등 InfiniBand 네트워크 진단 도구
* qperf : RDMA 및 TCP 성능 테스트 도구
* mstflint : Mellanox 장치의 펌웨어 및 설정 관리

#### 추가적인 패키지 (필요할 경우)
* srp-tools : SCSI RDMA 프로토콜(SRP) 유틸리티
* rds-tools : RDS (Reliable Datagram Sockets) 유틸리티
* dapl2-utils : DAPL(Direct Access Programming Library) 관련 도구


### Soft RoCE 설치
```sh
$ sudo apt install rdma-core ibverbs-providers ibutils perftest
$ sudo apt install ibverbs-utils infiniband-diags qperf mstflint
$ sudo modprobe rdma_rxe
$ sudo rdma link add rxe0 type rxe net enp0s8
$ sudo ibv_devinfo
$ sudo apt install perftest
$ sudo ib_write_bw -d rxe0  <<= server
$ sudo ib_write_bw 192.168.0.21 -d rxe0  <<=== client
```

```sh
root@vm:~# sudo  ibv_devinfo
hca_id:	rxe0
	transport:			InfiniBand (0)
	fw_ver:				0.0.0
	node_guid:			0a00:27ff:fe67:4f90
	sys_image_guid:			0a00:27ff:fe67:4f90
	vendor_id:			0xffffff
	vendor_part_id:			0
	hw_ver:				0x0
	phys_port_cnt:			1
		port:	1
			state:			PORT_ACTIVE (4)
			max_mtu:		4096 (5)
			active_mtu:		1024 (3)
			sm_lid:			0
			port_lid:		0
			port_lmc:		0x00
			link_layer:		Ethernet

$ sudo  rdma link list
link rxe0/1 state ACTIVE physical_state LINK_UP netdev enp0s8
```

### rdma_rxe 
* rdma module 
```sh
echo  "rdma_rxe" | sudo tee -a /etc/modules
cat /etc/modules
```
* rxe-setup 
```sh
$ rdma link add rxe0 type rxe net enp0s8 NETDEV

$ sudo  vi /etc/systemd/system/rxe-setup.service
[Unit]
Description=Setup RXE (RoCE v2 over Ethernet)
After=network-online.target
Wants=network-online.target

[Service]
Type=oneshot
ExecStart=/usr/bin/rdma link add rxe0 type rxe net enp0s8
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
* service daemon
```sh
$ sudo chmod  644 /etc/systemd/system/rxe-setup.service 
$ sudo systemctl daemon-reload
$ sudo systemctl enable rxe-setup.service
```

# 3FS for Ubuntu 22.04.
```sh
$ sudo  apt install cmake libuv1-dev liblz4-dev liblzma-dev libdouble-conversion-dev libdwarf-dev libunwind-dev \
  libaio-dev libgflags-dev libgoogle-glog-dev libgtest-dev libgmock-dev clang-format-14 clang-14 clang-tidy-14 lld-14 \
  libgoogle-perftools-dev google-perftools libssl-dev gcc-12 g++-12 libboost-all-dev
```


### MNLX_OFED 
* mellanox ofed download 
[https://network.nvidia.com/products/infiniband-drivers/linux/mlnx_ofed/](https://network.nvidia.com/products/infiniband-drivers/linux/mlnx_ofed/)
