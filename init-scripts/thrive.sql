/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 90300 (9.3.0)
 Source Host           : localhost:3306
 Source Schema         : thrive

 Target Server Type    : MySQL
 Target Server Version : 90300 (9.3.0)
 File Encoding         : 65001

 Date: 04/09/2025 14:01:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album_cate
-- ----------------------------
DROP TABLE IF EXISTS `album_cate`;
CREATE TABLE `album_cate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册名称',
  `cover` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '相册封面',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `album_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album_cate
-- ----------------------------
INSERT INTO `album_cate` VALUES (1, '旅行', 'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100');

-- ----------------------------
-- Table structure for album_image
-- ----------------------------
DROP TABLE IF EXISTS `album_image`;
CREATE TABLE `album_image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '照片名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片描述',
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '照片地址',
  `cate_id` int NOT NULL COMMENT '相册 ID',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `album_image_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album_image
-- ----------------------------
INSERT INTO `album_image` VALUES (1, '日本富士山', '日本标志性的富士山风景,白雪皑皑的山顶与蓝天相映成趣', 'https://images.unsplash.com/photo-1480796927426-f609979314bd?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (2, '日落时分', '夕阳西下的美丽景色,金色的阳光洒在大地上', 'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (3, '山川湖泊', '壮丽的山川与平静的湖泊交相辉映,展现大自然的鬼斧神工', 'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (4, '星空璀璨', '繁星点点的夜空,银河横跨天际,令人沉醉的夜景', 'https://images.unsplash.com/photo-1441716844725-09cedc13a4e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (5, '绿色山谷', '郁郁葱葱的山谷,清新的空气与翠绿的植被构成和谐画面', 'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (6, '京都古寺', '日本京都的传统寺庙,展现着东方古典建筑的独特魅力', 'https://images.unsplash.com/photo-1542051841857-5f90071e7989?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (7, '城市夜景', '灯火通明的现代都市,霓虹闪烁的夜晚风景', 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (8, '海边日落', '金色的夕阳映照在海面上,浪花轻轻拍打着沙滩', 'https://images.unsplash.com/photo-1504198322253-cfa87a0ff25f?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (9, '樱花季节', '粉色的樱花绽放,营造出浪漫唯美的春日氛围', 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (10, '繁华都市', '现代化的城市景观,高楼大厦鳞次栉比', 'https://images.unsplash.com/photo-1503614472-8c93d56e92ce?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (11, '雪山之巅', '巍峨的雪山山峰,白雪皑皑,云雾缭绕', 'https://images.unsplash.com/photo-1444464666168-49d633b86797?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (13, '街头巷尾', '充满生活气息的街道,记录着城市的日常点滴', 'https://images.unsplash.com/photo-1492571350019-22de08371fd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (14, '晨光熹微', '清晨的第一缕阳光,唤醒沉睡的大地', 'https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (15, '极光之夜', '绚丽的北极光在夜空中舞动,创造出梦幻般的景象', 'https://images.unsplash.com/photo-1504714146340-959ca07e1f38?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');
INSERT INTO `album_image` VALUES (16, '山水如画', '如诗如画的山水风景,展现大自然的壮美与和谐', 'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100', 1, '1729224230508');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章标题',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章介绍',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章主要内容',
  `cover` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章封面',
  `view` int NULL DEFAULT 0 COMMENT '文章浏览量',
  `comment` int NULL DEFAULT 0 COMMENT '评论数量',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'Hello World', '当你看到这篇文章时就意味着安装成功，一切就绪！', '当你看到这篇文章时就意味着安装成功，一切就绪！\n', NULL, 13, 0, '1729224230508');
INSERT INTO `article` VALUES (2, '🎉 ThriveX 现代化博客管理系统', 'ThriveX 是一个简而不简单的现代化博客管理系统，专注于分享技术文章和知识，为技术爱好者和从业者提供一个分享、交流和学习的平台。用户可以在平台上发表自己的技术文章，或浏览其他用户分享的文章，并与他们进行讨论和互动。', '# 🎉 ThriveX 现代化博客管理系统\n\n🎉 `ThriveX` 是一个年轻、高颜值、全开源、永不收费的现代化博客管理系统，它是一个基于 `NextJS` + `Spring Boot` 的产物，所有技术栈都是目前市面上最主流的\n\n🛠️ **技术架构：**\n\n前端：**React 19**、**Next.js 15**、**TailwindCSS 4**、TypeScript、Zustand、Motion React、React Form Hooks、Echarts、Antd、Scss、Vercel、Docker\n\n\n后端：**Spring Boot**、Mybatis Plus、MySQL、X File Storage、Swagger、Docker\n\n\n❤️ **项目初衷：**\n\n一直对网站开发领域很感兴趣，从小就希望有一个属于自己的网站，因此踏上了 `Web` 全栈开发的旅途，立志有朝一日也能开发一款属于自己的网站。如今历时 `2` 年有余，一个人从 `0` 到 `1` 独立完成整个项目的全栈开发，也算是完成了从小的一个心愿\n\n\n\n## 项目演示\n\n### 前端\n\n这里只演示部分前端界面，具体大家可以自行查看 **->** [https://liuyuyang.net](https://liuyuyang.net)\n![首页](https://bu.dusays.com/2024/10/28/671f7a44631d7.png)\n![足迹](https://bu.dusays.com/2024/09/17/66e97036dddcb.png)\n\n\n\n### 控制端\n\n![数据分析](https://bu.dusays.com/2024/09/17/66e97035726ae.png)\n![文件系统](https://bu.dusays.com/2024/09/17/66e97031cd456.png)\n\n\n\n## 项目部署\n\n前端：[https://docs.liuyuyang.net/docs/项目部署/前端.html](https://docs.liuyuyang.net/docs/项目部署/前端.html)\n控制端：[https://docs.liuyuyang.net/docs/项目部署/控制端.html](https://docs.liuyuyang.net/docs/项目部署/控制端.html)\n后端：[https://docs.liuyuyang.net/docs/项目部署/后端.html](https://docs.liuyuyang.net/docs/项目部署/后端.html)\n\n\n\n## 项目结构\n\n```\n├── public // 存放公共资源\n├── src // 核心源码\n│   ├── api // 所有API接口\n│   ├── app\n│   │   ├── error.tsx // 自定义错误页\n│   │   ├── favicon.ico // 项目图标\n│   │   ├── layout.tsx // 网站布局\n│   │   ├── loading.tsx // 自定义加载页\n│   │   ├── not-found.tsx // 自定义404页\n│   │   ├── page.tsx // 首页\n│   ├── assets // 存放项目所有资源\n│   │   ├── font\n│   │   ├── image\n│   │   └── svg\n│   ├── components // 公共组件\n│   ├── stores // 数据全局共享\n│   ├── styles // 全局样式\n│   ├── types // 全局类型\n│   └── utils // 通用方法\n├── package-lock.json\n├── package.json\n├── postcss.config.mjs\n├── tailwind.config.ts\n└── tsconfig.json\n```\n\n\n\n\n## 开源地址\n\n### 2.0 最新版（Nextjs + Spring Boot）\n\n前端：[LiuYuYang01/ThriveX-Blog (github.com)](https://github.com/LiuYuYang01/ThriveX-Blog)\n\n控制端：[LiuYuYang01/ThriveX-Admin (github.com)](https://github.com/LiuYuYang01/ThriveX-Admin)\n\n后端：[LiuYuYang01/ThriveX-Server (github.com)](https://github.com/LiuYuYang01/ThriveX-Server)\n\n\n\n### 1.0 旧版（Vue3 + Python Flask）\n\n前端：[LiuYuYang01/Thrive-Blog (github.com)](https://github.com/LiuYuYang01/Thrive-Blog)\n\n控制端：[LiuYuYang01/Thrive-Admin (github.com)](https://github.com/LiuYuYang01/Thrive-Admin)\n\n后端：[LiuYuYang01/Thrive-Server (github.com)](https://github.com/LiuYuYang01/Thrive-Server)\n\n![后台](https://bu.dusays.com/2024/09/17/66e96ca781d49.png)\n\n\n\n## 开源协议\n\n为了项目的生态越来越强大，作者在这里恳请大家保留 `ThriveX` 博客系统版权\n\n在项目 `Star` 突破 `2K` 后大家可自由选择删除 `or` 保留\n\n如果对该项目进行二次开发，最终需将项目进行开源并保留版权 且 禁止任何商业行为\n\n最后希望大家能够请遵守开源协议：**AGPL-3.0 license** \n\n弘扬开源精神，从你我做起！\n\n\n\n## 关于项目\n\n这个项目是我一个人从设计 -> 产品 -> 前端 -> 控制端 -> 后端以及数据库从 `0` 到 `1` 创造的，一个人的精力有限，项目可能会存在一些隐藏的 `BUG`，希望大家能够及时在 `GitHub` 提交 `Issue`，这样也好加以改正，不断改善，成为最佳！\n\n当然我更希望大家能够提交 `PR` 成为 `ThriveX` 的贡献者，大家一起参与进来，构建一个强大的博客管理系统！\n\n\n## 特别鸣谢\n\n该项目的风格借鉴了很多优秀网站的灵感，下面我主要列举几个：\n\n[https://blog.zwying.com/](https://blog.zwying.com/)\n\n[https://www.blatr.cn/](https://www.blatr.cn/)\n\n[https://poetize.cn/](https://poetize.cn/)\n\n\n\n## ThriveX 交流群 🔥\n\n加微信：`liuyuyang2023`   记得备注：拉群\n\n![微信](https://bu.dusays.com/2025/06/03/683e96eb43ad8.jpg)\n\n\n## 技术支持\n\n项目部署 + `3` 天答疑服务 一口价 `200`，不议价哦。\n\n不过我不太提倡，因为我时间比较忙。大家可以在上述找到我的微信进入官方交流群，在我或热心网友闲的时候也会免费帮忙解决问题的\n\n\n\n# 常见疑惑\n\n下面总结一些大家常问的疑惑\n\n\n## 为什么会想到开发这个项目？\n\n**问：** 为什么会想到开发这个项目？\n\n**答：** 在开发这个项目之前我也使用了很多流行的博客系统，比如：`WordPress`（使用了两年）、`Emlog`、`Zblog`（一年）、`Typecho`（两年）\n\n这些系统都有一个共同点，它们都是基于 `PHP` 开发的，如果不会 `PHP` 就不好自定义网站主题和功能插件，只能去找别人写好的，如果别人没有写，那么你就没办法用，这样就会有很大的局限性。\n\n关键是 `PHP` 在国内几乎已经被淘汰了，所以没有必要再去刻意学习这门语言。\n\n出于局限性我就萌生了开发一整个博客系统的想法，从 `22` 年正式落实并开发，目前已经持续完成三大版本，分别是：\n\n1. Vue2 + Express（Nodejs）\n2. Vue3 + Flask（Python）\n3. NextJS + Spring Boot（Java）\n\n样式借鉴了很多大佬的网站风格，但代码都是自己一行一行敲出来的，目前在 `Github` 已有近 `3000` 次代码提交记录\n\n项目的所有技术栈都是目前最主流的，是一个非常年轻的现代化博客管理系统 🎉\n\n\n\n## 为什么不采用纯 JavaScript 全栈开发？\n\n有些网友提出了这个问题，目前 `Nextjs + Spring Boot` 实在太臃肿了，完全可以采用 `Nextjs + Prisma` 纯 `JavaScript` 技术栈实现全栈开发，这样部署也方便。\n\n是的，没错。\n\n但我的想法是把前端、控制端 以及 后端全部分离，任何地方都可以相互独立出来。比如你想自己写前端，不管你使用哪些技术栈，只需要调用后端接口就可以自己开发。\n\n如果使用了 `Nextjs` 做全栈，那么前后端就会捆绑起来，这样的话前端就必须使用 `React` 而且如果不懂 `Nextjs` 还会额外增加开发及学习成本\n\n\n\n## 项目后期是否会考虑收费？\n\n有很多跟我一样从 `0` 到 `1` 写博客系统的同行，但他们大多数以盈利为目地而开发，而且更新频率并不高，大家不信可以对比一下做个参考\n\n而我可以在此承诺，`ThriveX` 在现在乃至未来不会以任何方式收费，就连赞助二维码都不会有，这一波格局直接拉满 😁\n\n这个项目纯纯为爱发电，这一点是所有博客系统当中比不了的\n\n\n\n## 项目会保持长期维护吗？\n\n大家可能会觉得我不以盈利为目的最终会丧失热情导致不再维护，其实我想说这个顾虑可以打消\n\n在这两年期间内我已经累计提交了近 `3000` 次代码，只要工作之余有时间我都会不断的更新维护，有任何 `BUG` 我都会及时解决\n\n\n\n# 后续研发计划\n\n## 前端\n\n1. ~~照片墙页面~~\n2. ~~闪念集成 `WangEditor` 编辑器~~\n3. ~~资源懒加载~~\n4. 优化文章翻页（待完成）\n\n\n\n## 控制端\n\n1. ~~素材库~~\n2. ~~集成 `DeepSeek` 文章优化~~\n3. ~~文件列表懒加载~~\n4. ~~优化 RBAC 权限~~\n5. ~~批量通过 `Markdown` 文件导入文章~~\n6. 文件上传多个导致偶尔无法复制\n7. 修改前端 `ico` 图标没有效果', 'https://bu.dusays.com/2024/09/17/66e97036dddcb.png', 100001, 0, '1731833778995');
INSERT INTO `article` VALUES (5, 'Markdown 文章样式', NULL, '# Markdown 样式\n\n## 一、字符效果\n\n| 类型 | 使用方法 | 效果 |  \n| :--: | :--: | :--: |\n| 删除线 | \\~\\~文本\\~\\~ | ~~文本效果~~ |\n| 斜体字 | \\_文本\\_ | _文本效果_ |\n| 粗体字 | \\*\\*文本\\*\\* | **文本效果** |\n| 上标 | \\~文本\\~ | ~文本效果~ |\n| 下标 | \\^文本\\^ | ^文本效果^ |\n| 标记 | \\=\\=文本\\=\\= | ==文本效果== |\n\n## 二、列表\n\n### 1、无序列表\n\n- 福建\n  - 厦门\n  - 福州\n- 浙江\n- 江苏\n\n### 2、有序列表\n\n1. 动物\n   1. 人类\n   2. 犬类\n2. 植物\n3. 微生物\n\n### 3、任务列表\n\n- [x] 预习计算机网络\n- [ ] 复习现代控制理论\n- [ ] 刷现代控制理论历年卷\n  - [ ] 2019 年期末试卷\n  - [ ] 2020 年期末试卷\n\n# 三、链接\n\n## 1、超链接\n\n1. 使用方法：\\[普通链接\\]\\(链接地址)\n2. 效果展示：[ThriveX 官网](https://thrivex.liuyuyang.net/)\n3. 在新窗口打开（待完善）：<a href=\"https://docs.liuyuyang.net/\" target=\"_blank\">ThriveX 文档</a>\n\n## 2、图片链接\n\n1. 使用方法：\\[图片名称\\]\\(图片地址)\n2. 效果展示：![星空宇航员](https://bu.dusays.com/2024/04/24/6628990012b51.jpg)\n\n## 四、引用\n\n1. 使用方法：\\> 这里写引用的内容\n2. 效果展示：\n> 这里写引用的内容\n\n## 五、脚注\n1. 使用方法：\\[^1\\]\n2. 效果展示：\n这是一个简单的脚注 [^1] 而这是一个更长的脚注 [^bignote].\n\n[^1]: 这是第一个脚注.\n[^bignote]: 这是一个非常长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长的脚注.\n\n## 六、代码\n\n### 1、行内代码\n\n1. 使用方法：\\` 代码 \\`\n2. 效果展示：`npm install marked`\n\n### 2、代码片段\n\n1. 使用方法：\n    1. 以\\`\\`\\` 开头  以\\`\\`\\` 结尾\n    2. \n2. 效果展示：\n```html\n<!DOCTYPE html>\n<html>\n    <head>\n        <mate charest=\"utf-8\" />\n        <title>Hello world!</title>\n    </head>\n    <body>\n        <h1>Hello world!</h1>\n    </body>\n</html>\n```\n\n## 七、数学公式\n\n### 1、行间公式：\n$\n\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))\n$\n\n### 2、行内公式\n$E=mc^2$\n\n## 八、特殊符号\n\n&copy; & &uml; &trade; &iexcl; &pound;\n&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot;\n\nX&sup2; Y&sup3; &frac34; &frac14; &times; &divide; &raquo;\n\n18&ordm;C &quot; &apos;\n\n## 九、Emoji 表情 🎉\n\n- 马：🐎\n- 星星：✨\n- 笑脸：😀\n- 跑步：🏃‍\n\n## 十、提示信息\n- 使用方法: \n    -  \\> \\[!类型\\] 标题 开头\n    -  \\> 正文\n\n> [!note] Note\n> 用于强调即使用户在快速浏览时也应考虑的重点信息。\n\n\n> [!Tip] Tip\n> 用于帮助用户更成功的可选信息。\n\n\n> [!Check] Check\n> xxxxxxxx\n\n\n> [!warning] Warning\n> 由于存在潜在风险，需要用户立即关注的关键内容。\n\n\n> [!Danger] Danger\n> 一个行为的潜在负面后果。# 数学公式\n\n\n## 视频\n\n### 自定义视频\n\n<h3>单视频</h3>\n<video width=\"640\" height=\"360\" controls>\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n<h3>视频尺寸</h3>\n<video width=\"800\" controls>\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n<h3>视频加封面</h3>\n<video width=\"640\" height=\"360\" controls poster=\"https://bu.dusays.com/2024/09/17/66e9704b2b809.png\">\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n<h3>视频加封面加尺寸</h3>\n<video width=\"100%\" controls poster=\"https://bu.dusays.com/2024/09/17/66e9704b2b809.png\">\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n\n### 哔哩哔哩视频\n\n<h3>默认宽度</h3>\n<iframe src=\"//player.bilibili.com/player.html?isOutside=true&aid=113651931481594&bvid=BV1yaB7YbEy6&cid=27343916591&p=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen></iframe>\n\n<h3>自定义尺寸</h3>\n<iframe src=\"//player.bilibili.com/player.html?isOutside=true&aid=113651931481594&bvid=BV1yaB7YbEy6&cid=27343916591&p=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen style=\"width:100%;height:500px\"></iframe>\n\n\n## 其他\n\n### 折叠\n<details>\n<summary>点击展开</summary>\n\n这里是折叠内容。\n\n</details>\n\n\n### 分割线\n___\n\n***\n\n---\n\n\n### 解析 HTML 标签\n<div style=\"color: red; font-size:30px\">ThriveX 现代化博客管理系统</div>', NULL, 9, 0, '1744980393520');

-- ----------------------------
-- Table structure for article_cate
-- ----------------------------
DROP TABLE IF EXISTS `article_cate`;
CREATE TABLE `article_cate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL COMMENT '文章ID',
  `cate_id` int NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `article_cate_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1472 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文章和分类的中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_cate
-- ----------------------------
INSERT INTO `article_cate` VALUES (1440, 1, 1);
INSERT INTO `article_cate` VALUES (1444, 2, 1);
INSERT INTO `article_cate` VALUES (1471, 5, 1);

-- ----------------------------
-- Table structure for article_config
-- ----------------------------
DROP TABLE IF EXISTS `article_config`;
CREATE TABLE `article_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('default','no_home','hide') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'default' COMMENT '文章状态',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '是否文章加密',
  `is_encrypt` tinyint NULL DEFAULT 0 COMMENT '是否加密',
  `is_draft` tinyint NULL DEFAULT 0 COMMENT '是否为草稿',
  `is_del` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  `article_id` int NOT NULL COMMENT '对应的文章id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `article_config_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文章配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_config
-- ----------------------------
INSERT INTO `article_config` VALUES (1, 'default', '', 0, 0, 0, 1);
INSERT INTO `article_config` VALUES (2, 'default', '', 0, 0, 0, 2);
INSERT INTO `article_config` VALUES (14, 'default', '', 0, 0, 0, 5);

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL COMMENT '文章 ID',
  `tag_id` int NOT NULL COMMENT '标签 ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `article_tag_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES (1, 1, 3);
INSERT INTO `article_tag` VALUES (2, 2, 3);

-- ----------------------------
-- Table structure for assistant
-- ----------------------------
DROP TABLE IF EXISTS `assistant`;
CREATE TABLE `assistant`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '助手名称',
  `key` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密钥',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'API 地址',
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模型',
  `is_default` tinyint NOT NULL DEFAULT 0 COMMENT '是否被启用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `assistant_pk`(`name` ASC) USING BTREE,
  UNIQUE INDEX `assistant_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '助手管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assistant
-- ----------------------------
INSERT INTO `assistant` VALUES (2, 'DeepSeek助手', 'sk-ef73574880644be7b5b17907426119bc', 'https://api.deepseek.com', 'deepseek-chat', 1);

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类图标',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '分类链接',
  `mark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类标识',
  `level` int NULL DEFAULT NULL COMMENT '分类级别',
  `order` int NOT NULL DEFAULT 0 COMMENT '分类顺序',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'cate' COMMENT '导航还是分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE,
  UNIQUE INDEX `cate_pk`(`mark` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES (1, '默认分类', '💻', '/', 'kfbj', 0, 1, 'cate');
INSERT INTO `cate` VALUES (67, '首页', '💎', '/', 'home', 0, 0, 'nav');
INSERT INTO `cate` VALUES (68, '足迹', '⛳️', '/footprint', 'zj', 83, 9, 'nav');
INSERT INTO `cate` VALUES (69, '关于我', '👋', '/my', 'my', 83, 16, 'nav');
INSERT INTO `cate` VALUES (70, '朋友圈', '😇', '/friend', 'pyq', 83, 11, 'nav');
INSERT INTO `cate` VALUES (71, '留言墙', '💌', '/wall/all', 'wall', 83, 12, 'nav');
INSERT INTO `cate` VALUES (72, 'GitHub', '🔥', 'https://github.com/LiuYuYang01/ThriveX-Blog', 'github', 83, 999, 'nav');
INSERT INTO `cate` VALUES (73, '统计', '📊', '/data', 'data', 83, 8, 'nav');
INSERT INTO `cate` VALUES (74, '闪念', '🏕️', '/record', 'record', 83, 9, 'nav');
INSERT INTO `cate` VALUES (77, '我的设备', '🔭', '/equipment', 'wdsb', 83, 15, 'nav');
INSERT INTO `cate` VALUES (78, '标签墙', '🏷️', '/tags', 'bqy', 83, 13, 'nav');
INSERT INTO `cate` VALUES (79, '我的履历', '💪', '/resume', 'wdll', 83, 16, 'nav');
INSERT INTO `cate` VALUES (80, '照片墙', '📷︎', '/album', 'zpq', 83, 14, 'nav');
INSERT INTO `cate` VALUES (81, '鱼塘', '🐟', '/fishpond', 'yt', 83, 10, 'nav');
INSERT INTO `cate` VALUES (83, '探索', '🧩', '/', 'ts', 0, 999, 'nav');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论者名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论者头像',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论者邮箱',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论者网站',
  `article_id` int NOT NULL COMMENT '所属文章ID',
  `comment_id` int NULL DEFAULT 0 COMMENT '二级评论',
  `audit_status` int NULL DEFAULT 0 COMMENT '是否审核',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 517 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (514, '宇阳', 'https://q1.qlogo.cn/g?b=qq&nk=3311118881&s=640', '记得点个star', '3311118881@qq.com', 'https://liuyuyang.net/', 2187, 0, 0, '1729225111457');
INSERT INTO `comment` VALUES (515, 'ThriveX', 'https://q1.qlogo.cn/g?b=qq&nk=3311118881&s=640', '太强了吧', '3311118881@qq.com', 'https://liuyuyang.net', 2, 0, 1, '1744980488518');
INSERT INTO `comment` VALUES (516, 'ThriveX', '', '太强了吧', '3311118881@qq.com', 'https://liuyuyang.net', 2, 0, 0, '1744980488518');

-- ----------------------------
-- Table structure for env_config
-- ----------------------------
DROP TABLE IF EXISTS `env_config`;
CREATE TABLE `env_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` json NOT NULL COMMENT '配置项',
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `env_config_pk_2`(`id` ASC) USING BTREE,
  UNIQUE INDEX `env_config_pk`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of env_config
-- ----------------------------
INSERT INTO `env_config` VALUES (1, 'baidu_statis', '{\"scope\": \"basic\", \"site_id\": \"02763c3213f90c5c372373e84601974c\", \"client_id\": \"x0xWm2jLXI3pEBCIt1jKoB0HwBuzhOx1\", \"expires_in\": 2592000, \"session_key\": \"\", \"update_time\": \"2025-09-04 11:00:49\", \"access_token\": \"121.db8d26d3836e79bccd7f6b0f95624401.YntUS8LEpDECvdja8EJICnpx19sLBLG-Kr_R6VO.ibT9IQ\", \"client_secret\": \"f6IR3LLZBusfXn8lLbVa5FeztXAzkQcf\", \"refresh_token\": \"122.40dbc60794b3677e73c666fd8f98215e.YB5VrAoTAFkGggPrTPqMHmygI3MB4eSp9KBpxFL.b_WLMQ\", \"session_secret\": \"\"}', '百度统计配置');
INSERT INTO `env_config` VALUES (2, 'email', '{\"host\": \"smtp.qq.com\", \"port\": 465, \"password\": \"bedviktmsycxggca\", \"username\": \"1141306760@qq.com\"}', '邮件发送配置');
INSERT INTO `env_config` VALUES (3, 'gaode_map', '{\"key_code\": \"4b46753bb853c65d66d4d7fe65629bf2\", \"security_code\": \"4644a41cdad6657562c49d5cd93d3587\"}', '高德地图配置');
INSERT INTO `env_config` VALUES (4, 'gaode_coordinate', '{\"key\": \"2f3e12d537a86b6f2fb21a6751468066\"}', '高德地图坐标配置');

-- ----------------------------
-- Table structure for file_detail
-- ----------------------------
DROP TABLE IF EXISTS `file_detail`;
CREATE TABLE `file_detail`  (
  `id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件id',
  `url` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件访问地址',
  `size` bigint NULL DEFAULT NULL COMMENT '文件大小，单位字节',
  `filename` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `original_filename` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `base_path` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '基础存储路径',
  `path` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '存储路径',
  `ext` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件扩展名',
  `content_type` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'MIME类型',
  `platform` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '存储平台',
  `th_url` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '缩略图访问路径',
  `th_filename` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '缩略图名称',
  `th_size` bigint NULL DEFAULT NULL COMMENT '缩略图大小，单位字节',
  `th_content_type` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '缩略图MIME类型',
  `object_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件所属对象id',
  `object_type` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件所属对象类型，例如用户头像，评价图片',
  `metadata` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '文件元数据',
  `user_metadata` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '文件用户元数据',
  `th_metadata` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '缩略图元数据',
  `th_user_metadata` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '缩略图用户元数据',
  `attr` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '附加属性',
  `file_acl` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件ACL',
  `th_file_acl` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '缩略图文件ACL',
  `hash_info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '哈希信息',
  `upload_id` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '上传ID，仅在手动分片上传时使用',
  `upload_status` int NULL DEFAULT NULL COMMENT '上传状态，仅在手动分片上传时使用，1：初始化完成，2：上传完成',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '文件记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of file_detail
-- ----------------------------

-- ----------------------------
-- Table structure for footprint
-- ----------------------------
DROP TABLE IF EXISTS `footprint`;
CREATE TABLE `footprint`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `content` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '坐标纬度',
  `images` json NULL COMMENT '图片',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `footprint_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of footprint
-- ----------------------------
INSERT INTO `footprint` VALUES (33, '测试足迹', '测试足迹', '测试足迹', '119.138475,33.6119', '[]', '1599667200000');

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站标题',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站描述',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '网站邮箱',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站logo',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '网站链接',
  `rss` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order` int NOT NULL DEFAULT 0 COMMENT '友联顺序',
  `type_id` int NOT NULL COMMENT '网站所绑定的类型',
  `audit_status` int NOT NULL DEFAULT 0 COMMENT '是否审核',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES (50, '宇阳', 'ThriveX 博客管理系统作者', 'liuyuyang1024@yeah.net', 'https://q1.qlogo.cn/g?b=qq&nk=3311118881&s=640', 'https://liuyuyang.net/', 'https://liuyuyang.net/api/rss', 0, 4, 1, '1723533206613');
INSERT INTO `link` VALUES (52, '这是一个网站', '这是一个网站的描述', 'liuyuyang1024@yeah.net', 'http://127.0.0.1:5000/1.jpg', '/', '/', 123, 1, 1, '1723533206613');
INSERT INTO `link` VALUES (53, '这是一个网站', '这是一个网站的描述', 'liuyuyang1024@yeah.net', 'http://127.0.0.1:5000/1.jpg', '/', '/', 123, 1, 1, '1723533206613');

-- ----------------------------
-- Table structure for link_type
-- ----------------------------
DROP TABLE IF EXISTS `link_type`;
CREATE TABLE `link_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型名称',
  `is_admin` int NOT NULL DEFAULT 0 COMMENT '用户是否可选择',
  `order` int NOT NULL DEFAULT 0 COMMENT '显示顺序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '网站类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of link_type
-- ----------------------------
INSERT INTO `link_type` VALUES (1, '生活类', 0, 4);
INSERT INTO `link_type` VALUES (2, '技术类', 0, 5);
INSERT INTO `link_type` VALUES (3, '全站置顶', 1, 1);
INSERT INTO `link_type` VALUES (4, '推荐', 1, 2);
INSERT INTO `link_type` VALUES (5, '大佬', 1, 3);
INSERT INTO `link_type` VALUES (6, '聚合类', 0, 6);

-- ----------------------------
-- Table structure for oss
-- ----------------------------
DROP TABLE IF EXISTS `oss`;
CREATE TABLE `oss`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '平台',
  `access_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'key',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '密钥',
  `end_point` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'endPoint',
  `bucket_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `base_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_enable` int NULL DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'oss配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oss
-- ----------------------------
INSERT INTO `oss` VALUES (1, 'local', NULL, '', '/Users/yang/Desktop/收纳/项目/ThriveX/ThriveX-Server/', NULL, 'localhost:9003/static/', 'upload/', 1);

-- ----------------------------
-- Table structure for page_config
-- ----------------------------
DROP TABLE IF EXISTS `page_config`;
CREATE TABLE `page_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配置项名称',
  `value` json NOT NULL COMMENT '配置项值',
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `page_config_pk_2`(`id` ASC) USING BTREE,
  UNIQUE INDEX `page_config_pk_3`(`id` ASC) USING BTREE,
  UNIQUE INDEX `page_config_pk`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_config
-- ----------------------------
INSERT INTO `page_config` VALUES (1, 'my', '{\"goals\": [{\"value\": \"1、涨薪2k！！！\", \"status\": 3}, {\"value\": \"2、提高前端技术栈深度\", \"status\": 1}, {\"value\": \"3、提高后端技术栈深度与广度，往后端迁移\", \"status\": 1}, {\"value\": \"4、ThriveX 博客管理系统 ⭐️ 破千\", \"status\": 1}, {\"value\": \"5、ThriveX 最低要求保持周更\", \"status\": 1}, {\"value\": \"6、输出 30 篇高质量技术博客\", \"status\": 1}], \"project\": [{\"name\": \"ThriveX\", \"front\": {\"url\": \"https://github.com/LiuYuYang01/ThriveX-Blog\", \"name\": \"前端：\", \"technology\": \"NextJS、TypeScript、Zustand、TailwindCSS、Scss、Echarts\"}, \"images\": [\"https://bu.dusays.com/2024/09/17/66e9704b2b809.png\", \"https://bu.dusays.com/2024/09/17/66e97036dddcb.png\", \"https://bu.dusays.com/2024/09/17/66e97035726ae.png\", \"https://bu.dusays.com/2024/09/17/66e97031cd456.png\"], \"backend\": {\"url\": \"https://github.com/LiuYuYang01/ThriveX-Server\", \"name\": \"后端：\", \"technology\": \"Spring Boot、Mybatis Plus、MySQL、Redis、Qiniu、Socket.io、Swagger\"}, \"control\": {\"url\": \"https://github.com/LiuYuYang01/ThriveX-Admin\", \"name\": \"控制端：\", \"technology\": \"React、Antd、TypeScript、Zustand、TailwindCSS、Echarts\"}, \"description\": \"🎉 ThriveX 相比旧版 Thrive 的核心改变是从 Vue 全面迁移到了 React 技术栈并采用了 Nextjs 服务端渲染技术进行全方面重构，对SEO方面有了显著的提高。并且还新增了很多额外的功能...\"}, {\"name\": \"Thrive\", \"front\": {\"url\": \"https://github.com/LiuYuYang01/Thrive_Blog\", \"technology\": \"前端：Vue3、TypeScript、Pinia、Element-plus、Scss、Echarts 、highlight.js\"}, \"images\": [\"https://bu.dusays.com/2024/09/17/66e96cb4e8417.png\", \"https://bu.dusays.com/2024/09/17/66e96ca366600.png\", \"https://bu.dusays.com/2024/09/17/66e96ca781d49.png\", \"https://bu.dusays.com/2024/09/17/66e96c9e76c81.png\"], \"backend\": {\"url\": \"https://github.com/LiuYuYang01/Thrive_Server\", \"name\": \"后端：\", \"technology\": \"Python、Flask、SQLAlchemy、MySQL、Flask-JWT、Socket.io、Swagger\"}, \"control\": {\"url\": \"https://github.com/LiuYuYang01/Thrive_Admin\", \"name\": \"控制端：\", \"technology\": \"Vue3、TypeScript、Pinia、Element-plus、Scss\"}, \"description\": \"🎉 Thrive 是一个简而不简单的现代化博客管理系统，专注于分享技术文章和知识，为技术爱好者和从业者提供一个分享、交流和学习的平台。用户可以在平台上发表自己的技术文章，或浏览其他用户分享的文章，并与他们进行讨论和互动。\"}, {\"name\": \"云上校园\", \"front\": {\"url\": \"\", \"name\": \"前端：\", \"technology\": \"微信小程序、Vant、Echarts、Autojs\"}, \"images\": [\"https://bu.dusays.com/2024/09/18/66ea606eb5aa1.png\", \"https://bu.dusays.com/2024/09/18/66ea605d89df7.png\", \"https://bu.dusays.com/2024/09/18/66ea605ca9f0d.jpg\"], \"backend\": {\"url\": \"\", \"name\": \"后端：\", \"technology\": \"Nodejs、Eggjs、Socket.io、MySQL\"}, \"control\": {\"url\": \"\", \"name\": \"控制端：\", \"technology\": \"Vue2、Element UI、vue-element-admin\"}, \"description\": \"🎉 云上校园是一个现代化大学生社交平台，该项目的立意是为了打造一个完整的校园生态圈，使校园触手可及!\"}], \"hometown\": [113.625351, 34.746303], \"info_one\": {\"name\": \"Liu YuYang\", \"notes\": \"不是修改这个哦，这段代码暂时先保留，勿删！！！\", \"avatar\": \"https://q.qlogo.cn/g?b=qq&nk=3311118881&s=640\", \"profession\": \"一名Web全栈开发工程师\", \"introduction\": \"我从小就对计算机技术有着无穷的兴趣，因此我的梦想是做一名技术顶尖的 架构师。所以我一直在朝着这个方向去努力、去坚持 直到梦想成真！\"}, \"info_two\": {\"author\": \"宇阳\", \"know_me\": \"https://liuyuyang.net/article/2227\", \"left_tags\": [\"🤖️ 数码科技爱好者\", \"🔍 分享与热心帮助\", \"💻 全栈开发工程师\"], \"avatar_url\": \"https://q.qlogo.cn/g?b=qq&nk=3311118881&s=640\", \"right_tags\": [\"源于热爱而发电 ✨\", \"开源项目作者 🥳\", \"热爱漫无边际 🎉\"]}, \"character\": [{\"color\": \"#4298b4\", \"text1\": \"内向\", \"text2\": \"外向\", \"value\": 54, \"content\": \"内向型的人往往更喜欢较少但深入和有意义的社交互动，通常更喜欢安静的环境。\"}, {\"color\": \"#e4ae3a\", \"text1\": \"现实\", \"text2\": \"有远见\", \"value\": 41, \"content\": \"有远见型的人非常富有想象力、思想开放并充满好奇心。他们重视原创性，专注于隐含的意义和遥远的可能性。\"}, {\"color\": \"#33a474\", \"text1\": \"感受\", \"text2\": \"理性分析\", \"value\": 41, \"content\": \"感受型的人重视情感表达和敏感性。他们非常重视同理心、社会和谐及合作。\"}, {\"color\": \"#88619a\", \"text1\": \"展望\", \"text2\": \"评判\", \"value\": 79, \"content\": \"评判型的人果断、周到，很有条理。他们重视清晰度、可预测性和封闭性，更喜欢结构和计划，而不是自发性。\"}, {\"color\": \"#f25e62\", \"text1\": \"起伏不定\", \"text2\": \"坚决\", \"value\": 78, \"content\": \"起伏不定型的人自我意识强，对压力敏感。他们在情绪上有一种紧迫感，往往以成功为导向，追求完美，渴望进步。\"}], \"work_open\": false, \"info_style\": \"info_one\", \"technology_stack\": [\"scss\", \"css\", \"html\", \"tailwindcss\", \"axios\", \"fetch\", \"vue\", \"vuex\", \"redux\", \"zustand\", \"element-plus\", \"typescript\", \"javascript\", \"antdesign\", \"motion\", \"pinia\", \"framer-motion\", \"echarts\", \"java\", \"spring\", \"springboot\", \"mybatis\", \"mybatis-plus\", \"redis\", \"rabbitmq\", \"mysql\", \"mongodb\", \"react\", \"nextjs\", \"nestjs\", \"webpack\", \"vite\", \"nodedotjs\", \"nextdotjs\", \"prisma\", \"koa\", \"express\", \"python\", \"flask\", \"nginx\", \"vercel\", \"docker\", \"git\", \"github\", \"visualstudiocode\", \"intellijidea\", \"datagrip\", \"apifox\", \"postman\", \"trae\", \"cursor\", \"webstorm\", \"navicat\", \"hbuilder\", \"hbuilderx\", \"googledrive\", \"apple\", \"windows\", \"linux\", \"pycharm\", \"wechat\"]}', '关于我');
INSERT INTO `page_config` VALUES (2, 'resume', '{\"links\": {\"csdn\": \"https://thrive.blog.csdn.net\", \"github\": \"https://github.com/LiuYuYang01\", \"project\": \"https://liuyuyang.net/\"}, \"skills\": [\"熟练 HTML5、CSS3、Flex、Scss、TailwindCSS 能够精准还原 UI 设计师的产品原型图，实现产品级的复现\", \"熟练 TypeScript、JavaScript、jQuery、面向对象、闭包、原型链、WebApi、原生DOM\", \"熟练 Vue2 / 3 相关生态：Axios、Vuex、Pinia\", \"熟练 React18 相关生态：NextJS、Redux、Zustand、Ahooks、Motion\", \"熟练 Uniapp 完成多端适配 以及 原生微信小程序开发\", \"熟练 Echarts 数据可视化开发 且 能够根据业务需求进行自定义扩展\", \"熟练 Ant Design、NextUI、Element UI、Vant、Naive UI、Bootstrap 等多种组件库的使用\", \"熟悉 NodeJS 相关生态：Express、NextJS、NestJS、Prisma\", \"熟悉 Python Flask 及 SQLAlchemy 对象映射（ORM）框架\", \"熟悉 Electron 跨平台桌面应用开发框架\", \"了解 Remix 全栈开发框架\", \"了解 WebPack、Vite 等打包构建工具\", \"熟悉 Spring Boot、Spring MVC、Mybatis Plus 等主流框架\", \"熟练 MySQL 关系型数据库，具备手写 SQL 及复杂查询的能力\", \"了解 Spring Cloud 微服务框架及常用的组件 Nacos、OpenFeign、Gateway\", \"熟悉 Linux 常用命令以及 Nginx 基本配置\", \"熟悉 Docker 基本命令、容器编排、镜像构建，并熟练使用可视化工具如：宝塔、1Panel 等，并有项目部署上线的经验\"], \"projects\": [{\"name\": \"ThriveX CMS 建站管理系统\", \"role\": \"全栈开发（NextJS + Spring Boot）\", \"links\": {\"api\": \"https://api.liuyuyang.net/doc.html\", \"docs\": \"https://docs.liuyuyang.net/\", \"preview\": \"https://liuyuyang.net/\", \"website\": \"https://thrivex.liuyuyang.net/\"}, \"period\": \"2023.03-至今\", \"techStack\": {\"backend\": \"Spring Boot、Mybatis Plus、MySQL、Qiniu、Swagger、Python、Flask、SQLalchemy\", \"frontend\": \"React、NextJS、TypeScript、Zustand、TailwindCSS、Scss、Next UI、Antd UI、Echarts、React Hook Form、Ahooks、百度统计API、高德地图API、Vue3、Pinia、Element UI\", \"deployment\": \"采用 Docker Compose 一键部署、采用 Nginx 实现反向代理、SSL 证书等\"}, \"highlights\": [\"【AI】采用科大讯飞AI大模型实现文章续写、优化、总结、智能问答\", \"【权限】RBAC 权限管理，动态路由、按钮权限、多用户登录\", \"【地图】采用 高德地图实现旅游足迹可视化等功能\", \"【安全】限制异地登录 及 以及多设备登录同一账号\", \"【交互】采用 TailwindCSS 实现白天、昼夜主题切换效果\", \"【适配】采用 TailwindCSS 媒体查询实现手机、平板、电脑三端适配\", \"【可视化】采用 百度统计API + Echarts 实现数据可视化\", \"【SEO】采用 NextJS 服务端渲染技术进行 SEO 优化，在 Lighthouse 中评分 100%\", \"【文件系统】同时兼容阿里云、腾讯云、华为云、七牛云、百度云等对象存储\", \"【一键部署】采用 Docker Compose 脚本实现前端、控制端、后端、数据库一键部署\", \"【自动化部署】利用 Vercel 实现高效的持续集成与自动化部署\"], \"description\": \"ThriveX 是一个年轻、高颜值、全开源、永不收费的现代化 CMS 管理系统，项目组成是前端、控制端、后端，采用前后端分离开发式，是一个 NextJS + Spring Boot 的产物。\", \"achievements\": [\"一个人完成产品、UI、前端、控制端、后端、数据库、测试 以及 项目部署上线\", \"项目代码全开源，截止目前在 GitHub 已经有 1867 条 Commit 记录，收获 700+ Star，156+ Fork\", \"目前已有多数用户在使用该系统，粉丝群已超千名用户\"], \"repositories\": {\"admin\": \"https://github.com/LiuYuYang01/ThriveX-Admin\", \"backend\": \"https://github.com/LiuYuYang01/ThriveX-Server\", \"frontend\": \"https://github.com/LiuYuYang01/ThriveX-Blog\"}}, {\"name\": \"点点易付（DianDianPay）\", \"role\": \"前端开发工程师\", \"links\": {\"docs\": \"https://docs.diandianpay.com/\", \"website\": \"https://diandianpay.com/\", \"dashboard\": \"https://dashboard.diandianpay.com/\"}, \"period\": \"2024.12-至今\", \"techStack\": \"React、TypeScript、Zustand、TailwindCSS、Scss、Antd UI、Echarts、React Hook Form、Ahooks、百度统计API\", \"description\": [\"点点易付专注打造一站式支付解决方案，通过安全可靠的支付通道和高效便捷的服务，助力全球商户拓展国际市场，实现业务全球化\", \"简化中国企业在跨境收单的繁琐流程，提供一站式服务，从账户申请到交易处理全程支持\"], \"achievements\": \"结果令老板满意，完成涨薪 60%，并赠与 5 万元一次性奖金\"}, {\"name\": \"Shopify 跨境电商结账页\", \"role\": \"前端开发工程师\", \"period\": \"2024.07-2024.09\", \"challenges\": \"商品的最终价格需要根据多种因素决定，如商品单价、运费、税费、运费险等不同的条件进行计算，而且还要通过同一套代码完成单页面布局和多页面布局，整体的逻辑相对复杂\", \"achievements\": \"结果令老板满意，完成涨薪 25%\", \"responsibilities\": [\"主导 jQuery 项目全面迁移至 React 生态，提高项目代码规范及可维护性\", \"负责组件库架构设计，保证组件库可扩展性、易用性\", \"使用 React-i18next 完成八国语言一键切换\", \"集成 Sentry 实现前端监控，快速排查线上项目疑难杂症\"]}, {\"name\": \"云上校园\", \"role\": \"全栈开发（小程序 + Eggjs）\", \"period\": \"2022.12-2023.05\", \"techStack\": \"微信小程序、Vant、Vue2、Element UI、Echarts、Nodejs（Eggjs）、MySQL、Socket.io\", \"highlights\": [\"通过 Echarts 搭配百度统计API实现数据可视化\", \"微信登录、登录状态检测\", \"实时通讯聊天室：支持私聊、群聊、表情、图片聊天记录存储\"], \"description\": \"云上校园是一个专注提升大学校园生活质量与便利性的平台，打造一个集信息传播、学习辅助、就业赚取、维权举报、科技体验于一体的综合服务平台。\", \"achievements\": \"上海市第十五届计算机应用能力大赛三等奖\"}], \"education\": {\"major\": \"软件工程\", \"degree\": \"本科\", \"period\": \"2021-2026\", \"school\": \"上海开放大学\", \"achievements\": [\"上海市计算机应用能力大赛三等奖\", \"上海开放大学创新项目奖\", \"二等奖学金\", \"计算机软件著作权\"]}, \"advantages\": [\"上海市第十五届计算机应用能力大赛 三等奖、创新项目奖\", \"GitHub 开源项目作者（ThriveX CMS 建站系统）Star 900+\", \"ThriveX CMS 建站系统 计算机软件著作权（申请中）\", \"具备项目从 0 到 1 部署上线的经验：https://liuyuyang.net/\", \"利用业余时间持续输出技术文章，目前在 CSDN 累计拥有 1700+ 粉丝\", \"熟练 Spring Boot 以及 Express、Flask 等多种后端开发语言 对前后端接口联调过程中的问题能够进行清晰定位\", \"能够独当一面，从 0 到 1 构建前端项目 且 具备完整项目设计、研发、部署、全链路问题排查能力\"], \"personalInfo\": {\"age\": \"22岁\", \"name\": \"刘宇阳\", \"title\": \"前端开发工程师\", \"avatar\": \"https://q1.qlogo.cn/g?b=qq&nk=3311118881&s=640\", \"contact\": {\"email\": \"liuyuyang1024@yeah.net\", \"phone\": \"1778811xxxx\", \"github\": \"https://github.com/LiuYuYang01\"}, \"location\": \"郑州\"}, \"workExperience\": [{\"period\": \"2024.07-至今\", \"company\": \"宁波 XXXX 数字科技有限公司\", \"position\": \"前端负责人\", \"responsibilities\": [\"带领前端团队优化日常项目的开发与落地，并承担重点项目开发与上线\", \"在项目紧急情况下，由我负责前端的设计与实现，在经过 3 个月的 996 加班后，如期完成了项目的高质量上线。最终结果令老板满意，奖励一次性 5 万元奖金。在半年内完成涨薪 100%\"]}, {\"period\": \"2024.05-2024.06\", \"company\": \"成都 XX 科技有限公司\", \"position\": \"前端开发工程师\", \"responsibilities\": [\"负责公司内部 Todo 系统开发与改进，采用 Electron 桌面软件开发框架\"]}]}', '我的简历');
INSERT INTO `page_config` VALUES (3, 'equipment', '{\"list\": [{\"items\": [{\"name\": \"MacBook Air M4\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/MacBook%20Air%20M4.jpg\", \"price\": 8757, \"description\": \"发布当天就买了，目前在为我创造价值\"}, {\"name\": \"iPhone 16 Pro Max\", \"color\": \"#F6F6F8\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/iPhone16ProMax.jpg\", \"price\": 8299, \"description\": \"第一次用苹果，感觉除了流畅些，其他的都不如安卓 [:狗头]\"}, {\"name\": \"Xiaomi 7s Pro\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/Xiaomi7sPro.png\", \"price\": 2300, \"description\": \"用来学习是个不错的选择\"}, {\"name\": \"Redmi A27U 4K 显示器\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/Redmi%20A27U%204K%20%E6%98%BE%E7%A4%BA%E5%99%A8.png\", \"price\": 1399, \"description\": \"4K 显示屏性价比天花板\"}, {\"name\": \"Magic Keyboard\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/Magic%20Keyboard.jpg\", \"price\": 599, \"description\": \"习惯了用触控板，自然少不了这个\"}, {\"name\": \"洛斐小顺青春版\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E6%B4%9B%E6%96%90%E5%B0%8F%E9%A1%BA%E9%9D%92%E6%98%A5%E7%89%88.jpeg\", \"price\": 399, \"description\": \"目前我的主力键盘\"}, {\"name\": \"Keychron K3 Max\", \"color\": \"#E9E9E9\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/Keychron%20K3%20Max.jpeg\", \"price\": 379, \"description\": \"比小顺手感略差些\"}, {\"name\": \"ROG月刃无线AimPoint36k\", \"color\": \"#E9E9E9\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/ROGAimPoint36k.png\", \"price\": 319, \"description\": \"颜值、手感和续航都很 Nice，可惜没有无极滚轮功能\"}], \"category\": \"正在使用的装备\", \"description\": \"这些是我的核心生产力设备\"}, {\"items\": [{\"name\": \"MacBook Air M2\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/MacBook%20Air%20M2.png\", \"price\": 10017, \"description\": \"第四台电脑， 用了半年以 6k 价位卖给了同学， 几乎每个月亏损 1k 🥺\"}, {\"name\": \"华硕灵耀 14\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E5%8D%8E%E7%A1%95%E7%81%B5%E8%80%80%2014.png\", \"price\": 6596, \"description\": \"我的第三台电脑，我比较看重这台电脑的屏幕显示效果。可不知道为什么电脑各方面配置还不错，但经常死机，不夸张的说一天能死机最起码 5 次，只能强制重启。最终用了半年多以 4k 出掉了 😤\"}, {\"name\": \"联想拯救者 R900k\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E8%81%94%E6%83%B3%E6%8B%AF%E6%95%91%E8%80%85%20R900k.jpg\", \"price\": 9298, \"description\": \"我的第二台电脑，买来之后几乎没打过游戏，每天在教室搬来搬去 用了一年左右干脆 5k 卖掉了\"}, {\"name\": \"联想小新 14\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E8%81%94%E6%83%B3%E5%B0%8F%E6%96%B0%2014.jpg\", \"price\": 4279, \"description\": \"我的第一台电脑，用了 2 年以 2700 卖掉，还挺保值的 😌\"}, {\"name\": \"小米 14 Pro\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E5%B0%8F%E7%B1%B3%2014%20Pro.jpg\", \"price\": 4999, \"description\": \"我的第三款小米手机\"}, {\"name\": \"小米 13\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E5%B0%8F%E7%B1%B3%2013.jpg\", \"price\": 3920, \"description\": \"我的第二款小米手机\"}, {\"name\": \"小米 10 至尊纪念版\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E5%B0%8F%E7%B1%B3%2010%20%E8%87%B3%E5%B0%8A%E7%BA%AA%E5%BF%B5%E7%89%88.webp\", \"price\": 5599, \"description\": \"我的第一款小米手机，用了 2 年以 1500 元卖掉了\"}, {\"name\": \"Vivo X23\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/Vivo%20X23.jpg\", \"price\": 2100, \"description\": \"我的第一款安卓手机\"}, {\"name\": \"iPhone SE\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/iPhone%20SE.jpg\", \"price\": 0, \"description\": \"第一次用苹果 🤩\"}, {\"name\": \"HUAWEI FreeBuds SE 2\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/HUAWEI%20FreeBuds%20SE%202.png\", \"price\": 175, \"description\": \"还可以，只可惜不支持降噪和多设备连接\"}, {\"name\": \"漫步者 LOLLI3 ANC\", \"color\": \"#829887\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E6%BC%AB%E6%AD%A5%E8%80%85%20LOLLI3%20ANC.jpg\", \"price\": 469, \"description\": \"最终还是丢了 😭，以后不会再买这么贵的耳机了\"}, {\"name\": \"小度降噪耳机 Pro\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E5%B0%8F%E5%BA%A6%E9%99%8D%E5%99%AA%E8%80%B3%E6%9C%BA%20Pro.webp\", \"price\": 438, \"description\": \"丢了 😭\"}, {\"name\": \"漫步者 LolliPods plus\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E6%BC%AB%E6%AD%A5%E8%80%85%20LolliPods%20plus.jpg\", \"price\": 279, \"description\": \"丢了 😭\"}, {\"name\": \"腹灵 MK800\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E8%85%B9%E7%81%B5%20MK800.webp\", \"price\": 449, \"description\": \"做工和外观都不错，只是按压偏重适合打游戏，最终以 200 元卖给了同学\"}, {\"name\": \"RK987\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/RK987.webp\", \"price\": 273, \"description\": \"键盘进水导致部分按键失灵，但不影响打游戏，后来以 20 元送给了同学\"}, {\"name\": \"联想拯救者 M600\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E8%81%94%E6%83%B3%E6%8B%AF%E6%95%91%E8%80%85%20M600.jpg\", \"price\": 205, \"description\": \"手感还不错，只是过保就坏😠，修的话也不划算就扔掉了\"}, {\"name\": \"联想拯救者无线鼠标 M7\", \"image\": \"https://res.liuyuyang.net/thrive/equipment/%E8%81%94%E6%83%B3%E6%8B%AF%E6%95%91%E8%80%85%E6%97%A0%E7%BA%BF%E9%BC%A0%E6%A0%87%20M7.jpg\", \"price\": 199, \"description\": \"外观和手感都不错，尤其是滚轮支持无极滚动\"}], \"category\": \"以往的设备\", \"description\": \"这些设备已经退役，但它们曾经陪伴我度过了一段美好的时光\"}]}', '我的设备');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限标识',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限介绍',
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限分组',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Permission_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 'user:add', '新增用户', 'user');
INSERT INTO `permission` VALUES (2, 'user:del', '删除用户', 'user');
INSERT INTO `permission` VALUES (3, 'user:edit', '编辑用户', 'user');
INSERT INTO `permission` VALUES (4, 'user:info', '获取用户', 'user');
INSERT INTO `permission` VALUES (5, 'user:list', '获取用户列表', 'user');
INSERT INTO `permission` VALUES (6, 'user:pass', '修改用户密码', 'user');
INSERT INTO `permission` VALUES (7, 'data:add', '新增数据', 'data');
INSERT INTO `permission` VALUES (8, 'data:del', '删除数据', 'data');
INSERT INTO `permission` VALUES (9, 'article:add', '新增文章', 'article');
INSERT INTO `permission` VALUES (10, 'article:del', '删除文章', 'article');
INSERT INTO `permission` VALUES (11, 'article:reduction', '还原被删除的文章', 'article');
INSERT INTO `permission` VALUES (12, 'article:del', '批量删除文章', 'article');
INSERT INTO `permission` VALUES (13, 'article:edit', '编辑文章', 'article');
INSERT INTO `permission` VALUES (14, 'cate:add', '新增分类', 'cate');
INSERT INTO `permission` VALUES (15, 'cate:del', '删除分类', 'cate');
INSERT INTO `permission` VALUES (16, 'cate:edit', '编辑分类', 'cate');
INSERT INTO `permission` VALUES (17, 'comment:del', '删除评论', 'comment');
INSERT INTO `permission` VALUES (18, 'comment:edit', '编辑评论', 'comment');
INSERT INTO `permission` VALUES (19, 'comment:audit', '审核评论', 'comment');
INSERT INTO `permission` VALUES (22, 'config:edit', '修改项目配置', 'config');
INSERT INTO `permission` VALUES (23, 'email:dismiss', '驳回通知邮件', 'email');
INSERT INTO `permission` VALUES (24, 'file:info', '获取文件信息', 'file');
INSERT INTO `permission` VALUES (25, 'file:dir', '获取目录列表', 'file');
INSERT INTO `permission` VALUES (26, 'file:list', '获取文件列表', 'file');
INSERT INTO `permission` VALUES (27, 'file:add', '文件上传', 'file');
INSERT INTO `permission` VALUES (28, 'file:del', '删除文件', 'file');
INSERT INTO `permission` VALUES (29, 'oss:add', '新增oss配置', 'oss');
INSERT INTO `permission` VALUES (30, 'oss:del', '删除oss配置', 'oss');
INSERT INTO `permission` VALUES (31, 'oss:edit', '更新oss配置', 'oss');
INSERT INTO `permission` VALUES (32, 'oss:info', '获取oss配置', 'oss');
INSERT INTO `permission` VALUES (33, 'oss:list', '获取oss配置列表', 'oss');
INSERT INTO `permission` VALUES (34, 'oss:enable', '启用oss配置', 'oss');
INSERT INTO `permission` VALUES (35, 'oss:getEnableOss', '获取当前启用的oss配置', 'oss');
INSERT INTO `permission` VALUES (36, 'oss:getPlatform', '获取支持的oss平台', 'oss');
INSERT INTO `permission` VALUES (37, 'record:add', '新增说说', 'record');
INSERT INTO `permission` VALUES (38, 'record:del', '删除说说', 'record');
INSERT INTO `permission` VALUES (39, 'record:edit', '编辑说说', 'record');
INSERT INTO `permission` VALUES (40, 'role:add', '新增角色', 'role');
INSERT INTO `permission` VALUES (41, 'role:del', '删除角色', 'role');
INSERT INTO `permission` VALUES (42, 'role:edit', '编辑角色', 'role');
INSERT INTO `permission` VALUES (43, 'role:info', '获取角色', 'role');
INSERT INTO `permission` VALUES (44, 'role:list', '获取角色列表', 'role');
INSERT INTO `permission` VALUES (46, 'role:bindingRoute', '分配角色权限', 'role');
INSERT INTO `permission` VALUES (47, 'route:add', '新增路由', 'route');
INSERT INTO `permission` VALUES (48, 'route:del', '删除路由', 'route');
INSERT INTO `permission` VALUES (49, 'route:edit', '编辑路由', 'route');
INSERT INTO `permission` VALUES (50, 'route:info', '获取路由', 'route');
INSERT INTO `permission` VALUES (51, 'route:list', '获取路由列表', 'route');
INSERT INTO `permission` VALUES (52, 'swiper:add', '新增轮播图', 'swiper');
INSERT INTO `permission` VALUES (53, 'swiper:del', '删除轮播图', 'swiper');
INSERT INTO `permission` VALUES (54, 'swiper:edit', '编辑轮播图', 'swiper');
INSERT INTO `permission` VALUES (55, 'tag:add', '新增标签', 'tag');
INSERT INTO `permission` VALUES (56, 'tag:del', '删除标签', 'tag');
INSERT INTO `permission` VALUES (57, 'tag:edit', '编辑标签', 'tag');
INSERT INTO `permission` VALUES (58, 'wall:del', '删除留言', 'wall');
INSERT INTO `permission` VALUES (59, 'wall:edit', '编辑留言', 'wall');
INSERT INTO `permission` VALUES (60, 'wall:audit', '审核留言', 'wall');
INSERT INTO `permission` VALUES (62, 'permission:add', '新增权限', 'permission');
INSERT INTO `permission` VALUES (63, 'permission:del', '删除权限', 'permission');
INSERT INTO `permission` VALUES (64, 'permission:edit', '编辑权限', 'permission');
INSERT INTO `permission` VALUES (65, 'permission:info', '获取权限', 'permission');
INSERT INTO `permission` VALUES (66, 'permission:list', '获取权限列表', 'permission');
INSERT INTO `permission` VALUES (67, 'link:del', '删除网站', 'link');
INSERT INTO `permission` VALUES (68, 'link:edit', '编辑网站', 'link');
INSERT INTO `permission` VALUES (69, 'link:audit', '审核网站', 'link');
INSERT INTO `permission` VALUES (70, 'email:reply_wall', '回复留言', 'email');
INSERT INTO `permission` VALUES (71, 'wall:choice', '设置与取消精选留言', 'wall');
INSERT INTO `permission` VALUES (72, 'album_cate:add', '新增相册', 'album');
INSERT INTO `permission` VALUES (73, 'album_cate:del', '删除相册', 'album');
INSERT INTO `permission` VALUES (74, 'album_cate:edit', '编辑相册', 'album');
INSERT INTO `permission` VALUES (75, 'album_image:add', '新增照片', 'album');
INSERT INTO `permission` VALUES (76, 'album_image:del', '删除照片', 'album');
INSERT INTO `permission` VALUES (77, 'album_image:edit', '编辑照片', 'album');
INSERT INTO `permission` VALUES (78, 'assistant:add', '新增助手', 'assistant');
INSERT INTO `permission` VALUES (79, 'assistant:del', '删除助手', 'assistant');
INSERT INTO `permission` VALUES (80, 'assistant:edit', '编辑助手', 'assistant');
INSERT INTO `permission` VALUES (81, 'assistant:list', '获取助手列表', 'assistant');
INSERT INTO `permission` VALUES (82, 'assistant:default', '设置默认助手', 'assistant');
INSERT INTO `permission` VALUES (84, 'config', '编辑配置', 'config');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `images` json NULL COMMENT '图片',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `record_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, '测试', '[\"https://bu.dusays.com/2024/11/17/6739adf188f64.png\"]', '1736513670072');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `mark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色标识',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '管理员', 'admin', '最高权限');
INSERT INTO `role` VALUES (2, '作者', 'author', '发布文章、查看文章列表');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL COMMENT '角色ID',
  `permission_id` int NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `role_permission_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '路由路径',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '路由描述',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `routes_pk_2`(`id` ASC) USING BTREE,
  UNIQUE INDEX `routes_pk`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES (1, '/', '仪表盘');
INSERT INTO `route` VALUES (2, '/create', '创作');
INSERT INTO `route` VALUES (5, '/setup', '系统');
INSERT INTO `route` VALUES (6, '/article', '文章管理');
INSERT INTO `route` VALUES (7, '/tag', '标签管理');
INSERT INTO `route` VALUES (8, '/comment', '评论管理');
INSERT INTO `route` VALUES (9, '/cate', '分类管理');
INSERT INTO `route` VALUES (10, '/web', '链接管理');
INSERT INTO `route` VALUES (11, '/swiper', '轮播图管理');
INSERT INTO `route` VALUES (12, '/user', '用户管理');
INSERT INTO `route` VALUES (13, '/role', '角色管理');
INSERT INTO `route` VALUES (15, '/chart', '文件系统');
INSERT INTO `route` VALUES (17, '/iter', '更新日志');
INSERT INTO `route` VALUES (20, '/route', '路由管理');
INSERT INTO `route` VALUES (21, '/file', '文件管理');
INSERT INTO `route` VALUES (23, '/footprint', '足迹管理');
INSERT INTO `route` VALUES (24, '/work', '工作台');
INSERT INTO `route` VALUES (25, '/wall', '留言管理');
INSERT INTO `route` VALUES (26, '/draft', '草稿箱');
INSERT INTO `route` VALUES (27, '/recycle', '回收站');
INSERT INTO `route` VALUES (28, '/record', '说说管理');
INSERT INTO `route` VALUES (29, '/create_record', '闪念');
INSERT INTO `route` VALUES (30, '/storage', '存储管理');
INSERT INTO `route` VALUES (31, '/album', '相册管理');
INSERT INTO `route` VALUES (32, '/assistant', '助手管理');
INSERT INTO `route` VALUES (33, '/config', '项目配置');

-- ----------------------------
-- Table structure for route_role
-- ----------------------------
DROP TABLE IF EXISTS `route_role`;
CREATE TABLE `route_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `route_id` int NOT NULL COMMENT '路由id',
  `role_id` int NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `routes_role_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of route_role
-- ----------------------------
INSERT INTO `route_role` VALUES (1, 1, 5);
INSERT INTO `route_role` VALUES (2, 10, 5);
INSERT INTO `route_role` VALUES (3, 7, 5);
INSERT INTO `route_role` VALUES (4, 9, 5);
INSERT INTO `route_role` VALUES (5, 8, 5);
INSERT INTO `route_role` VALUES (6, 6, 5);
INSERT INTO `route_role` VALUES (7, 2, 5);
INSERT INTO `route_role` VALUES (8, 5, 5);
INSERT INTO `route_role` VALUES (36, 1, 2);
INSERT INTO `route_role` VALUES (37, 7, 2);
INSERT INTO `route_role` VALUES (38, 9, 2);
INSERT INTO `route_role` VALUES (39, 8, 2);
INSERT INTO `route_role` VALUES (40, 6, 2);
INSERT INTO `route_role` VALUES (41, 2, 2);

-- ----------------------------
-- Table structure for swiper
-- ----------------------------
DROP TABLE IF EXISTS `swiper`;
CREATE TABLE `swiper`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of swiper
-- ----------------------------
INSERT INTO `swiper` VALUES (1, 'ThriveX 3.0 来袭，不忘初心，保持热爱', '', 'https://bu.dusays.com/2025/06/15/684e8f3435c97.png', 'https://github.com/LiuYuYang01/ThriveX-Admin');
INSERT INTO `swiper` VALUES (29, 'ThriveX 官网全新发布 🎉', NULL, 'https://bu.dusays.com/2025/01/21/678f4a609f91f.png', 'https://thrivex.liuyuyang.net/');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (3, '测试标签');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名称',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户介绍',
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户角色ID',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_pk`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '宇阳', '3311118881@qq.com', 'https://bu.dusays.com/2024/11/17/6739adf188f64.png', 'ThriveX 博客管理系统作者', '1', '1723533206613');

-- ----------------------------
-- Table structure for user_token
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL COMMENT '用户 ID',
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户token',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_token_pk_2`(`id` ASC) USING BTREE,
  UNIQUE INDEX `user_token_pk_3`(`uid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户 token' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_token
-- ----------------------------
INSERT INTO `user_token` VALUES (81, 1, 'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjp7ImlkIjoxLCJuYW1lIjoi566h55CG5ZGYIiwibWFyayI6ImFkbWluIiwiZGVzY3JpcHRpb24iOiLmnIDpq5jmnYPpmZAifSwiZXhwIjoxNzU3MjE0ODU0LCJ1c2VyIjp7ImlkIjoxLCJjcmVhdGVUaW1lIjoiMTcyMzUzMzIwNjYxMyIsInVzZXJuYW1lIjoiYWRtaW4iLCJwYXNzd29yZCI6ImUxMGFkYzM5NDliYTU5YWJiZTU2ZTA1N2YyMGY4ODNlIiwibmFtZSI6IuWuh-mYsyIsImluZm8iOiJUaHJpdmVYIOWNmuWuoueuoeeQhuezu-e7n-S9nOiAhSIsImVtYWlsIjoiMzMxMTExODg4MUBxcS5jb20iLCJhdmF0YXIiOiJodHRwczovL2J1LmR1c2F5cy5jb20vMjAyNC8xMS8xNy82NzM5YWRmMTg4ZjY0LnBuZyIsInJvbGVJZCI6IjEiLCJyb2xlIjpudWxsfX0.d6p3QASI_CrOualKTWHJbS_KiyXl7ZswnuTKJIFlpN8');

-- ----------------------------
-- Table structure for wall
-- ----------------------------
DROP TABLE IF EXISTS `wall`;
CREATE TABLE `wall`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '神秘人' COMMENT '留言人名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '留言内容',
  `color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#ffe3944d' COMMENT '留言墙颜色',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '留言者邮箱',
  `cate_id` int NOT NULL,
  `audit_status` int NULL DEFAULT 0 COMMENT '是否审核',
  `is_choice` int NOT NULL DEFAULT 0 COMMENT '是否为精选留言',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `wall_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '留言墙' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wall
-- ----------------------------
INSERT INTO `wall` VALUES (104, '测试', '测试测试测试测试测试', '#fcafa24d', '3311118881@qq.com', 6, 1, 0, '1729231268305');
INSERT INTO `wall` VALUES (107, '测试', '测试测试测试测试测试', '#fcafa24d', '3311118881@qq.com', 6, 0, 0, '1729231268305');
INSERT INTO `wall` VALUES (108, '测试', '测试测试测试测试测试', '#fcafa24d', '3311118881@qq.com', 6, 0, 0, '1729231268305');

-- ----------------------------
-- Table structure for wall_cate
-- ----------------------------
DROP TABLE IF EXISTS `wall_cate`;
CREATE TABLE `wall_cate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  `mark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类标识',
  `order` int NOT NULL COMMENT '分类顺序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `wall_cate_pk_2`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '留言分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wall_cate
-- ----------------------------
INSERT INTO `wall_cate` VALUES (1, '全部', 'all', 1);
INSERT INTO `wall_cate` VALUES (2, '想对我说的话', 'info', 2);
INSERT INTO `wall_cate` VALUES (3, '对我的建议', 'suggest', 3);
INSERT INTO `wall_cate` VALUES (6, '其他', 'other', 6);
INSERT INTO `wall_cate` VALUES (7, '精选', 'choice', 0);

-- ----------------------------
-- Table structure for web_config
-- ----------------------------
DROP TABLE IF EXISTS `web_config`;
CREATE TABLE `web_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配置项名称',
  `value` json NOT NULL COMMENT '配置项值',
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `web_page1_pk_2`(`id` ASC) USING BTREE,
  UNIQUE INDEX `web_page1_pk_3`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '网站配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_config
-- ----------------------------
INSERT INTO `web_config` VALUES (1, 'web', '{\"icp\": \"豫ICP备2020031040号-1\", \"url\": \"https://liuyuyang.net/\", \"title\": \"墨韵云阁\", \"footer\": \"真诚邀请大家成为 ThriveX 博客管理系统的贡献者，一起参与项目开发，构建一个强大的博客管理系统！\", \"favicon\": \"https://res.liuyuyang.net/usr/images/favicon.ico\", \"keyword\": \"宇阳,刘宇阳,Thrive,前端,Python,Java,Thrive,ThriveX,ThriveX现代化博客管理系统\", \"subhead\": \"🎯 梦想做一名技术顶尖的架构师，奈何学历太低！\", \"create_time\": 1756887752500, \"description\": \"也许会是最好用的博客管理系统\"}', '网站配置');
INSERT INTO `web_config` VALUES (2, 'theme', '{\"covers\": [\"https://bu.dusays.com/2023/11/10/654e2da1d80f8.jpg\", \"https://bu.dusays.com/2023/11/10/654e2d719d31c.jpg\", \"https://bu.dusays.com/2023/11/10/654e2cf92cd45.jpg\", \"https://bu.dusays.com/2023/11/10/654e2cf6055b0.jpg\", \"https://bu.dusays.com/2023/11/10/654e2db0889fe.jpg\", \"https://bu.dusays.com/2023/11/10/654e2d50015a9.jpg\", \"https://bu.dusays.com/2023/11/05/65473848ed863.jpg\", \"https://bu.dusays.com/2023/11/10/654e2c870e280.jpg\", \"https://bu.dusays.com/2023/11/10/654e2c717eb73.jpg\", \"https://bu.dusays.com/2023/11/10/654e2c5d75d5b.jpg\", \"https://bu.dusays.com/2023/11/10/654e2da27801e.jpg\", \"https://bu.dusays.com/2023/11/10/654e2d2a67517.jpg\", \"https://bu.dusays.com/2023/11/10/654e2cf47f17a.jpg\", \"https://bu.dusays.com/2023/11/05/65473848ed863.jpg\"], \"social\": [{\"url\": \"https://github.com/LiuYuYang01\", \"name\": \"GitHub\"}, {\"url\": \"https://gitee.com/liu_yu_yang666\", \"name\": \"Gitee\"}, {\"url\": \"https://juejin.cn/user/3083456627092078/posts\", \"name\": \"Juejin\"}, {\"url\": \"https://blog.csdn.net/haodian666?type=blog\", \"name\": \"CSDN\"}, {\"url\": \"http://wpa.qq.com/msgrd?v=3&uin=3311118881&site=qq&menu=yes\", \"name\": \"QQ\"}], \"dark_logo\": \"https://bu.dusays.com/2024/05/03/663481106dcfd.png\", \"light_logo\": \"https://bu.dusays.com/2024/05/03/663481106e2a4.png\", \"record_info\": \"🎯 梦想做一名技术顶尖的架构师，奈何学历太低！\", \"record_name\": \"👋 Liu 宇阳\", \"swiper_text\": [\"System.out.print(\\\"欢迎使用 ThriveX 博客管理系统！\\\");\", \"print(\\\"这是一个 Nextjs + Spring Boot 的产物\\\")\"], \"reco_article\": [1, 2], \"swiper_image\": \"https://bu.dusays.com/2024/04/24/6628990012b51.jpg\", \"right_sidebar\": [\"author\", \"hotArticle\", \"newComments\", \"randomArticle\", \"runTime\", \"study\"], \"is_article_layout\": \"classics\"}', '主题配置');
INSERT INTO `web_config` VALUES (3, 'other', '{\"baidu_token\": \"02763c3213f90c5c372373e84601974c\", \"hcaptcha_key\": \"89bc8b86-b58a-4658-b982-aeb8d6744cf4\"}', '其他配置');

SET FOREIGN_KEY_CHECKS = 1;
