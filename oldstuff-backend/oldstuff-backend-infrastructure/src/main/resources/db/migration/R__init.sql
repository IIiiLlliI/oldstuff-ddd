
-- ----------------------------
-- Table structure for admin
-- ----------------------------
-- DROP TABLE IF EXISTS admin;
-- CREATE TABLE admin  (
--   id int NOT NULL COMMENT '后台用户id',
--   username varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
--   password varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
--   role varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色 0 管理员',
--   created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
--   updated_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
--   PRIMARY KEY (id) USING BTREE
-- ) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------