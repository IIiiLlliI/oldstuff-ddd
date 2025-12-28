
-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS "order";

CREATE TABLE "order" (
                         id uuid NOT NULL DEFAULT uuid_generate_v7(),
                         order_number varchar(255) NOT NULL,
                         pay_number varchar(255),
                         logistics_name varchar(255),
                         logistics_code varchar(255),
                         logistics_number varchar(255),
                         goods_id uuid NOT NULL,
                         goods_name varchar(255) NOT NULL,
                         goods_price decimal(10,2),
                         goods_poster varchar(255),
                         nums integer NOT NULL,
                         ship_fee integer,
                         total_price decimal(10,2) NOT NULL,
                         customer_id uuid NOT NULL,
                         merchant_id uuid NOT NULL,
                         status smallint NOT NULL DEFAULT 0,
                         sub_status smallint NOT NULL DEFAULT 0,
                         delete_by_customer smallint NOT NULL DEFAULT 0,
                         delete_by_merchant smallint NOT NULL DEFAULT 0,
                         cancel_reason_category varchar(255),
                         cancel_reason text,
                         return_reason_category varchar(255),
                         return_reason text,
                         created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         pay_time timestamp,
                         delivery_time timestamp,
                         finish_time timestamp,
                         user_address_province varchar(255),
                         user_address_city varchar(255),
                         user_address_district varchar(255),
                         user_address_detail varchar(255),
                         PRIMARY KEY (id)
);

COMMENT ON TABLE "order" IS '订单';
COMMENT ON COLUMN "order".id IS '订单id';
COMMENT ON COLUMN "order".order_number IS '订单号';
COMMENT ON COLUMN "order".pay_number IS '支付流水号';
COMMENT ON COLUMN "order".logistics_name IS '物流公司名称';
COMMENT ON COLUMN "order".logistics_code IS '物流公司编码';
COMMENT ON COLUMN "order".logistics_number IS '物流单号';
COMMENT ON COLUMN "order".goods_id IS '商品id';
COMMENT ON COLUMN "order".goods_name IS '商品名称';
COMMENT ON COLUMN "order".goods_price IS '商品单价';
COMMENT ON COLUMN "order".goods_poster IS '商品封面';
COMMENT ON COLUMN "order".nums IS '购买数量';
COMMENT ON COLUMN "order".ship_fee IS '运费';
COMMENT ON COLUMN "order".total_price IS '总价';
COMMENT ON COLUMN "order".customer_id IS '买家id';
COMMENT ON COLUMN "order".merchant_id IS '卖家id';
COMMENT ON COLUMN "order".status IS '订单状态 0 进行中 1 已完成 2 已取消';
COMMENT ON COLUMN "order".sub_status IS '子状态';
COMMENT ON COLUMN "order".delete_by_customer IS '对用户删除状态 0 未删除 1 已删除';
COMMENT ON COLUMN "order".delete_by_merchant IS '对商家删除状态 0 未删除 1 已删除';
COMMENT ON COLUMN "order".cancel_reason_category IS '取消原因类别';
COMMENT ON COLUMN "order".cancel_reason IS '取消原因';
COMMENT ON COLUMN "order".return_reason_category IS '退货原因类别';
COMMENT ON COLUMN "order".return_reason IS '退货原因';
COMMENT ON COLUMN "order".created_at IS '创建时间（下单时间）';
COMMENT ON COLUMN "order".updated_at IS '更新时间';
COMMENT ON COLUMN "order".pay_time IS '支付时间';
COMMENT ON COLUMN "order".delivery_time IS '发货时间';
COMMENT ON COLUMN "order".finish_time IS '交易结束时间';
COMMENT ON COLUMN "order".user_address_province IS '用户地址省';
COMMENT ON COLUMN "order".user_address_city IS '市';
COMMENT ON COLUMN "order".user_address_district IS '区';
COMMENT ON COLUMN "order".user_address_detail IS '详细地址';


