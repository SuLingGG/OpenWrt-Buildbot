# OpenWrt-Mini

## 项目特色

- 项目基于 [immortalwrt/immortalwrt](https://github.com/immortalwrt/immortalwrt) openwrt-18.06-k5.4 分支，内核版本为 5.4.x，LuCI 版本为 LuCI 18.06。
- 项目使用 Self-Hosted Runner 作为 OpenWrt 编译设备，不受 Github Action 提供的 Runner 的硬件和软件限制。
- 提供 40M 左右的 “纯净固件” 并预配置自建软件源，可使用 `opkg` 命令或前往 “系统 - 软件包” 中安装自己需要的软件包。
- 固件额外集成常用驱动与常见 USB 无线网卡驱动，固件预置最新版 Clash 核心、预置 oh-my-zsh 以最大程度减少配置成本。
- 比较全面的 IPV6 支持，固件内置 IPV6 CLI 配置工具 `ipv6-helper`，可快速安装 / 卸载 / 配置 IPV6。
- 自建软件源提供 7000 余个软件包以及 189 个 LuCI APP (截止 2021-02-22)，并保证固件与自建软件源完全兼容。
- 隔天更新固件与自建源中所有软件包，确保获得最新体验。
- 本项目适合具有 OpenWrt 丰富使用经验的 **进阶用户** 使用，因为自建软件源及开放软件包安装将导致诸多不确定因素，故在固件使用过程中遇到的问题请首先擅用搜索引擎来解决。对于固件使用中出现的问题本项目仅提供 **极其有限** 的支持。
- 如果你没有多少使用 OpenWrt 的经验，请移步姊妹项目: [OpenWrt-Rpi](https://github.com/SuLingGG/OpenWrt-Rpi) 。
- OpenWrt-Rpi 的大多数使用文档也适用于本项目，文档详情请移步 [OpenWrt-Rpi](https://github.com/SuLingGG/OpenWrt-Rpi) 项目的 [README.md](https://github.com/SuLingGG/OpenWrt-Rpi/blob/main/README.md) 页面。
- 如果你想捐助此项目，请移步: [FUNDING.md](https://github.com/SuLingGG/OpenWrt-Mini/blob/main/FUNDING.md)。

## 设备/平台支持情况

|   支持设备 / 平台    |                         下载链接                          |         Platform         |  Target  | Subtarget |
| :------------------: | :-------------------------------------------------------: | :----------------------: | :------: | :-------: |
|   竞斗云 / Acrh17    | [🔗](http://openwrt.cc/snapshots/targets/ipq40xx/generic/) | arm_cortex-a7_neon-vfpv4 | ipq40xx  |  generic  |
|      树莓派 2B       | [🔗](http://openwrt.cc/snapshots/targets/bcm27xx/bcm2709/) | arm_cortex-a7_neon-vfpv4 | bcm27xx  |  bcm2709  |
|    树莓派 3B/3B+     | [🔗](http://openwrt.cc/snapshots/targets/bcm27xx/bcm2710/) |    aarch64_cortex-a53    | bcm27xx  |  bcm2710  |
|      树莓派 4B       | [🔗](http://openwrt.cc/snapshots/targets/bcm27xx/bcm2711/) |    aarch64_cortex-a72    | bcm27xx  |  bcm2711  |
|    Rockchip 33xx     | [🔗](http://openwrt.cc/snapshots/targets/rockchip/armv8/)  |     aarch64_generic      | rockchip |   armv8   |
| Allwinner Cortex-A7  | [🔗](http://openwrt.cc/snapshots/targets/sunxi/cortexa7/)  | arm_cortex-a7_neon-vfpv4 |  sunxi   | cortexa7  |
| Allwinner Cortex-A53 | [🔗](http://openwrt.cc/snapshots/targets/sunxi/cortexa53/) |    aarch64_cortex-a53    |  sunxi   | cortexa53 |
|    x86_64 (64位)     |     [🔗](http://openwrt.cc/snapshots/targets/x86/64/)      |          x86_64          |   x86    |    64     |

完整的设备支持列表参见:

<https://github.com/SuLingGG/OpenWrt-Mini/blob/main/doc/Support-Devices.md>

## 软件包安装指南

更新软件包索引:

```
opkg update
```

列出可安装的所有 LuCI APP :

```
opkg list | grep luci-app | grep -v Translation
```

安装软件包 (以 luci-app-ssr-plus 为例):

```
opkg install luci-app-ssr-plus
```

若发现此时新安装软件包界面为英文，则尝试查找该软件包的中文翻译包:

```
opkg list | grep luci-app-ssr-plus | grep zh-cn
```

此时可以得到该软件包的中文翻译包为 `luci-i18n-ssr-plus-zh-cn`，使用 `opkg install` 命令安装此翻译包即可:

```
opkg install luci-i18n-ssr-plus-zh-cn
```

可安装的 LuCI APP 列表:

<https://github.com/SuLingGG/OpenWrt-Mini/blob/main/doc/LuCI-App-List.md>

更多 opkg 使用方法请参考 OpenWrt Guide:

<https://openwrt.org/docs/guide-user/additional-software/opkg>

## 鸣谢

特别感谢以下项目：

Openwrt 官方项目：

https://github.com/openwrt/openwrt

Lean 大的 Openwrt 项目：

https://github.com/coolsnowwolf/lede

Project ImmortalWrt 的 ImmortalWrt 项目：

https://github.com/immortalwrt/immortalwrt

P3TERX 大佬的 Actions-OpenWrt 项目：

https://github.com/P3TERX/Actions-OpenWrt

除这些项目之外，也特别感谢所有为 OpenWrt 项目及社区作出贡献的朋友们～