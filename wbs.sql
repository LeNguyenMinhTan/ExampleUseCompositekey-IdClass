/*
 Navicat Premium Data Transfer

 Source Server         : MyConnection
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : wbs

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 26/07/2022 23:34:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bookmark
-- ----------------------------
DROP TABLE IF EXISTS `bookmark`;
CREATE TABLE `bookmark`  (
  `bookmark_id` bigint NOT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `modified_by` bigint NULL DEFAULT NULL,
  `modified_date` datetime NULL DEFAULT NULL,
  `post_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` bigint NOT NULL,
  `comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_group_id` bigint NULL DEFAULT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `modified_by` bigint NULL DEFAULT NULL,
  `modified_date` datetime NULL DEFAULT NULL,
  `post_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment_like
-- ----------------------------
DROP TABLE IF EXISTS `comment_like`;
CREATE TABLE `comment_like`  (
  `LIKE_ID` bigint NOT NULL AUTO_INCREMENT,
  `COMMENT_ID` bigint NOT NULL,
  `USER_ID` bigint NOT NULL,
  `CREATED_DATE` datetime NULL DEFAULT NULL,
  `CREATED_BY` bigint NULL DEFAULT NULL,
  `MODIFIED_DATE` datetime NULL DEFAULT NULL,
  `MODIFIED_BY` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`LIKE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `follow_id` bigint NOT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `follower_id` bigint NULL DEFAULT NULL,
  `modified_by` bigint NULL DEFAULT NULL,
  `modified_date` datetime NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`follow_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint NULL DEFAULT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like`  (
  `LIKE_ID` bigint NOT NULL AUTO_INCREMENT,
  `POST_ID` bigint NOT NULL,
  `USER_ID` bigint NOT NULL,
  `CREATED_DATE` datetime NULL DEFAULT NULL,
  `CREATED_BY` bigint NULL DEFAULT NULL,
  `MODIFIED_DATE` datetime NULL DEFAULT NULL,
  `MODIFIED_BY` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`LIKE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `post_id` bigint NOT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `modified_by` bigint NULL DEFAULT NULL,
  `modified_date` datetime NULL DEFAULT NULL,
  `post_comments` bigint NULL DEFAULT NULL,
  `post_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_likes` bigint NULL DEFAULT NULL,
  `post_thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_tittle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` bigint NOT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `modified_by` bigint NULL DEFAULT NULL,
  `modified_date` datetime NULL DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` bigint NOT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `display_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `external_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `external_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modified_by` bigint NULL DEFAULT NULL,
  `modified_date` datetime NULL DEFAULT NULL,
  `pwd_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_by` bigint NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `modified_by` bigint NULL DEFAULT NULL,
  `modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`, `user_id`) USING BTREE,
  INDEX `FK859n2jvi8ivhui0rl0esws6o`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

SET FOREIGN_KEY_CHECKS = 1;
