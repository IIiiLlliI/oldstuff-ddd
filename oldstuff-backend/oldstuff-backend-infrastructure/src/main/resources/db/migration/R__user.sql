

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "user";

CREATE TABLE "user" (
                        id uuid NOT NULL DEFAULT uuid_generate_v7(),
                        username varchar(50) NOT NULL,
                        phone varchar(20),
                        password varchar(255) NOT NULL,
                        email varchar(100),
                        name varchar(255) NOT NULL,
                        avatar varchar(255) NOT NULL DEFAULT '/upload/placeholder/300x300.jpg',
                        status varchar(20) DEFAULT 1,
                        last_login timestamp,
                        last_reply timestamp,
                        created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        order_num integer DEFAULT 0,
                        score numeric(3,1) DEFAULT 5.0,
                        merchant_auth varchar(20) DEFAULT 0,
                        PRIMARY KEY (id)
);

COMMENT ON TABLE "user" IS '用户';

COMMENT ON COLUMN "user".id IS '用户id';
COMMENT ON COLUMN "user".username IS '账号';
COMMENT ON COLUMN "user".phone IS '手机号';
COMMENT ON COLUMN "user".password IS '密码';
COMMENT ON COLUMN "user".email IS '邮箱';
COMMENT ON COLUMN "user".name IS '用户名';
COMMENT ON COLUMN "user".avatar IS '用户头像';
COMMENT ON COLUMN "user".status IS '账号状态 DISABLED 封禁 NOT_ACTIVE 审核中 ACTIVE 激活';
COMMENT ON COLUMN "user".last_login IS '最后登录时间';
COMMENT ON COLUMN "user".last_reply IS '最后回复时间';
COMMENT ON COLUMN "user".created_at IS '创建时间';
COMMENT ON COLUMN "user".updated_at IS '更新时间';
COMMENT ON COLUMN "user".order_num IS '成交订单';
COMMENT ON COLUMN "user".score IS '用户评分(0.0-10.0)';
COMMENT ON COLUMN "user".merchant_auth IS '商家认证 DISABLED 未认证 REVIEWING 审核中 ACTIVE 认证';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "user" (username, phone, password, email, name, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth) VALUES ('merchant', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'test1111@qq.com', '手山经', '/upload/avatar/19413136-c158-4729-a5f4-d7e9ea15638b.jpg', 'ACTIVE', '2025-04-19 15:52:21', '2024-11-21 14:53:04', '2024-11-21 14:53:04', '2025-04-19 07:52:22', 100, 5.0, 'ACTIVE');
INSERT INTO "user" (username, phone, password, email, name, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth) VALUES ('user', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'test1111@qq.com', '嘻嘻嘻', '/upload/placeholder/300x300.jpg', 'DISABLED', '2025-04-19 15:53:43', '2024-11-21 14:53:04', '2024-11-21 00:00:00', '2025-04-19 07:53:45', 0, 5.0,  'ACTIVE');
INSERT INTO "user" (username, phone, password, email, name, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth) VALUES ('aaa', NULL, '202cb962ac59075b964b07152d234b70', 'test1111@foxmail.com', '哈哈哈', '/upload/placeholder/300x300.jpg', 'ACTIVE', '2025-04-23 10:28:31', NULL, '2025-04-23 10:22:45', '2025-04-23 10:28:31', 0, 5.0,  'ACTIVE');
INSERT INTO "user" (username, phone, password, email, name, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth) VALUES ('test111', NULL, '1bbd886460827015e5d605ed44252251', 'test1111@qq.com', '新的用户e95df985-7245-4e71-a05c-11f561ae6b8b', '/upload/placeholder/300x300.jpg', 'NOT_ACTIVE', NULL, NULL, '2025-04-30 03:52:12', '2025-04-30 03:52:12', 0, 5.0,  'ACTIVE');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS user_address;

CREATE TABLE user_address (
                              id uuid NOT NULL DEFAULT uuid_generate_v7(),
                              user_id uuid NOT NULL,
                              receiver_name varchar(50) NOT NULL,
                              receiver_phone varchar(20) NOT NULL,
                              country_code varchar(10) NOT NULL DEFAULT 'CN',
                              country varchar(50) NOT NULL DEFAULT '中国',
                              province_id integer NOT NULL,
                              province varchar(50) NOT NULL,
                              city_id integer NOT NULL,
                              city varchar(50) NOT NULL,
                              district_id integer NOT NULL,
                              district varchar(50) NOT NULL,
                              detail_address varchar(200) NOT NULL,
                              is_default varchar(20) DEFAULT 0,
                              address_tag varchar(20),
                              created_at timestamp DEFAULT CURRENT_TIMESTAMP,
                              updated_at timestamp DEFAULT CURRENT_TIMESTAMP,
                              PRIMARY KEY (id)
);

