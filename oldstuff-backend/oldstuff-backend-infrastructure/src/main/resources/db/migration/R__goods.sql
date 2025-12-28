
-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS goods;

CREATE TABLE goods (
                       id uuid NOT NULL DEFAULT uuid_generate_v7(),
                       name varchar(255) NOT NULL,
                       type varchar(20) NOT NULL,
                       category_id integer NOT NULL,
                       fineness_id integer NOT NULL,
                       user_id uuid NOT NULL,
                       poster varchar(255),
                       price decimal(10,2) NOT NULL,
                       original_price decimal(10,2) NOT NULL,
                       description text,
                       want text,
                       views integer NOT NULL DEFAULT 0,
                       likes integer NOT NULL DEFAULT 0,
                       created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                       updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                       publish_status varchar(20) NOT NULL DEFAULT 0,
                       delete_status varchar(20) NOT NULL DEFAULT 0,
                       finish_status varchar(20) NOT NULL DEFAULT 0,
                       audit_status varchar(20) NOT NULL DEFAULT 0,
                       audit_user integer,
                       reject_reason text,
                       nums integer,
                       free_ship varchar(20),
                       delivery_province_id integer,
                       PRIMARY KEY (id)
);

COMMENT ON TABLE goods IS '商品信息';
COMMENT ON COLUMN goods.id IS '商品id';
COMMENT ON COLUMN goods.name IS '商品名称';
COMMENT ON COLUMN goods.type IS '商品类型 SALE 出售 EXCHANGE 换物 BOTH 都有';
COMMENT ON COLUMN goods.category_id IS '商品分类';
COMMENT ON COLUMN goods.fineness_id IS '成色状态';
COMMENT ON COLUMN goods.user_id IS '发布人';
COMMENT ON COLUMN goods.poster IS '商品预览图';
COMMENT ON COLUMN goods.price IS '商品价格';
COMMENT ON COLUMN goods.original_price IS '商品原价';
COMMENT ON COLUMN goods.description IS '商品描述';
COMMENT ON COLUMN goods.want IS '换物需求';
COMMENT ON COLUMN goods.views IS '商品浏览量';
COMMENT ON COLUMN goods.likes IS '点赞数';
COMMENT ON COLUMN goods.created_at IS '商品创建时间';
COMMENT ON COLUMN goods.updated_at IS '商品更新时间';
COMMENT ON COLUMN goods.publish_status IS '上架状态 DISABLED 下架 ENABLED 上架';
COMMENT ON COLUMN goods.delete_status IS '删除状态 NOT_DELETED 未删除 DELETED 已删除';
COMMENT ON COLUMN goods.finish_status IS '售出状态 NOT_FINISHED 未售出 FINISHED 已售出';
COMMENT ON COLUMN goods.audit_status IS '商品状态 PENDING 待审核 REJECTED 驳回 APPROVED 通过';
COMMENT ON COLUMN goods.audit_user IS '审核员id';
COMMENT ON COLUMN goods.reject_reason IS '驳回理由';
COMMENT ON COLUMN goods.nums IS '库存数量';
COMMENT ON COLUMN goods.free_ship IS '包邮 DISABLED 否 ENABLED 是';
COMMENT ON COLUMN goods.delivery_province_id IS '发货省份';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('旧书一本', 'SALE', 2, 4, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/600', 10.00, 35.00, '几乎全新，适合阅读收藏', '换文具或笔记本', 0, 0, '2025-04-19 07:02:24', '2025-04-19 07:02:24', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 11);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('滑板车', 'BOTH', 5, 1, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/601', 120.00, 300.00, '九成新，小孩骑过几次', '可换玩具或乐高', 0, 0, '2025-04-19 07:02:24', '2025-04-19 07:03:28', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 1, 'DISABLED', 3);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('二手手机', 'SALE', 1, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/602', 500.00, 1800.00, '成色还可以，功能正常', '', 0, 0, '2025-04-19 07:02:24', '2025-04-19 07:03:29', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 9);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('闲置耳机', 'EXCHANGE', 3, 6, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/603', 0.00, 399.00, '换物优先，成色好', '想换个小音箱或音响', 0, 0, '2025-04-19 07:02:24', '2025-04-19 07:03:29', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 2, 'ENABLED', 17);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('运动鞋', 'SALE', 6, 3, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/604', 80.00, 250.00, '穿过几次，尺码42', '', 0, 0, '2025-04-19 07:02:24', '2025-04-19 07:03:30', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 5);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('电子词典', 'BOTH', 3, 5, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/605', 60.00, 200.00, '功能正常，适合学生使用', '换计算器或英语书', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 4);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('手柄', 'SALE', 4, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/606', 45.00, 150.00, '蓝牙连接良好，无明显磨损', '', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 8);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('台灯', 'EXCHANGE', 1, 6, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/607', 0.00, 79.00, '适合学生使用，亮度可调', '想换一个书架', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 7);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('健身哑铃', 'SALE', 6, 4, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/608', 90.00, 160.00, '一对，几乎全新', '', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 12);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('耳塞', 'SALE', 5, 1, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/609', 15.00, 39.00, '隔音效果不错，旅行用', '', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 14);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('学习桌', 'SALE', 2, 3, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/610', 120.00, 320.00, '可调高度，带抽屉', '', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 6);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('保温杯', 'BOTH', 3, 7, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/611', 25.00, 69.00, '保温效果佳，未使用过', '想换个水壶', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 10);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('蓝牙音响', 'EXCHANGE', 5, 6, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/612', 0.00, 299.00, '声音清晰，可连接手机', '换耳机或移动电源', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 2, 'ENABLED', 15);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('毛绒玩具', 'SALE', 4, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/613', 20.00, 89.00, '很可爱，适合送礼', '', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 5);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('鼠标垫', 'BOTH', 1, 1, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/614', 10.00, 25.00, '加厚材质，不滑动', '换小玩具', 0, 0, '2025-04-19 07:05:02', '2025-04-19 07:05:02', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 13);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('拼图玩具', 'SALE', 4, 3, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/615', 18.00, 49.00, '完整无缺，适合儿童益智', '', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 11);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('书包', 'EXCHANGE', 2, 5, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/616', 0.00, 120.00, '结实耐用，换个便携包', '便携包或背包', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 2, 'ENABLED', 3);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('羽毛球拍', 'SALE', 6, 4, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/617', 55.00, 180.00, '一对，含球，使用次数少', '', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'DISABLED', 'DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 4);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('移动电源', 'BOTH', 1, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/618', 30.00, 99.00, '10000mAh，充电正常', '想换U盘或耳机', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 9);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('电动牙刷', 'SALE', 3, 6, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/619', 40.00, 150.00, '带刷头，全功能正常', '', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 5);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('键盘', 'BOTH', 5, 7, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/620', 60.00, 199.00, '机械轴，灯效可调', '想换耳机或音响', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 7);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('自行车头盔', 'SALE', 6, 3, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/621', 35.00, 110.00, '骑行用，结实轻便', '', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 6);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('便携风扇', 'SALE', 3, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/622', 15.00, 39.00, 'USB接口，适合办公', '', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 12);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('积木套装', 'SALE', 4, 1, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/623', 50.00, 149.00, '适合儿童，颗粒齐全', '', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 8);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('画笔工具', 'BOTH', 2, 5, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/624', 25.00, 69.00, '水彩用，九成新', '换画本或马克笔', 0, 0, '2025-04-19 07:20:12', '2025-04-19 07:20:12', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 2);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('登山包', 'SALE', 2, 5, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/625', 85.00, 260.00, '容量大，适合户外旅行', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 4);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('文具套装', 'EXCHANGE', 1, 3, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/626', 0.00, 29.00, '未使用，适合学生', '换小玩具', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 2, 'ENABLED', 1);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('小夜灯', 'SALE', 3, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/627', 12.00, 35.00, 'USB供电，触控开关', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 9);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('洗衣篮', 'BOTH', 5, 6, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/628', 20.00, 59.00, '可折叠，布料结实', '换收纳盒', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 5);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('宠物饮水器', 'SALE', 4, 7, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/629', 25.00, 89.00, '适合猫狗，自动循环', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 3);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('手持吸尘器', 'SALE', 6, 4, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/630', 100.00, 299.00, '可充电，小户型适用', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 7);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('化妆镜', 'EXCHANGE', 3, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/631', 0.00, 79.00, '带灯光，可折叠', '换护肤品小样', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 2, 'DISABLED', 12);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('厨房刀具', 'SALE', 1, 5, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/632', 45.00, 160.00, '套装齐全，锋利好用', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 11);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('遥控车', 'SALE', 4, 1, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/633', 60.00, 180.00, '速度快，孩子超喜欢', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 6);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('小风扇', 'BOTH', 3, 3, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/634', 15.00, 39.00, '适合办公桌使用', '换本子或笔', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 13);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('钢笔', 'SALE', 1, 6, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/635', 28.00, 79.00, '书写流畅，墨水另购', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 10);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('桌面收纳盒', 'SALE', 2, 4, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/636', 22.00, 59.00, '带抽屉，容量大', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 8);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('儿童背包', 'EXCHANGE', 4, 3, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/637', 0.00, 99.00, '卡通图案，孩子喜欢', '换绘本或拼图', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 2, 'DISABLED', 2);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('护腕护膝', 'SALE', 6, 7, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/638', 30.00, 109.00, '运动时保护关节', '', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'ENABLED', 14);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('雨伞', 'BOTH', 5, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/639', 18.00, 49.00, '自动开合，未使用', '换水杯或餐盒', 0, 0, '2025-04-19 07:26:41', '2025-04-19 07:26:41', 'ENABLED', 'NOT_DELETED', 'NOT_FINISHED', 'APPROVED', NULL, NULL, 1, 'DISABLED', 15);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('羽毛球拍', 'SALE', 6, 4, '019b5037-3463-7a7f-ab22-013003e0b840', 'https://picsum.photos/800/617', 55.00, 180.00, '一对，含球，使用次数少', '', 0, 0, '2025-04-19 07:29:55', '2025-04-19 07:29:55', 'DISABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 1, 'ENABLED', 37);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('文件快递柜', 'SALE', 1, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'upload/goods/bc801bdc-1582-474d-94da-9cc4da58f2a3.jpg', 100.00, 200.00, '这是一个商品这是一个商品', '', 0, 0, '2025-04-19 07:53:08', '2025-04-19 07:53:08', 'DISABLED', 'DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 1, 'ENABLED', 37);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, poster, price, original_price, description, want, views, likes, created_at, updated_at, publish_status, delete_status, finish_status, audit_status, audit_user, reject_reason, nums, free_ship, delivery_province_id) VALUES ('文件快递柜', 'SALE', 4, 2, '019b5037-3463-7a7f-ab22-013003e0b840', 'upload/goods/bc801bdc-1582-474d-94da-9cc4da58f2a3.jpg', 100.00, 200.00, '这是一个商品这是一个商品', '', 0, 0, '2025-04-19 07:53:25', '2025-04-19 07:53:25', 'DISABLED', 'NOT_DELETED', 'NOT_FINISHED', 'PENDING', NULL, NULL, 1, 'ENABLED', 37);

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS goods_category;

CREATE TABLE goods_category (
                                id       serial       NOT NULL,
                                category varchar(255),
                                PRIMARY KEY (id)
);

COMMENT ON TABLE goods_category IS '商品分类';
COMMENT ON COLUMN goods_category.id IS '分类id';
COMMENT ON COLUMN goods_category.category IS '分类名';


-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO goods_category VALUES (1, '数码产品');
INSERT INTO goods_category VALUES (2, '家居用品');
INSERT INTO goods_category VALUES (3, '服装配饰');
INSERT INTO goods_category VALUES (4, '图书文具');
INSERT INTO goods_category VALUES (5, '运动户外');
INSERT INTO goods_category VALUES (6, '其他');

-- ----------------------------
-- Table structure for goods_fineness
-- ----------------------------
DROP TABLE IF EXISTS goods_fineness;

CREATE TABLE goods_fineness (
                                id       serial       NOT NULL,
                                fineness varchar(255),
                                description varchar(255),
                                PRIMARY KEY (id)
);

COMMENT ON TABLE goods_fineness IS '商品成色';
COMMENT ON COLUMN goods_fineness.id IS '成色id';
COMMENT ON COLUMN goods_fineness.fineness IS '成色';
COMMENT ON COLUMN goods_fineness.description IS '成色描述';


-- ----------------------------
-- Records of goods_fineness
-- ----------------------------
INSERT INTO goods_fineness VALUES (1, '全新', '未拆封/带吊牌，全新未使用');
INSERT INTO goods_fineness VALUES (2, '99新', '仅拆封/试用，外观无瑕疵');
INSERT INTO goods_fineness VALUES (3, '95新', '轻微使用，外观近全新');
INSERT INTO goods_fineness VALUES (4, '9成新', '使用时间短，轻微使用痕迹');
INSERT INTO goods_fineness VALUES (5, '8成新', '正常使用痕迹，功能完好');
INSERT INTO goods_fineness VALUES (6, '7成新', '明显使用痕迹，功能正常');
INSERT INTO goods_fineness VALUES (7, '7成新以下', '较重使用痕迹，功能正常');

-- ----------------------------
-- Table structure for goods_preview_image
-- ----------------------------
DROP TABLE IF EXISTS goods_preview_image;

CREATE TABLE goods_preview_image (
                                     id uuid NOT NULL DEFAULT uuid_generate_v7(),
                                     goods_id uuid NOT NULL,
                                     image varchar(255),
                                     PRIMARY KEY (id)
);
;

COMMENT ON TABLE goods_preview_image IS '商品预览图';
COMMENT ON COLUMN goods_preview_image.id IS '预览图id';
COMMENT ON COLUMN goods_preview_image.goods_id IS '商品id';
COMMENT ON COLUMN goods_preview_image.image IS '预览图路径';

-- ----------------------------
-- Records of goods_preview_image
-- ----------------------------
-- INSERT INTO goods_preview_image (goods_id, image) VALUES (35, 'https://picsum.photos/800/600');
-- INSERT INTO goods_preview_image (goods_id, image) VALUES (76, 'upload/goods/bc801bdc-1582-474d-94da-9cc4da58f2a3.jpg');
-- INSERT INTO goods_preview_image (goods_id, image) VALUES (77, 'upload/goods/bc801bdc-1582-474d-94da-9cc4da58f2a3.jpg');


-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS comment;

CREATE TABLE comment (
                         id uuid NOT NULL DEFAULT uuid_generate_v7(),
                         user_id integer NOT NULL,
                         content text NOT NULL,
                         likes integer NOT NULL DEFAULT 0,
                         score integer,
                         created_at timestamp DEFAULT CURRENT_TIMESTAMP,
                         PRIMARY KEY (id)
);

COMMENT ON TABLE comment IS '商品评论';
COMMENT ON COLUMN comment.id IS '评论id';
COMMENT ON COLUMN comment.user_id IS '用户id';
COMMENT ON COLUMN comment.content IS '评论内容';
COMMENT ON COLUMN comment.likes IS '点赞数';
COMMENT ON COLUMN comment.score IS '评分 0-10';
COMMENT ON COLUMN comment.created_at IS '评论时间';


-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for comment_image
-- ----------------------------
DROP TABLE IF EXISTS comment_image;

CREATE TABLE comment_image (
                               id uuid NOT NULL DEFAULT uuid_generate_v7(),
                               comment_id uuid NOT NULL,
                               image varchar(255) NOT NULL,
                               PRIMARY KEY (id)
);

COMMENT ON TABLE comment_image IS '商品评论图片';
COMMENT ON COLUMN comment_image.id IS '评论图片id';
COMMENT ON COLUMN comment_image.comment_id IS '评论id';
COMMENT ON COLUMN comment_image.image IS '图片';

-- ----------------------------
-- Records of comment_image
-- ----------------------------