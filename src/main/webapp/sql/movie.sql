/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_test
 Source Server Type    : MySQL
 Source Server Version : 50610
 Source Host           : localhost:3306
 Source Schema         : ybbb

 Target Server Type    : MySQL
 Target Server Version : 50610
 File Encoding         : 65001

 Date: 03/07/2020 22:20:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '想哭的我戴上了猫的面具 泣きたい私は猫をかぶる', '电影', '动画 / 奇幻', '日本', '2020', '最新', '6.8');
INSERT INTO `movie` VALUES (2, '黑水', '电影', '剧情', '美国', '2019', '热门/正在上映', '8.5');
INSERT INTO `movie` VALUES (3, '翻译疑云 Les Traducteurs', '电影', '悬疑 / 惊悚', '法国', '2019', '正在上映', '7.2');
INSERT INTO `movie` VALUES (4, '拍拖故事 Dating Amber', '电影', '喜剧 / 爱情 / 同性', '爱尔兰', '2020', '热门 / 即将上映', '7.3');
INSERT INTO `movie` VALUES (5, '给我翅膀 Donne-moi des ailes', '电影', '冒险', '法国', '2019', '热门', '8.7');
INSERT INTO `movie` VALUES (6, '误杀', '电影', '剧情 / 悬疑 / 犯罪', '中国大陆', '2019', NULL, '7.7');
INSERT INTO `movie` VALUES (7, '天气之子 天気の子', '电影', '爱情 / 动画 / 奇幻', '日本', '2019', NULL, '7.1');
INSERT INTO `movie` VALUES (8, '阳光普照 陽光普照', '电影', '剧情 / 犯罪', '中国台湾', '2019', '热门', '8.4');
INSERT INTO `movie` VALUES (9, '黑帮大佬和我的365日 365 dni', '电影', '情色', '波兰', '2020', '热门 / 即将上映', '5.5');
INSERT INTO `movie` VALUES (10, '真心半解 The Half of It', '电影', '喜剧 / 爱情 / 同性', '美国', '2020', '热门', '8.0');
INSERT INTO `movie` VALUES (11, '爱情人偶 ロマンスドール', '电影', '剧情 / 爱情', '日本', '2020', '', '6.2');
INSERT INTO `movie` VALUES (12, '多哥 Togo ', '电影', '剧情 / 冒险', '美国', '2019', '热门', '8.8');
INSERT INTO `movie` VALUES (13, '纽约的一个雨天 A Rainy Day in New York', '电影', ' 喜剧 / 爱情', '美国', '2019', NULL, '7.5');
INSERT INTO `movie` VALUES (14, '利刃出鞘 Knives Out ', '电影', '剧情 / 喜剧 / 悬疑 / 犯罪', '美国', '2019', '热门', '8.2');
INSERT INTO `movie` VALUES (15, '鲁邦三世 The First ルパン三世 THE FIRST', '电影', '喜剧 / 动作 / 动画', '日本', '2019', NULL, '7.6');
INSERT INTO `movie` VALUES (16, '理查德·朱维尔的哀歌 Richard Jewell', '电影', '剧情', '美国', '2019', '热门', '8.2');
INSERT INTO `movie` VALUES (17, '平原上的夏洛克', '电影', '剧情 / 喜剧 / 悬疑', '中国大陆', '2019', NULL, '7.9');
INSERT INTO `movie` VALUES (18, '我在雨中等你 The Art of Racing in the Rain', '电影', '剧情 / 喜剧 / 爱情 / 运动', '美国', '2019', '热门', '8.3');
INSERT INTO `movie` VALUES (19, '少年的你', '电影', '剧情 / 爱情 / 犯罪', '中国大陆', '2019', '热门', '8.3');
INSERT INTO `movie` VALUES (20, '火口的两人 火口のふたり ', '电影', '爱情', '日本', '2019', NULL, '7.1');
INSERT INTO `movie` VALUES (21, '忠贞 Верность', '电影', '情色', '俄罗斯', '2019', NULL, '6.2');
INSERT INTO `movie` VALUES (22, '知晓天空之蓝的人啊 空の青さを知る人よ', '电影', '动画', '日本', '2019', NULL, '7.5');
INSERT INTO `movie` VALUES (23, '大饿 大餓', '电影', '剧情', '中国台湾', '2019', NULL, '6.9');
INSERT INTO `movie` VALUES (24, '极速车王 Ford v Ferrari', '电影', '剧情 / 传记 / 运动', '美国 / 法国', '2019', '热门', '8.6');
INSERT INTO `movie` VALUES (25, '冰雪奇缘2 Frozen II', '电影', '喜剧 / 动画 / 歌舞 / 冒险', '美国', '2019', NULL, '7.2');
INSERT INTO `movie` VALUES (26, '乔乔的异想世界 Jojo Rabbit', '电影', '剧情 / 喜剧 / 战争', '美国 / 捷克 / 新西兰', '2019', '热门', '8.4');
INSERT INTO `movie` VALUES (27, '绅士们 The Gentlemen', '电影', '喜剧 / 动作 / 犯罪', '英国 / 美国', '2019', '热门', '8.3');
INSERT INTO `movie` VALUES (28, '1/2的魔法 Onward', '电影', '喜剧 / 动画 / 奇幻 / 冒险', '美国', '2020', '热门 / 即将上映', '7.9');
INSERT INTO `movie` VALUES (29, '野性的呼唤 The Call of the Wild', '电影', '剧情 / 冒险', '美国 / 加拿大', '2020', '热门 / 即将上映', '7.1');
INSERT INTO `movie` VALUES (30, '南山的部长们 남산의 부장들 ', '电影', '剧情 / 惊悚 / 历史', '韩国', '2020', '热门', '8.1');
INSERT INTO `movie` VALUES (31, '人间失格：太宰治和三个女人们 人間失格 太宰治と3人の女たち', '电影', '剧情', '日本', '2019', NULL, '6.1');
INSERT INTO `movie` VALUES (32, '逃离比勒陀利亚 Escape from Pretoria', '电影', '逃离比勒陀利亚 Escape from Pretoria', '英国 / 澳大利亚', '2020', NULL, '7.6');
INSERT INTO `movie` VALUES (33, '饥饿站台 El hoyo', '电影', '科幻 / 惊悚', ' 西班牙', '2019', NULL, '7.8');
INSERT INTO `movie` VALUES (34, '我和我的祖国', '电影', '剧情', '中国大陆', '2019', NULL, '7.7');
INSERT INTO `movie` VALUES (35, '热带雨 ', '电影', '剧情', '新加坡 / 中国台湾', '2019', NULL, '7.7');
INSERT INTO `movie` VALUES (36, '狩猎 The Hunt', '电影', '动作 / 惊悚', '美国', '2020', NULL, '7.3');
INSERT INTO `movie` VALUES (37, '从不，很少，有时，总是 Never Rarely Sometimes Always', NULL, '剧情', '美国', '2020', NULL, '7.6');
INSERT INTO `movie` VALUES (38, '唐顿庄园 Downton Abbey', '电影', '剧情', '英国 / 美国', '2019', '热门', '8.1');
INSERT INTO `movie` VALUES (39, '柳烈的音乐专辑 유열의 음악앨범', '电影', '剧情 / 爱情', '韩国', '2019', NULL, '7.8');
INSERT INTO `movie` VALUES (40, '玩具总动员4 Toy Story 4', '电影', '喜剧 / 动画 / 奇幻', '美国', '2019', '热门', '8.6');
INSERT INTO `movie` VALUES (41, '婚姻故事 Marriage Story', '电影', '剧情 / 爱情', '英国 / 美国', '2020', '热门 / 即将上映', '8.6');
INSERT INTO `movie` VALUES (42, '默片解说员 カツベン！', '电影', '喜剧 / 历史', '日本', '2019', '热门', '8.2');
INSERT INTO `movie` VALUES (43, '惊天营救 Extraction', '电影', '动作 / 惊悚 / 犯罪', '美国', '2020', NULL, '7.1');
INSERT INTO `movie` VALUES (44, '爱玛 Emma.', '电影', '剧情 / 喜剧', '英国', '2020', NULL, '7.1');
INSERT INTO `movie` VALUES (45, '教宗的承继 The Two Popes', '电影', '剧情 / 传记', '英国 / 意大利', '2019', '热门', '8.6');
INSERT INTO `movie` VALUES (46, '克劳斯：圣诞节的秘密 Klaus', '电影', '喜剧 / 动画 / 冒险', '西班牙 / 英国', '2019', '热门', '8.7');
INSERT INTO `movie` VALUES (47, '卫星 Спутник', '电影', '科幻 / 恐怖', ' 俄罗斯', '2020', NULL, '6');
INSERT INTO `movie` VALUES (48, '若能与你共乘海浪之上 きみと、波にのれたら', '电影', '爱情 / 动画 / 奇幻', '日本', '2019', NULL, '7.1');
INSERT INTO `movie` VALUES (49, '决战中途岛 Midway', '电影', '剧情 / 历史 / 战争', '中国大陆 / 美国', '2019', NULL, '7.7');
INSERT INTO `movie` VALUES (50, '誓血五人组 Da 5 Bloods', '电影', '剧情 / 战争', '美国', '2020', NULL, '6.1');
INSERT INTO `movie` VALUES (51, '太空部队 Space Force ', '电视剧', '喜剧', '美国', '2020', '', '7.9');
INSERT INTO `movie` VALUES (52, '爱你，维克托 Love, Victor', '电视剧', '剧情 / 喜剧 / 爱情', '美国', '2020', NULL, '7.8');
INSERT INTO `movie` VALUES (53, '政客 第二季 The Politician Season 2', '电视剧', '剧情 / 喜剧 / 歌舞', '美国', '2020', '热门', '8.4');
INSERT INTO `movie` VALUES (54, '街灯亮起时 When The Streetlights Go On', '电视剧', '剧情', '美国', '2020', NULL, '7.2');
INSERT INTO `movie` VALUES (55, '娃娃奇缘 第一季 Dummy Season 1', '电视剧', '喜剧', '美国', '2020', NULL, '7.7');
INSERT INTO `movie` VALUES (56, '杀死伊芙 第三季 Killing Eve Season 3', '电视剧', '剧情 / 惊悚', '英国 ', '2020', '热门', '8.4');
INSERT INTO `movie` VALUES (57, '舞台剧 Staged', '电视剧', '剧情 / 喜剧', '英国', '2020', '热门', '9.3\r\n\r\n');
INSERT INTO `movie` VALUES (58, '发光体 The Luminaries ', '电视剧', '悬疑', '英国', '2020', NULL, '7.1');
INSERT INTO `movie` VALUES (59, '公关 第二季 Flack Season 2', '电视剧', '喜剧', '英国', '2020', '热门', '8.7');
INSERT INTO `movie` VALUES (60, '性爱自修室 第二季 Sex Education Season 2', '电视剧', '剧情 / 喜剧', '英国', '2020', '热门', '9.0');
INSERT INTO `movie` VALUES (61, '虽然是精神病但没关系 사이코지만 괜찮아', '电视剧', '剧情 / 爱情', '韩国', '2020', '热门', '8.7');
INSERT INTO `movie` VALUES (62, '机智医生生活 슬기로운 의사생활', '电视剧', '剧情', '韩国', '2020', '热门', '9.4');
INSERT INTO `movie` VALUES (63, '便利店新星 편의점 샛별이', '电视剧', '喜剧 / 爱情', '韩国', '2020', NULL, '7.4');
INSERT INTO `movie` VALUES (64, '365：逆转命运的1年 365:운명을 거스르는 1년', '电视剧', '悬疑 / 惊悚 / 奇幻', '韩国', '2020', '热门', '9.1');
INSERT INTO `movie` VALUES (65, '你的目光所及之处 너의 시선이 머무는 곳에', '电视剧', '爱情 / 同性', '韩国', '2020', '热门', '8.6\r\n\r\n');
INSERT INTO `movie` VALUES (66, 'Life 线上的我们 Life 線上の僕ら', '电视剧', '剧情 / 同性', '日本', '2020', '热门', '8.3');
INSERT INTO `movie` VALUES (67, '非自然死亡 アンナチュラル', '电视剧', '剧情 / 悬疑', '日本', '2018', '热门', '9.4');
INSERT INTO `movie` VALUES (68, '泽塔奥特曼 ウルトラマンゼット', '电视剧', '剧情 / 动作 / 科幻 / 儿童', '日本', '2020', '热门', '9.0');
INSERT INTO `movie` VALUES (69, '然后，百合子就独自一人了 そして、ユリコは一人になった', '电视剧', '剧情 / 悬疑', '日本', '2020', NULL, '6.4');
INSERT INTO `movie` VALUES (70, '凪的新生活 凪のお暇', '电视剧', '剧情', '日本', '2019', '热门', '8.8');
INSERT INTO `movie` VALUES (71, '隐秘的角落 ', '电视剧', '剧情 / 悬疑 / 犯罪', '中国大陆', '2020', '热门', '9.0\r\n\r\n');
INSERT INTO `movie` VALUES (72, '三叉戟', '电视剧', '剧情 / 犯罪', '中国大陆', '2020', NULL, '7.9');
INSERT INTO `movie` VALUES (73, '少年游之一寸相思', '电视剧', '动作 / 爱情 / 武侠 / 古装', '中国大陆', '2020', '热门', '8.5');
INSERT INTO `movie` VALUES (74, '斗罗大陆1 第四部分', '电视剧', '剧情 / 动画 / 奇幻', '中国大陆', '2020', '热门', '8.3');
INSERT INTO `movie` VALUES (75, '我才不要和你做朋友呢', '电视剧', '喜剧 / 爱情 / 奇幻', '中国大陆', '2020', '热门', '8.2');
INSERT INTO `movie` VALUES (76, '叹息桥 歎息橋', '电视剧', '剧情 / 悬疑', '中国香港 / 中国大陆', '2020', '热门', '8.9');
INSERT INTO `movie` VALUES (77, '降魔的2.0', '电视剧', '剧情 / 悬疑', '中国香港', '2020', '热门', '8.3');
INSERT INTO `movie` VALUES (78, '那些我爱过的人 那些我愛過的人', '电视剧', '爱情', '中国香港', '2020', NULL, '7.1');
INSERT INTO `movie` VALUES (79, '十八年后的终极告白 十八年後的終極告白', '电视剧', '剧情 / 爱情 / 悬疑', '中国香港', '2020', '热门', '8.0');
INSERT INTO `movie` VALUES (80, '大时代 大時代', '电视剧', '剧情', '中国香港', '1992', '热门', '9.3');
INSERT INTO `movie` VALUES (81, '大欺诈师 GREAT PRETENDER', '电视剧', '剧情 / 动画', '日本', '2020', '热门 / 即将上映', '8.9');
INSERT INTO `movie` VALUES (82, '辉夜大小姐想让我告白：天才们的恋爱头脑战 第二季 かぐや様は告らせたい？～天才たちの恋愛頭脳戦～ ', '电视剧', '喜剧 / 爱情 / 动画', '日本', '2020', '热门 / 即将上映', '9.5');
INSERT INTO `movie` VALUES (83, '小书痴的下克上 为了成为图书管理员不择手段！第二季 本好きの下剋上 ~司書になるためには手段を選んでいられません~', '电视剧', '剧情 / 动画 / 奇幻', '日本', '2020', '热门 / 即将上映', '8.2');
INSERT INTO `movie` VALUES (84, '鬼灭之刃 鬼滅の刃', '电视剧', '动画 / 奇幻', '日本', '2019', '热门', '9.1');
INSERT INTO `movie` VALUES (85, '转生成为了只有乙女游戏破灭Flag的邪恶大小姐 乙女ゲームの破滅フラグしかない悪役令嬢に転生してしまった', '电视剧', '喜剧 / 动画 / 奇幻 / 冒险', '日本', '2020', '热门 / 即将上映', '8.4');
INSERT INTO `movie` VALUES (86, '乘风破浪的姐姐', '电视剧', '真人秀', '中国大陆', '2020', '热门 / 即将上映', '8.3');
INSERT INTO `movie` VALUES (87, '向往的生活 第四季', '电视剧', '真人秀', '中国大陆', '2020', '正在上映', '7.3');
INSERT INTO `movie` VALUES (88, '炙热的我们', '电视剧', '音乐 / 真人秀', '中国大陆', '2020', '正在上映', '6.4');
INSERT INTO `movie` VALUES (89, '鲁保罗变装皇后秀 第十二季 RuPaul\'s Drag Race Season 12', '电视剧', '真人秀', '美国', '2020', '热门/正在上映', '9.0');
INSERT INTO `movie` VALUES (90, '妻子的浪漫旅行 第四季', '电视剧', '真人秀', '中国大陆', '2020', '正在上映', '6.5');
INSERT INTO `movie` VALUES (91, '风味人间 第二季', '电视剧', '纪录片', '中国大陆', '2020', '热门/正在上映', '9.2');
INSERT INTO `movie` VALUES (92, '风味人间 第一季', '电视剧', '纪录片', '中国大陆', '2018', '热门', '9.1');
INSERT INTO `movie` VALUES (93, '人生第一次', '电视剧', '纪录片', '中国大陆', '2020', '热门/正在上映', '9.2');
INSERT INTO `movie` VALUES (94, '河西走廊', '电视剧', '纪录片', '中国大陆', '2015', '热门', '9.7');
INSERT INTO `movie` VALUES (95, '地球脉动 第二季 Planet Earth Season 2', '电视剧', '纪录片', '英国', '2016', '热门', '9.9');

SET FOREIGN_KEY_CHECKS = 1;