-- ----------------------------
-- Records of order
-- ----------------------------
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER894532', 'PAY723456', '顺丰速运', 'shunfeng', 'SF12345678901', 42, '台灯', 0.00, 'https://picsum.photos/800/607', 1, 12, 12.00, 2, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-05-10 09:15:22', '2025-04-19 07:49:46', '2023-05-10 09:20:33', '2023-05-11 14:30:45', '2023-05-15 16:20:12', '广东省', '深圳市', '南山区', '科技园路1号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER673241', '', NULL, NULL, NULL, 55, '键盘', 60.00, 'https://picsum.photos/800/620', 1, 8, 68.00, 2, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-05-12 14:30:18', '2025-04-19 07:49:57', NULL, NULL, NULL, '北京市', '朝阳区', '三里屯街道', '工体北路8号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER982345', 'PAY834567', NULL, NULL, NULL, 37, '二手手机', 500.00, 'https://picsum.photos/800/602', 1, 15, 515.00, 2, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2023-05-11 11:05:42', '2025-04-19 07:49:46', '2023-05-11 11:10:15', NULL, NULL, '上海市', '浦东新区', '陆家嘴街道', '世纪大道100号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER456782', 'PAY945678', '圆通速递', 'yuantong', 'YT123456789012', 49, '鼠标垫', 10.00, 'https://picsum.photos/800/614', 1, 8, 18.00, 2, 1, 0, 2, 0, 0, NULL, NULL, NULL, NULL, '2023-05-09 16:20:33', '2025-04-19 07:49:46', '2023-05-09 16:25:47', '2023-05-10 09:15:22', NULL, '浙江省', '杭州市', '西湖区', '文三路369号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER789012', NULL, NULL, NULL, NULL, 60, '登山包', 85.00, 'https://picsum.photos/800/625', 1, 10, 95.00, 2, 1, 2, 0, 0, 0, NULL, NULL, '我不想买了', '找到了更便宜的替代品', '2023-05-08 10:15:42', '2025-04-19 07:49:46', NULL, NULL, NULL, '江苏省', '南京市', '鼓楼区', '中山北路1号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER345671', 'PAY567890', '中通快递', 'zhongtong', 'ZT987654321098', 54, '电动牙刷', 40.00, 'https://picsum.photos/800/619', 1, 10, 50.00, 2, 1, 0, 3, 0, 0, NULL, NULL, '商品质量问题', '牙刷无法充电', '2023-05-07 13:25:18', '2025-04-19 07:49:46', '2023-05-07 13:30:45', '2023-05-08 10:15:42', NULL, '四川省', '成都市', '锦江区', '春熙路1号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER123459', 'PAY678901', '韵达快递', 'yunda', 'YD345678901234', 39, '运动鞋', 80.00, 'https://picsum.photos/800/604', 1, 10, 90.00, 2, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-05-06 15:30:22', '2025-04-19 07:49:46', '2023-05-06 15:35:18', '2023-05-07 09:20:15', '2023-05-12 14:30:18', '湖北省', '武汉市', '武昌区', '解放路123号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER567893', NULL, NULL, NULL, NULL, 45, '学习桌', 120.00, 'https://picsum.photos/800/610', 1, 20, 140.00, 2, 1, 2, 1, 0, 0, NULL, NULL, '系统自动取消超时未支付订单', '订单超时未支付', '2023-05-05 18:15:42', '2025-04-19 07:49:46', NULL, NULL, NULL, '湖南省', '长沙市', '岳麓区', '麓山南路1号');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER234568', 'PAY789012', '京东物流', 'jd', 'JD567890123456', 53, '移动电源', 30.00, 'https://picsum.photos/800/618', 1, 0, 30.00, 2, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-05-04 10:20:33', '2025-04-19 07:49:46', '2023-05-04 10:25:47', '2023-05-04 15:30:18', '2023-05-08 12:15:42', '天津市', '南开区', '卫津路94号', '南开大学校内');
-- INSERT INTO "order" (order_number, pay_number, logistics_name, logistics_code, logistics_number, goods_id, goods_name, goods_price, goods_poster, nums, ship_fee, total_price, customer_id, merchant_id, status, sub_status, delete_by_customer, delete_by_merchant, cancel_reason_category, cancel_reason, return_reason_category, return_reason, created_at, updated_at, pay_time, delivery_time, finish_time, user_address_province, user_address_city, user_address_district, user_address_detail) VALUES ('ORDER890123', 'PAY890123', '申通快递', 'shentong', 'ST456789012345', 58, '积木套装', 50.00, 'https://picsum.photos/800/623', 1, 12, 62.00, 2, 1, 0, 2, 0, 0, NULL, NULL, NULL, NULL, '2023-05-03 14:15:22', '2025-04-19 07:49:46', '2023-05-03 14:20:33', '2023-05-04 09:15:42', NULL, '陕西省', '西安市', '雁塔区', '小寨西路1号');

-- ----------------------------
-- Table structure for order_cancel_reason
-- ----------------------------
DROP TABLE IF EXISTS order_cancel_reason;

CREATE TABLE order_cancel_reason (
                                     id       serial       NOT NULL,
                                     name varchar(255),
                                     status smallint,
                                     created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                     PRIMARY KEY (id)
);

COMMENT ON TABLE order_cancel_reason IS '取消类型';

COMMENT ON COLUMN order_cancel_reason.id IS '取消类型id';
COMMENT ON COLUMN order_cancel_reason.name IS '取消类型';
COMMENT ON COLUMN order_cancel_reason.status IS '类型状态 0 不启用 1 启用';
COMMENT ON COLUMN order_cancel_reason.created_at IS '创建时间';


