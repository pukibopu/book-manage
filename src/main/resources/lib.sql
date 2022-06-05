/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : lib

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 05/06/2022 09:42:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Authors` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Press` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PublishData` datetime NULL DEFAULT NULL,
  `Price` decimal(10, 2) NULL DEFAULT NULL,
  `Status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CategoryId` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `f_cid`(`CategoryId`) USING BTREE,
  CONSTRAINT `f_cid` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '511201', 'Python编程 从入门到实践 第2版', '埃里克·马瑟斯', '人民邮电出版社', 'book1.png', '本书是针对所有层次Python读者而作的Python入门书。全书分两部分：第一部分介绍用Python编程所必须了解的基本概念，包括强大的Python库和工具，以及列表、字典、if语句、类、文件与异常、代码测试等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的2D游戏、利用数据生成交互式的信息图以及创建和定制简单的Web应用，并帮助读者解决常见编程问题和困惑。第2版进行了全面修订，简化了Python安装流程，新增了f字符串、get()方法等内容，并且在项目中使用了Plotly库以及新版本的Django和Bootstrap，等等。', '2020-10-01 00:00:00', 73.60, '有货', 1);
INSERT INTO `book` VALUES (2, '511202', 'Vue.js设计与实现', '霍春阳', '人民邮电出版社', 'book2.png', '本书基于Vue.js 3，从规范出发，以源码为基础，并结合大量直观的配图，循序渐进地讲解Vue.js中各个功能模块的实现，细致剖析框架设计原理。全书共18章，分为六篇，主要内容包括：框架设计概览、响应系统、渲染器、组件化、编译器和服务端渲染等。通过阅读本书，对Vue.js 2/3具有上手经验的开发人员能够进一步理解Vue.js框架的实现细节，没有Vue.js使用经验但对框架设计感兴趣的前端开发人员，能够快速掌握Vue.js的设计原理。', '2022-01-01 00:00:00', 89.20, '有货', 5);
INSERT INTO `book` VALUES (3, '511203', 'JavaScript高级程序设计 第4版(', '马特·弗里斯比', '人民邮电出版社', 'book3.png', '本书是JavaScript经典图书的新版。第4版涵盖ECMAScript 2019，全面、深入地介绍了JavaScript开发者必须掌握的前端开发技术，涉及JavaScript的基础特性和高级特性。书中详尽讨论了JavaScript的各个方面，从JavaScript的起源开始，逐步讲解到新出现的技术，其中重点介绍ECMAScript和DOM标准。在此基础上，接下来的各章揭示了JavaScript的基本概念，包括类、期约、迭代器、代理，等等。另外，书中深入探讨了客户端检测、事件、动画、表单、错误处理及JSON。本书同时也介绍了近几年来涌现的重要新规范，包括Fetch API、模块、工作者线程、服务线程以及大量新API。', '2020-09-01 00:00:00', 86.50, '有货', 5);
INSERT INTO `book` VALUES (4, '511204', 'C++ Primer Plus 第6版 中文版', '史蒂芬·普拉达', '人民邮电出版社', 'book4.png', 'C++是在 C 语言基础上开发的一种集面向对象编程、泛型编程和过程化编程于一体的编程语言，是C语言的超集。本书是根据2003年的ISO/ANSI C++标准编写的，通过大量短小精悍的程序详细而全面地阐述了 C++的基本概念和技术，并专辟一章介绍了C++11新增的功能。\r\n《C++ Primer Plus（第6版）中文版》分18章，分别介绍了C++程序的运行方式、基本数据类型、复合数据类型、循环和关系表达式、分支语句和逻辑运算符、函数重载和函数模板、内存模型和名称空间、类的设计和使用、多态、虚函数、动态内存分配、继承、代码重用、友元、异常处理技术、string类和标准模板库、输入/输出、C++11新增功能等内容。\r\n《C++ Primer Plus（第6版）中文版》针对C++初学者，从C语言基础知识开始介绍，然后在此基础上详细阐述C++新增的特性，因此不要求读者有C语言方面的背景知识。《C++ Primer Plus（第6版）中文版》可作为高等院校教授C++课程的教材，也可供初学者自学C++时使用。', '2020-07-01 00:00:00', 115.60, '无货', 4);
INSERT INTO `book` VALUES (5, '511205', 'C Primer Plus 第6版 中文版', '史蒂芬·普拉达', '人民邮电出版社', 'book5.png', '《C Primer Plus（第6版）中文版》详细讲解了C语言的基本概念和编程技巧。\r\n《C Primer Plus（第6版）中文版》共17章。第1章、第2章介绍了C语言编程的预备知识。第3章～第15章详细讲解了C语言的相关知识，包括数据类型、格式化输入/输出、运算符、表达式、语句、循环、字符输入和输出、函数、数组和指针、字符和字符串函数、内存管理、文件输入和输出、结构、位操作等。第16章、第17章介绍C预处理器、C库和高级数据表示。本书以丰富多样的程序为例，讲解C语言的知识要点和注意事项。每章末尾设计了大量复习题和编程练习，帮助读者巩固所学知识和提高实际编程能力。附录给出了各章复习题的参考答案和丰富的参考资料。\r\n《C Primer Plus（第6版）中文版》可作为C语言的教材，适用于需要系统学习C语言的初学者，也适用于想要巩固C语言知识或希望进一步提高编程技术的程序员。', '2019-11-01 00:00:00', 106.90, '有货', 3);
INSERT INTO `book` VALUES (6, '511206', '深入理解Java虚拟机：JVM高级特性与最佳实践', '周志明', '机械工业出版社', 'book6.png', '这是一部从工作原理和工程实践两个维度深入剖析JVM的著作，是计算机领域公认的经典，繁体版在中国台湾地区也颇受欢迎。\r\n\r\n自2011年上市以来，累计印刷超40次，销量超过30万册，两家主要网络书店的评论近90000条，内容上近乎零差评，是原创计算机图书领域不可逾越的丰碑。\r\n\r\n第3版在第2版的基础上做了重大修订，内容更丰富、实战性更强：根据新版JDK对内容进行了全方位的修订和升级，围绕新技术和生产实践新增逾10万字，包含近50%的全新内容，并对第2版中含糊、瑕疵和错误内容进行了修正。涵盖互联网大厂面试重要知识点！\r\n\r\n', '2019-12-01 00:00:00', 100.20, '有货', 2);
INSERT INTO `book` VALUES (7, '511207', 'Python3网络爬虫开发实战 第2版', '崔庆才', '人民邮电出版社', 'book7.png', '本书介绍了如何利用 Python 3 开发网络爬虫。本书为第 2 版，相比于第 1 版，为每个知识点的实战项目配备了针对性的练习平台，避免了案例过期的问题。另外，主要增加了异步爬虫、JavaScript 逆向、App 逆向、页面智能解析、深度学习识别验证码、Kubernetes 运维及部署等知识点，同时也对各个爬虫知识点涉及的请求、存储、解析、测试等工具进行了丰富和更新。\r\n本书适合Python 程序员阅读。', '2021-11-01 00:00:00', 110.20, '有货', 1);
INSERT INTO `book` VALUES (8, '511208', 'Java核心技术 第11版 套装共2册', '凯·S·霍斯特曼', '机械工业出版社', 'book8.png', '本书由拥有20多年教学与研究经验的资深Java技术专家撰写（获Jolt大奖），是程序员的优选Java指南。本版针对Java SE 9、10和 11全面更新。', '2020-01-01 00:00:00', 149.00, '有货', 2);
INSERT INTO `book` VALUES (9, '511209', 'Java从入门到精通（第6版）', '明日科技', '清华大学出版社', 'book9.png', '《Java从入门到精通（第6版）》从初学者角度出发，通过通俗易懂的语言、丰富多彩的实例，详细讲解了使用Java语言进行程序开发需要掌握的知识。书中所有知识都结合具体实例进行讲解，涉及的程序代码都给出了详细的注释，可以使读者轻松领会Java程序开发的精髓，快速提高开发技能。', '2021-07-01 00:00:00', 75.80, '有货', 2);
INSERT INTO `book` VALUES (10, '511210', 'JavaScript 指南 原书第7版 犀牛书JS高级程序设计', 'David Flanagan', '机械工业出版社', 'book10.png', '本书介绍JavaScript语言和由浏览器与Node实现的JavaScript API。本书适合有一定编程经验、想学习JavaScript读者，也适合已经在使用JavaScript但希望更深入地理解进而真正掌握这门语言的程序员。\r\n\r\n\r\n\r\n本书的目标是全面地讲解JavaScript语言，对JavaScript程序中可能用到的重要的客户端API和服务器端API提供深入的介绍。本书篇幅较长，内容非常详尽，相信认真研究本书的读者都能获益良多。', '2021-04-01 00:00:00', 104.20, '有货', 5);
INSERT INTO `book` VALUES (11, '511211', '流畅的Python', 'Luciano Ramalho', '人民邮电出版社', 'book11.png', '本书致力于帮助Python开发人员挖掘这门语言及相关程序库的优秀特性，避免重复劳动，同时写出简洁、流畅、易读、易维护，并且具有地道Python风格的代码。本书尤其深入探讨了Python语言的高级用法，涵盖数据结构、Python风格的对象、并行与并发，以及元编程等不同的方面。', '2017-05-01 00:00:00', 109.60, '有货', 1);
INSERT INTO `book` VALUES (12, '511212', 'Java编程思想（第4版）', 'Bruce Eckel', '机械工业出版社', 'book12.png', '《计算机科学丛书：Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是晦涩的概念，在BruceEckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。\r\n从《计算机科学丛书：Java编程思想（第4版）》获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言以及Java语言的好教材和参考书。', '2007-06-01 00:00:00', 54.00, '有货', 2);
INSERT INTO `book` VALUES (13, '511213', 'JavaScript 指南 原书第7版 犀牛书JS高级程序设计', 'David Flanagan', '机械工业出版社', 'book13.png', '本书介绍JavaScript语言和由浏览器与Node实现的JavaScript API。本书适合有一定编程经验、想学习JavaScript读者，也适合已经在使用JavaScript但希望更深入地理解进而真正掌握这门语言的程序员。\r\n\r\n本书的目标是全面地讲解JavaScript语言，对JavaScript程序中可能用到的重要的客户端API和服务器端API提供深入的介绍。本书篇幅较长，内容非常详尽，相信认真研究本书的读者都能获益良多。', '2021-04-01 00:00:00', 104.20, '有货', 5);
INSERT INTO `book` VALUES (14, '511214', '流畅的Python', 'Luciano Ramalho', '人民邮电出版社', 'book14.png', '本书致力于帮助Python开发人员挖掘这门语言及相关程序库的优秀特性，避免重复劳动，同时写出简洁、流畅、易读、易维护，并且具有地道Python风格的代码。本书尤其深入探讨了Python语言的高级用法，涵盖数据结构、Python风格的对象、并行与并发，以及元编程等不同的方面。', '2017-05-01 00:00:00', 109.60, '有货', 1);
INSERT INTO `book` VALUES (15, '511215', '数据结构与算法分析 C语言描述', '马克·艾伦·维斯', '机械工业出版社', 'book15.png', '本书是国外数据结构与算法分析方面的标准教材,介绍了数据结构(大量数据的组织方法)以及算法分析(算法运行时间的估算)。本书的编写目标是同时讲授好的程序设计和算法分析技巧,使读者可以开发出具有*高效率的程序。\r\n本书可作为高级数据结构课程或研究生一年级算法分析课程的教材,使用本书需具有一些中级程序设计知识,还需要离散数学的一些背景知识。', '2019-04-01 00:00:00', 52.20, '有货', 3);
INSERT INTO `book` VALUES (16, '511216', 'Python编程实战100例', '张晓', ' 中国水利水电出版社', 'book16.png', '核心编程应用实例图形界面编程自动化编程网络爬虫数据分析Office自动化图形界面编程数据库开发网络编程爬虫数据分析人工智能python编程从入门到实践', '2021-09-30 00:00:00', 53.88, '有货', 1);
INSERT INTO `book` VALUES (17, '511217', 'Python黄金学习组合', '明日科技', '吉林大学出版社', 'book17.png', '本书通过大量实例及一个完整项目案例，帮助读者更好地巩固所学知识，提升能力；在百度云盘中给出了本书的视频讲解、实例及项目源码、实战源码，方便读者学习；书中设置了200多个二维码，扫描二维码观看视频讲解，解决学习疑难；不易理解的专业术语、代码难点，只需用手机App扫描文字下方的e学码便可获得更多扩展解释，随时扫除学习障碍。', '2018-04-01 00:00:00', 272.50, '有货', 1);
INSERT INTO `book` VALUES (18, '511218', '零基础入门学习Python', '小甲鱼 李佳宇', '清华大学出版社', 'book18.png', '小甲鱼畅销图书重磅升级，针对Python 3.7，通过生动的实例，让读者在实践中理解概念，在轻松、愉快中学会Python！', '2019-04-01 00:00:00', 84.60, '有货', 1);
INSERT INTO `book` VALUES (19, '511219', 'C语言程序设计入门教程', '史蒂芬·普拉达', '人民邮电出版社', 'book19.png', '《C Primer Plus（第6版）中文版》共17章。本书以丰富多样的程序为例，讲解C语言的知识要点和注意事项。每章末尾设计了大量复习题和编程练习，帮助读者巩固所学知识和提高实际编程能力。附录给出了各章复习题的参考答案和丰富的参考资料。', '2021-08-01 00:00:00', 193.80, '有货', 3);
INSERT INTO `book` VALUES (20, '511220', 'Java核心技术 卷I 基础知识', '凯·S.霍斯特曼', '机械工业出版社', 'book20.png', '本书由拥有20多年教学与研究经验的资深Java技术专家撰写（获Jolt大奖），是程序员的优选Java指南。本版针对Java SE 9、10和 11全面更新。全书共12章，为你指明Java的学习路径！', '2019-12-01 00:00:00', 74.50, '有货', 2);
INSERT INTO `book` VALUES (21, '511221', '超简单：用Python让Excel飞起来 实战150例', '李杰臣', '机械工业出版社', 'book21.png', '本书是一本讲解如何用Python 和Excel“强强联手”打造办公利器的案例型教程。\r\n\r\n全书共8 章。\r\n本书理论知识精练，案例典型实用，学习资源齐备，不仅适合有一定Excel 基础又想进一步提高工作效率的办公人员系统地学习Python 办公自动化知识与技能，而且适合作为方便速查速用的实用手册，对于Python 编程爱好者来说也是不错的参考资料。\r\n\r\n本书是一本讲解如何用Python 和Excel“强强联手”打造办公利器的案例型教程。\r\n\r\n全书共8 章。第1 章主要讲解Python 编程环境的搭建、模块的安装与导入、Python 语法基础知识、初学者常见问题等内容，为后面的案例应用打下坚实的基础。第2～8 章通过大量典型案例讲解如何用Python 编程操控Excel，自动化和批量化地完成工作簿操作、工作表操作、行/ 列操作、单元格操作、数据处理与分析操作、\r\n\r\n图表操作、打印操作等。\r\n\r\n本书理论知识精练，案例典型实用，学习资源齐备，不仅适合有一定Excel 基础又想进一步提高工作效率的办公人员系统地学习Python 办公自动化知识与技能，而且适合作为方便速查速用的实用手册，对于Python 编程爱好者来说也是不错的参考资料。\r\n\r\n本书是一本讲解如何用Python 和Excel“强强联手”打造办公利器的案例型教程。\r\n\r\n全书共8 章。第1 章主要讲解Python 编程环境的搭建、模块的安装与导入、Python 语法基础知识、初学者常见问题等内容，为后面的案例应用打下坚实的基础。第2～8 章通过大量典型案例讲解如何用Python 编程操控Excel，自动化和批量化地完成工作簿操作、工作表操作、行/ 列操作、单元格操作、数据处理与分析操作、\r\n\r\n图表操作、打印操作等。\r\n\r\n本书理论知识精练，案例典型实用，学习资源齐备，不仅适合有一定Excel 基础又想进一步提高工作效率的办公人员系统地学习Python 办公自动化知识与技能，而且适合作为方便速查速用的实用手册，对于Python 编程爱好者来说也是不错的参考资料。\r\n\r\n本书是一本讲解如何用Python 和Excel“强强联手”打造办公利器的案例型教程。\r\n\r\n全书共8 章。第1 章主要讲解Python 编程环境的搭建、模块的安装与导入、Python 语法基础知识、初学者常见问题等内容，为后面的案例应用打下坚实的基础。第2～8 章通过大量典型案例讲解如何用Python 编程操控Excel，自动化和批量化地完成工作簿操作、工作表操作、行/ 列操作、单元格操作、数据处理与分析操作、\r\n\r\n图表操作、打印操作等。\r\n\r\n本书理论知识精练，案例典型实用，学习资源齐备，不仅适合有一定Excel 基础又想进一步提高工作效率的办公人员系统地学习Python 办公自动化知识与技能，而且适合作为方便速查速用的实用手册，对于Python 编程爱好者来说也是不错的参考资料。\r\n\r\n本书是一本讲解如何用Python 和Excel“强强联手”打造办公利器的案例型教程。\r\n\r\n全书共8 章。第1 章主要讲解Python 编程环境的搭建、模块的安装与导入、Python 语法基础知识、初学者常见问题等内容，为后面的案例应用打下坚实的基础。第2～8 章通过大量典型案例讲解如何用Python 编程操控Excel，自动化和批量化地完成工作簿操作、工作表操作、行/ 列操作、单元格操作、数据处理与分析操作、\r\n\r\n图表操作、打印操作等。\r\n\r\n本书理论知识精练，案例典型实用，学习资源齐备，不仅适合有一定Excel 基础又想进一步提高工作效率的办公人员系统地学习Python 办公自动化知识与技能，而且适合作为方便速查速用的实用手册，对于Python 编程爱好者来说也是不错的参考资料。', '2021-08-01 00:00:00', 79.80, '有货', 1);
INSERT INTO `book` VALUES (22, '511222', 'Python数据结构与算法分析 第2版', '布拉德利·米勒', '人民邮电出版社', 'book22.png', '本书是用Python描述数据结构与算法的开山之作，汇聚了作者多年的实战经验，向读者透彻讲解在Python环境下，如何通过一系列存储机制高效地实现各类算法。', '2019-09-01 00:00:00', 62.30, '有货', 1);
INSERT INTO `book` VALUES (23, '511223', '深入理解Java虚拟机', '周志明', '机械工业出版社', 'book23.png', '这是一部从工作原理和工程实践两个维度深入剖析JVM的著作，是计算机领域公认的经典，繁体版在台湾也颇受欢迎。自2011年上市以来，前两个版本累计印刷36次，销量超过30万册，两家主要网络书店的评论近90000条，内容上近乎零差评，是原创计算机图书领域不可逾越的丰碑。', '2013-06-01 00:00:00', 83.00, '有货', 2);
INSERT INTO `book` VALUES (24, '511224', '你不知道的JavaScript 上卷+中卷+下卷', '辛普森', '人民邮电出版社', 'book24.png', '语言的使用者不必深入理解这些概念就可以编写出功能全面的应用在本书中，我们要直面当前JavaScript开 发者“不求甚解”的大趋势，深入理解语言内部的机制。', '2021-06-01 00:00:00', 170.80, '有货', 5);
INSERT INTO `book` VALUES (25, '511225', 'Java编程思想第4版第中文版thinking in java教材', 'Bruce Eckel', ' 机械工业出版社', 'book25.png', '《Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是*晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到*高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），《Java编程思想（第4版）》都能逐步指导你轻松掌握。\r\n从java编程思想这本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读。', '2007-06-01 00:00:00', 54.00, '有货', 2);
INSERT INTO `book` VALUES (26, '511226', '深度探索C++对象模型', 'Stanley B. Lippman', '电子工业出版社', 'book26.png', '无', '2020-11-01 00:00:00', 98.00, '有货', 4);
INSERT INTO `book` VALUES (27, '511227', '看漫画学Python', '关东升', '电子工业出版社', 'book27.png', 'Python是一门既简单又强大的编程语言，被广泛应用于数据分析、大数据、网络爬虫、自动化运维、科学计算和人工智能等领域。本书秉承有趣、有料、好玩、好用的理念，通过3个漫画人物的轻松对话、搞笑形象及夸张动作，把复杂的Python技术问题简单化。', '2020-06-01 00:00:00', 88.10, '有货', 1);
INSERT INTO `book` VALUES (28, '511228', 'Python机器学习', '塞巴斯蒂安·拉施卡', '机械工业出版社', 'book28.png', '本书自第1版出版以来，备受广大读者欢迎。本书除了介绍如何用Python和基于Python的机器学习软件库进行实践外，是Python机器学习入门必读之作。它的内容涵盖了众多高效Python库，包括scikit-learn、Keras和TensorFlow等，系统性地梳理和分析了各种经典算法，并通过Python语言以具体代码示例的方式深入浅出地介绍了各种算法的应用，还给出了从情感分析到神经网络的一些实践技巧，这些内容能使你快速解决你和你的团队面临的一些重要问题。', '2021-06-01 00:00:00', 115.70, '有货', 1);
INSERT INTO `book` VALUES (29, '511229', 'PyTorch深度学习入门与实战', '孙玉林 余本国 ', '中国水利水电出版社', 'book29.png', '《PyTorch 深度学习入门与实战（案例视频精讲）》是基于 PyTorch 的深度学习入门和实战，结合实际的深度学习案例，由浅入深地介绍 PyTorch 在计算机视觉和自然语言处理的相关应用。', '2020-07-01 00:00:00', 80.82, '有货', 1);
INSERT INTO `book` VALUES (30, '511230', '零基础学C++ 27小时视频课程', '明日科技', '吉林大学出版社', 'book30.png', '《零基础学C++》从初学者角度出发，通过通俗易懂的语言、流行有趣的实例，详细地介绍了使用C++ 语言进行程序开发需要掌握的知识和技术。书中所有知识都结合具体实例进行了讲解，设计的程序代码给出了详细的注释，可以使读者轻松领会C++ 语言程序开发的精髓，快速提高开发技能。', '2018-08-01 00:00:00', 64.80, '有货', 4);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ReaderId` int(11) NOT NULL,
  `BookId` int(11) NULL DEFAULT NULL,
  `BorrowData` datetime NOT NULL,
  `ReturnedData` datetime NULL DEFAULT NULL,
  `ReturnData` datetime NULL DEFAULT NULL,
  `ReBorrow` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `f_rid`(`ReaderId`) USING BTREE,
  INDEX `f_bookid`(`BookId`) USING BTREE,
  CONSTRAINT `f_bookid` FOREIGN KEY (`BookId`) REFERENCES `book` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `f_rid` FOREIGN KEY (`ReaderId`) REFERENCES `reader` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (3, 3, 13, '2022-05-25 15:54:38', '2022-05-26 14:16:26', '2022-06-06 15:54:38', 'n');
