# LuCI APP 安装说明

|              LuCI APP              |              用途               |
| :--------------------------------: | :-----------------------------: |
|       luci-app-accesscontrol       |          上网时间控制           |
|           luci-app-acme            |      Acme.sh HTTP 证书申请      |
|          luci-app-adblock          |      ADBlock 广告屏蔽工具       |
|        luci-app-adbyby-plus        |       ADBYBY 广告屏蔽大师       |
|        luci-app-adguardhome        |    ADGuardHome 广告屏蔽工具     |
|      luci-app-advanced-reboot      |            高级重启             |
|      luci-app-advancedsetting      |          系统高级设置           |
|           luci-app-ahcp            |           AHCP 服务器           |
|         luci-app-airplay2          |     AirPlay2 音频推送服务器     |
|          luci-app-airwhu           |     锐捷 802.1X 认证客户端      |
|          luci-app-aliddns          |           阿里云 DDNS           |
|           luci-app-amule           |       aMule P2P 下载工具        |
|         luci-app-appfilter         |            应用过滤             |
|       luci-app-argon-config        |         Argon 主题配置          |
|           luci-app-aria2           |         Aria2 下载工具          |
|          luci-app-arpbind          |           IP/Mac 绑定           |
|    luci-app-attendedsysupgrade     |         参与式系统升级          |
|      luci-app-autoipsetadder       |           IPSET 配置            |
|        luci-app-autoreboot         |            定时重启             |
|       luci-app-baidupcs-web        |        百度网盘 Pcs 下载        |
|        luci-app-beardropper        |          SSH 攻击防御           |
|        luci-app-bird1-ipv6         |    BIRD 路由守护程序 (IPV6)     |
|           luci-app-bmx6            |          BMX6 路由协议          |
|           luci-app-brook           |          Brook 客户端           |
|       luci-app-brook-server        |          Brook 服务器           |
|          luci-app-cd8021x          |       802.1x 有线认证拨号       |
|         luci-app-chinadns          |            ChinaDNS             |
|           luci-app-cifs            |           CIFS 服务器           |
|        luci-app-cifs-mount         |       SMB/CIFS 挂载客户端       |
|           luci-app-cjdns           |            IPV6 加密            |
|          luci-app-clamav           |             联系人              |
|         luci-app-commands          |           自定义命令            |
|          luci-app-cpufreq          |        CPU 性能优化调节         |
|         luci-app-cpulimit          |         CPU 使用率限制          |
|          luci-app-cshark           |       CloudShark 抓包工具       |
|           luci-app-cupsd           |         Cups 打印服务器         |
|           luci-app-dawn            |       分散式 WiFi 控制器        |
|           luci-app-ddns            |           DDNS 客户端           |
|         luci-app-diag-core         |            网络诊断             |
|          luci-app-diskman          |            磁盘管理             |
|      luci-app-dnscrypt-proxy       |         DNSCrypt-Proxy          |
|       luci-app-dnsforwarder        |          DNSForwarder           |
|          luci-app-docker           |           Docker 容器           |
|         luci-app-dockerman         |         Docker 控制面板         |
|        luci-app-e2guardian         |         Web 内容过滤器          |
|           luci-app-eqos            |      客户端限速 (基于 IP)       |
|        luci-app-familycloud        |      天翼家庭云 / 云盘提速      |
|       luci-app-fileassistant       |            文件助手             |
|        luci-app-filebrowser        |      FileBrowser文件管理器      |
|       luci-app-filetransfer        |            文件传输             |
|         luci-app-firewall          |             防火墙              |
|  luci-app-freifunk-policyrouting   |        Freifunk 策略路由        |
|     luci-app-freifunk-widgets      |          Freifunk 组件          |
|           luci-app-frpc            |       Frp 内网穿透客户端        |
|           luci-app-frps            |       Frp 内网穿透服务器        |
|           luci-app-gost            |          Gost 安全隧道          |
|         luci-app-gowebdav          |            GoWebDav             |
|        luci-app-guest-wifi         |            访客 WiFi            |
|        luci-app-haproxy-tcp        |        Haproxy 负载均衡         |
|          luci-app-hd-idle          |            硬盘休眠             |
|           luci-app-hnet            |        Homenet 控制协议         |
|      luci-app-https-dns-proxy      |            DOH 配置             |
|      luci-app-https_dns_proxy      |            DOH 配置             |
|        luci-app-ipsec-vpnd         |        IPSec VPN 客户端         |
| luci-app-ipsec-vpnserver-manyusers |        IPSec VPN 服务器         |
|        luci-app-iptvhelper         |            IPTV 助手            |
|       luci-app-jd-dailybonus       |          京东签到助手           |
|          luci-app-kcptun           |             Kcptun              |
|        luci-app-kodexplorer        |        可道云文件管理器         |
|           luci-app-ksmbd           |          KSMB 网络共享          |
|            luci-app-lxc            |            LXC 容器             |
|         luci-app-mentohust         |    Mentohust 锐捷拨号客户端     |
|        luci-app-meshwizard         |          Mesh 设置向导          |
|         luci-app-minidlna          |            MiniDLNA             |
|          luci-app-minieap          |     Minieap 锐捷拨号客户端      |
|       luci-app-mjpg-streamer       |         UVC 摄像头配置          |
|    luci-app-music-remote-center    |       PCHiFi 数字转盘遥控       |
|           luci-app-mwan3           |         Mwan3 多线多拨          |
|        luci-app-mwan3helper        |           Mwan3 助手            |
|           luci-app-mwol            |      网络唤醒 (MQTT 协议)       |
|          luci-app-n2n_v2           |           N2N V2 VPN            |
|        luci-app-naiveproxy         |        Naiveproxy 客户端        |
|          luci-app-netdata          |        Netdata 实时监控         |
|            luci-app-nfs            |            NFS 管理             |
|          luci-app-nft-qos          |          Nftables 限速          |
|       luci-app-nginx-pingos        |       PingOS 流媒体服务器       |
|          luci-app-ngrokc           |      Ngrok 内网穿透客户端       |
|        luci-app-njitclient         |   南京工程学院 802.1X 客户端    |
|          luci-app-nlbwmon          |            流量监控             |
|            luci-app-nps            |          NPS 内网穿透           |
|           luci-app-ntpc            |           NTP 客户端            |
|           luci-app-oled            |            OLED 配置            |
|          luci-app-onliner          |           在线客户端            |
|         luci-app-openclash         |            OpenClash            |
|          luci-app-openvpn          |          OpenVPN 配置           |
|      luci-app-openvpn-server       |         OpenVPN 服务器          |
|          luci-app-p910nd           |        P910nd 打印服务器        |
|         luci-app-pagekitec         |     PageKite 内网穿透客户端     |
|         luci-app-passwall          |            Passwall             |
|          luci-app-polipo           |        Polipo 代理服务器        |
|        luci-app-pppoe-relay        |         PPPoE NAT 穿透          |
|       luci-app-pppoe-server        |          PPPoE 服务器           |
|          luci-app-privoxy          |       Privoxy 代理服务器        |
|         luci-app-ps3netsrv         |            Ps3netsrv            |
|        luci-app-qbittorrent        |           qBittorrent           |
|            luci-app-qos            |            QoS 配置             |
|           luci-app-qosv4           |             QoS V4              |
|         luci-app-radicale          |     CalDAV/CardDAV 同步工具     |
|          luci-app-ramfree          |            释放内存             |
|          luci-app-rclone           |             Rclone              |
|      luci-app-rp-pppoe-server      |         RP-PPPoE 服务器         |
|           luci-app-samba           |         Samba 网络共享          |
|          luci-app-samba4           |         Samba4 网络共享         |
|        luci-app-scutclient         |     华南理工大学拨号客户端      |
|        luci-app-serverchan         |            Server 酱            |
|     luci-app-shadowsocks-libev     |       Shadowsocks 客户端        |
|         luci-app-shairplay         |        Shairplay 服务器         |
|      luci-app-simple-adblock       |     Simple ADBlock 广告屏蔽     |
|         luci-app-smartdns          |            SmartDNS             |
|         luci-app-smartinfo         |       S.M.A.R.T 硬盘监控        |
|          luci-app-smstool          |         3G 模块短信工具         |
|           luci-app-socat           |         Socat 网络军刀          |
|       luci-app-softethervpn        |          SoftEtherVPN           |
|       luci-app-softethervpn5       |          SoftEtherVPN5          |
|         luci-app-speederv2         |         UDPspeeder 工具         |
|            luci-app-sqm            |             SQM QoS             |
|           luci-app-squid           |        Squid 代理服务器         |
|          luci-app-ssocks           |          sSocks 服务器          |
|     luci-app-ssr-libev-server      |    ShadowsocksR Libev 服务器    |
|      luci-app-ssr-mudb-server      |    ShadowsocksR 多用户服务器    |
|         luci-app-ssr-plus          |       ShadowsocksR Plus +       |
|     luci-app-ssrserver-python      |   ShadowsocksR Python 服务器    |
|        luci-app-statistics         |          实时流量监控           |
|         luci-app-syncdial          |            负载均衡             |
|         luci-app-syncthing         |            Syncthing            |
|          luci-app-sysuh3c          |    中山大学东校区联网客户端     |
|         luci-app-terminal          |            WEB 终端             |
|        luci-app-timecontrol        |            时间控制             |
|          luci-app-timewol          |           局域网唤醒            |
|         luci-app-tinyproxy         |            TinyProxy            |
|       luci-app-transmission        |          Transmission           |
|        luci-app-travelmate         |           旅行路由器            |
|       luci-app-trojan-server       |          Trojan 服务器          |
|           luci-app-ttyd            |            TTYD 终端            |
|         luci-app-turboacc          |       Trubo ACC 网络加速        |
|          luci-app-udp2raw          |          udp2raw 配置           |
|           luci-app-udpxy           |           udpxy 配置            |
|          luci-app-uhttpd           |           uhttpd 配置           |
|    luci-app-unblockneteasemusic    |     解除网易云音乐播放限制      |
|  luci-app-unblockneteasemusic-go   | 解除网易云音乐播放限制 (Golang) |
| luci-app-unblockneteasemusic-mini  | 解除网易云音乐播放限制 (云解锁) |
|          luci-app-unbound          |        Unbound DNS 服务         |
|           luci-app-upnp            |              UPNP               |
|        luci-app-usb-printer        |         USB 打印服务器          |
|        luci-app-usb3disable        |            USB3 禁用            |
|       luci-app-uugamebooster       |         网易 UU 加速器          |
|       luci-app-v2ray-server        |          V2RAY 服务器           |
|         luci-app-verysync          |            微力同步             |
|          luci-app-vlmcsd           |           KMS 服务器            |
|          luci-app-vnstat           |         VNStat 流量监控         |
|    luci-app-vpn-policy-routing     |          VPN 策略路由           |
|         luci-app-vpnbypass         |            VPN 绕过             |
|          luci-app-vsftpd           |           FTP 服务器            |
|           luci-app-vssr            |           Hello World           |
|         luci-app-watchcat          |            WatchCat             |
|         luci-app-webadmin          |            Web 管理             |
|      luci-app-webrestriction       |            访问限制             |
|          luci-app-weburl           |              管控               |
|       luci-app-wifischedule        |            WiFi 计划            |
|         luci-app-wireguard         |         WireGuard 状态          |
|            luci-app-wol            |            网络唤醒             |
|         luci-app-wrtbwmon          |          实时流量监测           |
|         luci-app-xlnetacc          |            迅雷快鸟             |
|         luci-app-zerotier          |            ZeroTier             |