-- ----------------------------
-- Records of order_cancel_reason
-- ----------------------------
INSERT INTO order_cancel_reason VALUES (1, '我不想买了', 1, '2023-01-10 09:15:22');
INSERT INTO order_cancel_reason VALUES (2, '价格太贵', 1, '2023-01-12 14:20:35');
INSERT INTO order_cancel_reason VALUES (3, '找到了更好的优惠', 1, '2023-01-15 11:05:18');
INSERT INTO order_cancel_reason VALUES (4, '重复下单', 1, '2023-02-05 16:30:42');
INSERT INTO order_cancel_reason VALUES (5, '收货地址填写错误', 1, '2023-02-18 10:25:33');
INSERT INTO order_cancel_reason VALUES (6, '卖家缺货', 0, '2023-03-02 13:40:15');
INSERT INTO order_cancel_reason VALUES (7, '等待时间太长', 1, '2023-03-12 08:12:47');
INSERT INTO order_cancel_reason VALUES (8, '支付遇到问题', 1, '2023-03-20 17:35:29');
INSERT INTO order_cancel_reason VALUES (9, '商品信息描述不符', 1, '2023-04-05 09:50:11');
INSERT INTO order_cancel_reason VALUES (10, '其他原因', 1, '2023-04-15 12:18:56');
INSERT INTO order_cancel_reason VALUES (11, '系统自动取消超时未支付订单', 1, '2023-05-01 00:05:00');
INSERT INTO order_cancel_reason VALUES (12, '买家要求取消', 1, '2023-05-10 14:22:38');
INSERT INTO order_cancel_reason VALUES (13, '库存不足', 0, '2023-05-20 11:10:45');
INSERT INTO order_cancel_reason VALUES (14, '订单信息错误', 1, '2023-06-03 15:40:12');
INSERT INTO order_cancel_reason VALUES (15, '促销活动结束', 1, '2023-06-15 10:15:27');

-- ----------------------------
-- Table structure for order_return_reason
-- ----------------------------
DROP TABLE IF EXISTS order_return_reason;

CREATE TABLE order_return_reason (
                                     id       serial       NOT NULL,
                                     name varchar(255),
                                     status smallint,
                                     created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                     PRIMARY KEY (id)
);

COMMENT ON TABLE order_return_reason IS '退款类型';
COMMENT ON COLUMN order_return_reason.id IS '退款类型id';
COMMENT ON COLUMN order_return_reason.name IS '退款类型';
COMMENT ON COLUMN order_return_reason.status IS '类型状态 0 不启用 1 启用';
COMMENT ON COLUMN order_return_reason.created_at IS '创建时间';


-- ----------------------------
-- Records of order_return_reason
-- ----------------------------
INSERT INTO order_return_reason VALUES (1, '商品质量问题', 1, '2023-01-05 10:20:15');
INSERT INTO order_return_reason VALUES (2, '商品与描述不符', 1, '2023-01-10 14:35:22');
INSERT INTO order_return_reason VALUES (3, '收到错误商品', 1, '2023-01-15 09:12:45');
INSERT INTO order_return_reason VALUES (4, '商品损坏', 1, '2023-02-02 16:40:33');
INSERT INTO order_return_reason VALUES (5, '尺寸不合适', 1, '2023-02-10 11:25:18');
INSERT INTO order_return_reason VALUES (6, '颜色/款式不满意', 1, '2023-02-20 13:15:47');
INSERT INTO order_return_reason VALUES (7, '七天无理由退货', 1, '2023-03-01 08:30:55');
INSERT INTO order_return_reason VALUES (8, '缺件/少配件', 1, '2023-03-10 17:22:10');
INSERT INTO order_return_reason VALUES (9, '性能故障', 1, '2023-03-15 10:45:29');
INSERT INTO order_return_reason VALUES (10, '假冒品牌', 1, '2023-04-05 15:18:36');
INSERT INTO order_return_reason VALUES (11, '发货延迟', 0, '2023-04-12 09:40:42');
INSERT INTO order_return_reason VALUES (12, '多拍/错拍', 1, '2023-04-20 12:30:15');
INSERT INTO order_return_reason VALUES (13, '商品过期', 1, '2023-05-03 14:25:08');
INSERT INTO order_return_reason VALUES (14, '不喜欢/不想要了', 1, '2023-05-10 11:15:33');
INSERT INTO order_return_reason VALUES (15, '其他原因', 1, '2023-05-20 16:50:27');
INSERT INTO order_return_reason VALUES (16, '商家发错货', 1, '2023-06-05 10:35:19');
INSERT INTO order_return_reason VALUES (17, '包装破损', 1, '2023-06-15 13:20:44');