INSERT INTO `borrow` VALUES (4, 3, 6, '2022-05-25 15:54:38', '2022-05-26 14:16:31', '2022-06-06 15:54:38', 'n');
INSERT INTO `borrow` VALUES (5, 3, 1, '2022-05-25 16:08:33', '2022-05-26 17:51:11', '2022-06-18 16:08:33', 'n');
INSERT INTO `borrow` VALUES (6, 3, 3, '2022-05-25 16:09:23', '2022-05-27 10:35:40', '2022-06-18 16:09:23', 'n');
INSERT INTO `borrow` VALUES (7, 3, 7, '2022-05-25 16:09:41', '2022-05-26 14:16:39', '2022-06-06 16:09:41', 'n');
INSERT INTO `borrow` VALUES (8, 3, 5, '2022-05-25 16:11:23', '2022-05-27 10:26:33', '2022-06-18 16:11:23', 'n');
INSERT INTO `borrow` VALUES (9, 3, 27, '2022-05-25 16:12:28', '2022-05-26 14:17:00', '2022-06-06 16:12:28', 'n');
INSERT INTO `borrow` VALUES (10, 3, 17, '2022-05-25 16:16:35', '2022-05-26 14:17:22', '2022-06-06 16:16:35', 'n');
INSERT INTO `borrow` VALUES (11, 3, 17, '2022-05-25 16:17:10', '2022-05-26 14:17:22', '2022-06-06 16:17:10', 'n');
INSERT INTO `borrow` VALUES (12, 3, 26, '2022-05-25 16:20:41', '2022-05-26 14:17:27', '2022-06-06 16:20:41', 'n');
INSERT INTO `borrow` VALUES (13, 3, 2, '2022-05-25 17:03:39', '2022-05-27 10:10:21', '2022-06-06 17:03:39', 'n');
INSERT INTO `borrow` VALUES (14, 3, 12, '2022-05-25 17:03:39', '2022-05-26 14:17:31', '2022-06-06 17:03:39', 'n');
INSERT INTO `borrow` VALUES (15, 3, 11, '2022-05-25 18:38:55', '2022-05-27 10:05:26', '2022-06-06 18:38:55', 'n');
INSERT INTO `borrow` VALUES (16, 1, 4, '2022-05-26 13:13:02', NULL, '2022-06-07 13:13:02', 'n');
INSERT INTO `borrow` VALUES (17, 1, 24, '2022-05-26 13:40:37', '2022-05-26 14:15:08', '2022-06-07 13:40:37', 'n');
INSERT INTO `borrow` VALUES (18, 3, 1, '2022-05-26 17:45:13', '2022-05-26 17:51:11', '2022-06-19 17:45:13', 'n');
INSERT INTO `borrow` VALUES (19, 3, 5, '2022-05-26 18:00:16', '2022-05-27 10:26:33', '2022-06-19 18:00:16', 'n');
INSERT INTO `borrow` VALUES (20, 3, 9, '2022-05-27 10:04:02', '2022-05-27 10:04:07', '2022-06-08 10:04:02', 'n');
INSERT INTO `borrow` VALUES (21, 3, 11, '2022-05-27 10:05:22', '2022-05-27 10:05:26', '2022-06-08 10:05:22', 'n');
INSERT INTO `borrow` VALUES (22, 3, 2, '2022-05-27 10:10:15', '2022-05-27 10:10:21', '2022-06-08 10:10:15', 'n');
INSERT INTO `borrow` VALUES (23, 3, 5, '2022-05-27 10:26:23', '2022-05-27 10:26:33', '2022-06-08 10:26:23', 'n');
INSERT INTO `borrow` VALUES (24, 3, 3, '2022-05-27 10:28:16', '2022-05-27 10:35:40', '2022-06-08 10:28:16', 'n');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '51121', 'Python', NULL);
INSERT INTO `category` VALUES (2, '51122', 'Java', NULL);
INSERT INTO `category` VALUES (3, '51123', 'C', NULL);
INSERT INTO `category` VALUES (4, '51124', 'C++', NULL);
INSERT INTO `category` VALUES (5, '51125', 'Web', NULL);

-- ----------------------------
-- Table structure for fine
-- ----------------------------
DROP TABLE IF EXISTS `fine`;
CREATE TABLE `fine`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fine
-- ----------------------------

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Deposit` decimal(10, 2) NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES (1, '小明', '计科201', 'xxx@xxx.com', 30.90, '123456');
INSERT INTO `reader` VALUES (2, '小李', '计科203', 'XX@xx.com', 31.90, '123456');
INSERT INTO `reader` VALUES (3, 'dd', 'dsa', 'X@x.com', 50.90, '123456');

SET FOREIGN_KEY_CHECKS = 1;