COMMENT ON TABLE user_address IS '收货地址';
COMMENT ON COLUMN user_address.id IS '收货地址ID';
COMMENT ON COLUMN user_address.user_id IS '关联用户ID';
COMMENT ON COLUMN user_address.receiver_name IS '收货人姓名';
COMMENT ON COLUMN user_address.receiver_phone IS '收货人电话';
COMMENT ON COLUMN user_address.country_code IS '国家代码，如CN/US等';
COMMENT ON COLUMN user_address.country IS '国家名称';
COMMENT ON COLUMN user_address.province_id IS '省份ID，关联地区表';
COMMENT ON COLUMN user_address.province IS '省份名称';
COMMENT ON COLUMN user_address.city_id IS '城市ID，关联地区表';
COMMENT ON COLUMN user_address.city IS '城市名称';
COMMENT ON COLUMN user_address.district_id IS '区县ID，关联地区表';
COMMENT ON COLUMN user_address.district IS '区县名称';
COMMENT ON COLUMN user_address.detail_address IS '详细地址';
COMMENT ON COLUMN user_address.is_default IS '默认地址 DISABLED 否 ENABLED 是';
COMMENT ON COLUMN user_address.address_tag IS '地址标签，如家、公司、学校等';
COMMENT ON COLUMN user_address.created_at IS '创建日期';
COMMENT ON COLUMN user_address.updated_at IS '更新日期';

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO user_address (user_id, receiver_name, receiver_phone, country_code, country, province_id, province, city_id, city, district_id, district, detail_address, is_default, address_tag, created_at, updated_at) VALUES ('019b4f4d-49e7-740a-afbe-54d191365486', '可最林', '18163414104', 'CN', '中国', 12, '天津市', 1201, '市辖区', 120102, '河东区', '福建省松原市苍南县', 'DISABLED', '家', '2025-04-15 06:57:30', '2025-04-15 07:07:30');
INSERT INTO user_address (user_id, receiver_name, receiver_phone, country_code, country, province_id, province, city_id, city, district_id, district, detail_address, is_default, address_tag, created_at, updated_at) VALUES ('019b4f4d-49e7-740a-afbe-54d191365486', '元众头林话始', '18621152119', 'CN', '中国', 33, '浙江省', 3301, '杭州市', 330110, '余杭区', '海南省邯郸市东丽区', 'ENABLED', '学校', '2025-04-15 07:07:18', '2025-04-19 06:56:53');
INSERT INTO user_address (user_id, receiver_name, receiver_phone, country_code, country, province_id, province, city_id, city, district_id, district, detail_address, is_default, address_tag, created_at, updated_at) VALUES ('019b4f4d-49e7-740a-afbe-54d191365486', '验组多收红叫', '18643052738', 'CN', '中国', 33, '浙江省', 3302, '宁波市', 330203, '海曙区', '香港特别行政区云浮市振兴区', 'DISABLED', '公司', '2025-04-15 07:07:30', '2025-04-19 06:56:54');
INSERT INTO user_address (user_id, receiver_name, receiver_phone, country_code, country, province_id, province, city_id, city, district_id, district, detail_address, is_default, address_tag, created_at, updated_at) VALUES ('019b4f4d-49e7-740a-afbe-54d191365486', '从格算', '13162233086', 'CN', '中国', 12, '天津市', 1201, '市辖区', 120102, '河东区', '重庆通化市隆德县', 'DISABLED', '学校', '2025-04-16 07:12:20', '2025-04-19 06:56:55');

-- ----------------------------
-- Table structure for user_merchant_auth
-- ----------------------------
DROP TABLE IF EXISTS user_merchant_auth;

CREATE TABLE user_merchant_auth (
                                    id uuid NOT NULL DEFAULT uuid_generate_v7(),
                                    user_id uuid NOT NULL,
                                    real_name varchar(255) NOT NULL,
                                    id_card varchar(255) NOT NULL,
                                    id_card_front varchar(255) NOT NULL,
                                    id_card_backend varchar(255) NOT NULL,
                                    audit_status smallint NOT NULL DEFAULT 0,
                                    reject_reason text,
                                    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                    PRIMARY KEY (id)
);

COMMENT ON TABLE user_merchant_auth IS '商家认证信息';
COMMENT ON COLUMN user_merchant_auth.id IS '商家认证资料id';
COMMENT ON COLUMN user_merchant_auth.user_id IS '用户id';
COMMENT ON COLUMN user_merchant_auth.real_name IS '真实姓名';
COMMENT ON COLUMN user_merchant_auth.id_card IS '身份证号';
COMMENT ON COLUMN user_merchant_auth.id_card_front IS '身份证正面';
COMMENT ON COLUMN user_merchant_auth.id_card_backend IS '身份证背面';
COMMENT ON COLUMN user_merchant_auth.audit_status IS '审核状态 0 待审核 1 驳回 2 通过';
COMMENT ON COLUMN user_merchant_auth.reject_reason IS '驳回理由';
COMMENT ON COLUMN user_merchant_auth.created_at IS '创建时间';
COMMENT ON COLUMN user_merchant_auth.updated_at IS '更新时间';

-- ----------------------------
-- Records of user_merchant_auth
-- ----------------------------
