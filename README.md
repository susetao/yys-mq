按键精灵-阴阳师脚本
===

此脚本为本人业余时间为防止肝硬化而制作, 由于早已弃坑, 所以将本脚本开源, 或许能挽救一些肝癌患者, 这就是对我最大的慰藉.

# Environment

- Windows 7/8/8.1/10 (开发环境为Windows 10)
- Nox 6.2.3.0 
	- CPU, RAM
		- 2C, 2048MB RAM
	- VT
		- Enable
	- 分辨率
		- 平板版
		- 1280x720
	- Render
		- OpenGL
	- FPS
		- 60
- 按键精灵手机助手 3.3.1.13753
	
# Feature

	- 默认为自动化寻找剧情副本探索
	- 默认为自动化进行普通副本探索-直至体力耗尽
	- 自动化战斗
	- 异常处理

# Usage

下载 master 仓库中的代码, 将所有文件放置到按键精灵手机助手安装目录下即可(替换原文件, 注意, 若原来按键精灵中有其他项目, 请选择手动替换文件), 重新打开按键精灵即可使用

文件结构如下:
	
	|- O(∩_∩)O - 为入口文件, 可使用此文件对项目进行打包(使用按键精灵的发布小精灵功能)
	|- yysLib_choose_monster - 为副本探索中怪物选择场景相关函数
	|- yysLib_explore_scene - 为副本探索中副本选择场景相关函数
	|- yysLib_fight - 为战斗相关函数
	|- yysLib_jj - 为竞技相关函数(未完成)
	|- yysLib_main - 为主界面(庭院)场景相关函数
	|- yysLib_scene_common - 为通用场景函数(未使用)
	|- yysLib_service - 为脚本逻辑处理函数
	|- yysLib_story - 为剧情副本场景相关函数
	|- yysLib_team - 为组队相关函数(未完成)
	|- yysLib_utils - 为常用组件, 包括了一些常量以及一些异常处理函数.
	|- yysLib_yh - 为御魂场景相关函数(未完成)
	|- OTHER - 为测试或者无关文件

上述文件为源码文件, 在将本仓库代码导入按键精灵后, 自定义库文件中会出现上述源文件对应的库文件, 若修改了上述源文件, 需要将修改同步至对应库文件

# Warning

本脚本在2019年4月5日按照 Environment 环境中的环境测试正常, 所有功能均可正常使用, 但由于不同电脑环境不同, 色差等原因不保证每台机器都正常使用, 且本人未尝试在物理机上运行脚本, 所以对所有物理机运行情况不做任何保证.

# Donate

若本项目确实让你的肝不再继续恶化, 是不是要替我买个茶叶蛋呢? O(∩_∩)O
<div>
<img src="https://blog.xdove.org/images/wechatpay.jpg" alt="Wechat" height="280px" width="200px" display="block" />
<img src="https://blog.xdove.org/images/alipay.jpg" alt="Alipay" height="280px" width="200px" display="block" /> 
</div>