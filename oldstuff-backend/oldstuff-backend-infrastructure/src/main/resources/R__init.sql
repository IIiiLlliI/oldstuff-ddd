-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS address;
CREATE TABLE address
(
    id             uuid         NOT NULL DEFAULT uuid_generate_v7(),
    user_id        int          NULL,
    name           varchar(255) NULL,
    phone          varchar(255) NULL,
    address        varchar(255) NULL,
    address_detail varchar(255) NULL,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN address.id IS '地址id';
COMMENT ON COLUMN address.user_id IS '用户id';
COMMENT ON COLUMN address.name IS '联系姓名';
COMMENT ON COLUMN address.phone IS '联系电话';
COMMENT ON COLUMN address.address IS '地址';
COMMENT ON COLUMN address.address_detail IS '地址详情';

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS category;
CREATE TABLE category
(
    id       serial       NOT NULL,
    category varchar(255) NULL,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN category.id IS '分类id';
COMMENT ON COLUMN category.category IS '分类名';


-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO category (category)
VALUES ('数码产品');
INSERT INTO category (category)
VALUES ('家居用品');
INSERT INTO category (category)
VALUES ('服装配饰');
INSERT INTO category (category)
VALUES ('图书文具');
INSERT INTO category (category)
VALUES ('运动户外');
INSERT INTO category (category)
VALUES ('其他');

-- ----------------------------
-- Table structure for chat_records
-- ----------------------------
DROP TABLE IF EXISTS chat_records;
CREATE TABLE chat_records
(
    id          uuid         NOT NULL DEFAULT uuid_generate_v7(),
    send_id     int          NOT NULL,
    received_id int          NOT NULL,
    type        varchar(20)  NOT NULL,
    image       varchar(255) NULL,
    content     text         NULL,
    status      varchar(20)  NOT NULL DEFAULT '0',
    created_at  timestamp    NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN chat_records.id IS '消息id';
COMMENT ON COLUMN chat_records.send_id IS '发送者id';
COMMENT ON COLUMN chat_records.received_id IS '接收者id';
COMMENT ON COLUMN chat_records.type IS '消息类型 0 消息 1 图片 2 系统消息';
COMMENT ON COLUMN chat_records.image IS '图片消息的图片路径';
COMMENT ON COLUMN chat_records.content IS '聊天内容';
COMMENT ON COLUMN chat_records.status IS '消息状态 0 未读 1 已读 消息状态对于接收者';
COMMENT ON COLUMN chat_records.created_at IS '消息发送时间';
-- ----------------------------
-- Records of chat_records
-- ----------------------------
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (1, 2, 0, NULL, '你好，今天怎么样？', 0, '2024-11-26 20:04:32');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (2, 1, 0, NULL, '我很好，谢谢！你呢？', 1, '2024-11-26 20:04:43');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (1, 2, 1, 'placeholder/300x300.jpg', NULL, 0, '2024-12-01 13:18:53');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (2, 1, 0, NULL, '这张图片很有趣！', 0, '2024-11-26 20:04:43');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (1, 2, 2, NULL, '系统消息：您的好友已上线。', 1, '2024-11-26 20:04:43');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (2, 1, 0, NULL, '好的，我看到了。', 0, '2024-11-26 20:04:43');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (1, 2, 0, NULL, '明天记得开会。', 0, '2024-11-26 20:04:43');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (2, 1, 0, NULL, '好的，我会准时到。', 1, '2024-11-26 20:04:43');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (1, 2, 1, 'placeholder/300x300.jpg', NULL, 0, '2024-12-01 13:18:54');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (2, 1, 0, NULL, '这张照片很棒！', 0, '2024-11-26 20:04:43');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (1, 10, 2, NULL, '系统消息：用户''哈哈哈''发起了会话', 0, '2024-11-26 20:43:57');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (8, 9, 2, NULL, '系统消息：用户''新的用户e29a91f3-5de7-4c31-a4f6-bf0c5caa8a2d''发起了会话', 0,
        '2024-11-30 18:08:22');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (9, 8, 0, '', 'string', 0, '2024-11-30 18:26:13');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (9, 8, 0, '', 'string', 0, '2024-11-30 19:09:42');
INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at)
VALUES (9, 8, 0, '', 'string111', 0, '2024-11-30 19:09:50');

-- ----------------------------
-- Table structure for chat_session
-- ----------------------------
DROP TABLE IF EXISTS chat_session;
CREATE TABLE chat_session
(
    id              uuid         NOT NULL DEFAULT uuid_generate_v7(),
    received_id     int          NULL,
    send_id         int          NULL,
    last_message    varchar(255) NULL,
    last_reply_time timestamp    NULL,
    good_id         int          NULL,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN chat_session.id IS '会话id';
COMMENT ON COLUMN chat_session.received_id IS '接收者id';
COMMENT ON COLUMN chat_session.send_id IS '发送者id';
COMMENT ON COLUMN chat_session.last_message IS '最后一条消息';
COMMENT ON COLUMN chat_session.last_reply_time IS '最后聊天时间';
COMMENT ON COLUMN chat_session.good_id IS '当前咨询商品id';

-- ----------------------------
-- Records of chat_session
-- ----------------------------
INSERT INTO chat_session (received_id, send_id, last_message, last_reply_time, good_id)
VALUES (2, 1, '324234', '2024-11-28 13:36:44', 1);
INSERT INTO chat_session (received_id, send_id, last_message, last_reply_time, good_id)
VALUES (10, 1, '系统消息：用户''哈哈哈''发起了会话', '2024-11-26 20:43:57', NULL);
INSERT INTO chat_session (received_id, send_id, last_message, last_reply_time, good_id)
VALUES (1, 2, '324234', '2024-11-28 13:36:44', 1);
INSERT INTO chat_session (received_id, send_id, last_message, last_reply_time, good_id)
VALUES (8, 9, 'string111', '2024-11-30 19:09:50', 5);
INSERT INTO chat_session (received_id, send_id, last_message, last_reply_time, good_id)
VALUES (9, 8, 'string111', '2024-11-30 19:09:50', 5);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS comment;
CREATE TABLE comment
(
    id         uuid      NOT NULL DEFAULT uuid_generate_v7(),
    content    text      NOT NULL,
    user_id    int       NOT NULL,
    created_at timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    like_count int       NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN comment.id IS '评论id';
COMMENT ON COLUMN comment.content IS '评论内容';
COMMENT ON COLUMN comment.user_id IS '用户id';
COMMENT ON COLUMN comment.created_at IS '评论时间';
COMMENT ON COLUMN comment.like_count IS '点赞数';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for comment_image
-- ----------------------------
DROP TABLE IF EXISTS comment_image;
CREATE TABLE comment_image
(
    id         uuid         NOT NULL DEFAULT uuid_generate_v7(),
    comment_id int          NOT NULL,
    image      varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN comment_image.id IS '评论图片id';
COMMENT ON COLUMN comment_image.comment_id IS '评论id';
COMMENT ON COLUMN comment_image.image IS '图片';

-- ----------------------------
-- Records of comment_image
-- ----------------------------

-- ----------------------------
-- Table structure for fineness
-- ----------------------------
DROP TABLE IF EXISTS fineness;
CREATE TABLE fineness
(
    id          serial       NOT NULL,
    fineness    varchar(255) NULL,
    description varchar(255) NULL,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN fineness.id IS '成色id';
COMMENT ON COLUMN fineness.fineness IS '成色';
COMMENT ON COLUMN fineness.description IS '成色描述';

-- ----------------------------
-- Records of fineness
-- ----------------------------
INSERT INTO fineness (fineness, description)
VALUES ('全新', '未拆封/带吊牌，全新未使用');
INSERT INTO fineness (fineness, description)
VALUES ('99新', '仅拆封/试用，外观无瑕疵');
INSERT INTO fineness (fineness, description)
VALUES ('95新', '轻微使用，外观近全新');
INSERT INTO fineness (fineness, description)
VALUES ('9成新', '使用时间短，轻微使用痕迹');
INSERT INTO fineness (fineness, description)
VALUES ('8成新', '正常使用痕迹，功能完好');
INSERT INTO fineness (fineness, description)
VALUES ('7成新', '明显使用痕迹，功能正常');
INSERT INTO fineness (fineness, description)
VALUES ('7成新以下', '较重使用痕迹，功能正常');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS goods;
CREATE TABLE goods
(
    id             uuid           NOT NULL DEFAULT uuid_generate_v7(),
    name           varchar(255)   NOT NULL,
    type           varchar(20)    NOT NULL,
    category_id    int            NOT NULL,
    fineness_id    int            NOT NULL,
    user_id        int            NOT NULL,
    price          decimal(10, 2) NOT NULL,
    original_price decimal(10, 2) NOT NULL,
    description    text           NOT NULL,
    want           text           NULL,
    view           int            NOT NULL DEFAULT 0,
    like_count     int            NULL DEFAULT 0,
    created_at     timestamp      NULL,
    updated_at     timestamp      NULL DEFAULT CURRENT_TIMESTAMP,
    is_active      varchar(20)    NULL DEFAULT '1',
    is_selling     varchar(20)    NULL DEFAULT '0',
    PRIMARY KEY (id)
);

COMMENT ON COLUMN goods.id IS '商品id';
COMMENT ON COLUMN goods.name IS '商品名称';
COMMENT ON COLUMN goods.type IS '商品类型 0 出售 1 换物 2 都有';
COMMENT ON COLUMN goods.category_id IS '商品分类';
COMMENT ON COLUMN goods.fineness_id IS '成色状态';
COMMENT ON COLUMN goods.user_id IS '发布人';
COMMENT ON COLUMN goods.price IS '商品价格';
COMMENT ON COLUMN goods.original_price IS '原价';
COMMENT ON COLUMN goods.description IS '商品描述';
COMMENT ON COLUMN goods.want IS '换物需求';
COMMENT ON COLUMN goods.view IS '商品浏览量';
COMMENT ON COLUMN goods.like_count IS '点赞数';
COMMENT ON COLUMN goods.created_at IS '商品上架时间';
COMMENT ON COLUMN goods.updated_at IS '商品更新时间';
COMMENT ON COLUMN goods.is_active IS '商品状态 0 下架 1 审核中 2 上架';
COMMENT ON COLUMN goods.is_selling IS '售出状态 0 未售出 1 已售出';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('数码相机', 0, 1, 1, 1, 1200.00, 1500.00, '全新数码相机，适合旅行拍摄', NULL, 0, 0, '2024-11-21 19:28:32',
        '2024-11-21 19:28:32', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('折叠沙发', 1, 2, 5, 1, 500.00, 500.00, '8成新沙发，可折叠收纳，适合小户型', '交换成品油卡或家居用品', 0, 0,
        '2024-11-21 19:31:39', '2024-11-21 19:28:32', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('真丝围巾', 2, 3, 3, 1, 80.00, 120.00, '95新真丝围巾，手感丝滑', '换购运动手表', 0, 0, '2024-11-21 19:28:32',
        '2024-11-21 19:28:32', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('经典小说', 1, 4, 4, 1, 420.00, 60.00, '9成新经典小说《百年孤独》', '希望换购其他经典文学作品', 0, 0,
        '2024-11-21 19:32:03', '2024-11-21 19:28:32', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('登山背包', 0, 5, 2, 8, 300.00, 400.00, '99新登山背包，容量大，结实耐用', NULL, 0, 0, '2024-11-21 19:28:32',
        '2024-11-30 17:33:49', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('二手台灯', 1, 2, 6, 9, 500.00, 80.00, '7成新以下台灯，可正常使用', '换一本英文原版书', 0, 0,
        '2024-11-21 19:32:07', '2024-11-30 17:38:26', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('跑步鞋', 0, 5, 3, 1, 150.00, 200.00, '95新跑步鞋，透气舒适，适合日常锻炼', NULL, 0, 0, '2024-11-21 19:28:32',
        '2024-11-21 19:28:32', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('便携蓝牙音箱', 2, 1, 1, 1, 200.00, 300.00, '全新蓝牙音箱，音质优美，方便携带', '换购数码产品配件', 0, 0,
        '2024-11-21 19:28:32', '2024-11-21 19:28:32', 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('智能手表', 0, 1, 1, 1, 800.00, 1000.00, '全新智能手表，支持健康监测', NULL, 0, 0, '2024-11-21 19:51:01',
        NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('电子阅读器', 1, 4, 2, 1, 350.00, 500.00, '99新电子阅读器，适合长时间阅读', '换取运动耳机', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('高档耳机', 0, 1, 3, 1, 600.00, 800.00, '95新高档耳机，音质优秀', NULL, 0, 0, '2024-11-21 19:51:01', NULL, 2,
        0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('户外野餐垫', 2, 5, 1, 1, 50.00, 70.00, '全新户外野餐垫，适合露营使用', '希望换购户外运动装备', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('舒适沙发', 0, 2, 4, 1, 1500.00, 2000.00, '9成新沙发，适合家庭使用', NULL, 0, 0, '2024-11-21 19:51:01', NULL,
        2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('健身器材', 1, 5, 6, 1, 250.00, 350.00, '7成新健身器材，功能完好', '换一台电视机或家居产品', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('跑步机', 0, 5, 3, 1, 1800.00, 2500.00, '95新跑步机，带多种锻炼模式', NULL, 0, 0, '2024-11-21 19:51:01',
        NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('电动牙刷', 1, 2, 5, 1, 150.00, 200.00, '8成新电动牙刷，功能完好', '换购护肤品或家用电器', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('咖啡机', 0, 2, 2, 1, 1000.00, 1300.00, '99新咖啡机，适合家庭使用', NULL, 0, 0, '2024-11-21 19:51:01', NULL,
        2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('滑板车', 0, 5, 4, 1, 300.00, 400.00, '9成新滑板车，适合日常代步', NULL, 0, 0, '2024-11-21 19:51:01', NULL,
        2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('羽毛球拍', 1, 5, 1, 1, 80.00, 120.00, '全新羽毛球拍，适合初学者使用', '换一双运动鞋', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('空气净化器', 0, 2, 6, 1, 500.00, 700.00, '7成新空气净化器，适用于小型房间', NULL, 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('台式电脑', 0, 1, 3, 1, 3500.00, 4500.00, '95新台式电脑，性能强劲', NULL, 0, 0, '2024-11-21 19:51:01', NULL,
        2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('蓝牙耳机', 1, 3, 2, 1, 150.00, 200.00, '99新蓝牙耳机，音质出色', '换一部智能手机', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('按摩椅', 0, 2, 4, 1, 2500.00, 3000.00, '9成新按摩椅，舒适放松', NULL, 0, 0, '2024-11-21 19:51:01', NULL, 2,
        0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('电饭煲', 0, 2, 5, 1, 200.00, 250.00, '8成新电饭煲，功能完好', NULL, 0, 0, '2024-11-21 19:51:01', NULL, 2,
        0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('数码相框', 1, 1, 1, 1, 250.00, 300.00, '全新数码相框，适合家庭使用', '换一台游戏机或数码产品', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('冰箱', 0, 2, 3, 1, 2500.00, 3500.00, '95新冰箱，节能环保', NULL, 0, 0, '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('智能灯泡', 2, 2, 2, 1, 100.00, 150.00, '99新智能灯泡，可调光', '换取数码产品', 0, 0, '2024-11-21 19:51:01',
        NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('游戏机', 0, 1, 4, 1, 2000.00, 2500.00, '9成新游戏机，支持多款游戏', NULL, 0, 0, '2024-11-21 19:51:01', NULL,
        2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('按摩棒', 1, 2, 6, 1, 80.00, 120.00, '7成新按摩棒，功能良好', '换一个瑜伽垫或健身器材', 0, 0,
        '2024-11-21 19:51:01', NULL, 2, 0);
INSERT INTO goods (name, type, category_id, fineness_id, user_id, price, original_price, description, want, view, like_count, created_at, updated_at, is_active, is_selling)
VALUES ('洗衣机', 0, 4, 5, 1, 1500.00, 2000.00, '8成新洗衣机，节能型', NULL, 0, 0, '2024-11-21 19:51:01', NULL, 2,
        0);

-- ----------------------------
-- Table structure for goods_preview_image
-- ----------------------------
DROP TABLE IF EXISTS goods_preview_image;
CREATE TABLE goods_preview_image
(
    id       uuid         NOT NULL DEFAULT uuid_generate_v7(),
    goods_id int          NOT NULL,
    image    varchar(255) NULL,
    PRIMARY KEY (id)
);

COMMENT ON COLUMN goods_preview_image.id IS '预览图id';
COMMENT ON COLUMN goods_preview_image.goods_id IS '商品id';
COMMENT ON COLUMN goods_preview_image.image IS '预览图路径';

-- ----------------------------
-- Records of goods_preview_image
-- ----------------------------
INSERT INTO goods_preview_image (goods_id, image)
VALUES (1, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (2, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (3, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (4, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (5, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (6, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (7, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (8, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (9, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (10, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (11, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (12, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (13, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (14, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (15, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (16, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (17, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (18, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (19, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (20, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (21, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (22, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (23, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (24, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (25, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (26, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (27, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (28, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (29, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (30, 'placeholder/300x300.jpg');
INSERT INTO goods_preview_image (goods_id, image)
VALUES (1, 'placeholder/300x300.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "user";
CREATE TABLE "user"
(
    id             uuid          NOT NULL DEFAULT uuid_generate_v7(),
    name           varchar(255)  NOT NULL,
    username       varchar(50)   NOT NULL,
    password       varchar(255)  NOT NULL,
    email          varchar(100)  NULL,
    phone          varchar(20)   NULL,
    avatar         varchar(255)  NOT NULL DEFAULT 'placeholder/300x300.jpg',
    status         varchar(20)   NULL DEFAULT 'NOT_ACTIVE',
    last_login     timestamp     NULL,
    last_reply     timestamp     NULL,
    created_at     timestamp     NOT NULL,
    updated_at     timestamp     NULL DEFAULT CURRENT_TIMESTAMP,
    order_num      int           NULL DEFAULT 0,
    score          numeric(2, 1) NULL DEFAULT 5.0,
    merchant_auth  varchar(20)   NULL DEFAULT 'DISABLED',
    PRIMARY KEY (id)
);

COMMENT ON COLUMN "user".id IS '用户id';
COMMENT ON COLUMN "user".name IS '用户名';
COMMENT ON COLUMN "user".username IS '账号';
COMMENT ON COLUMN "user".password IS '密码';
COMMENT ON COLUMN "user".email IS '邮箱';
COMMENT ON COLUMN "user".phone IS '手机号';
COMMENT ON COLUMN "user".avatar IS '用户头像';
COMMENT ON COLUMN "user".status IS '账号状态 DISABLED 封禁 NOT_ACTIVE 审核中 ACTIVE 激活';
COMMENT ON COLUMN "user".last_login IS '最后登录时间';
COMMENT ON COLUMN "user".last_reply IS '最后回复时间';
COMMENT ON COLUMN "user".created_at IS '创建时间';
COMMENT ON COLUMN "user".updated_at IS '更新时间';
COMMENT ON COLUMN "user".order_num IS '成交订单';
COMMENT ON COLUMN "user".score IS '用户评分(0.0-5.0)';
COMMENT ON COLUMN "user".merchant_auth IS '商家认证 DISABLED 未认证 REVIEWING 审核中 ACTIVE 认证';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "user" (name, username, password, email, phone, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth)
VALUES ('哈哈哈', 'test', '$2a$10$9dCMW.w4pWr3QHFwVGZh9O8ToxwVu1f6t1G3VdC9LycjI4GknE2Hi', '1653796925@qq.com', NULL, 'placeholder/300x300.jpg',
        'ACTIVE', '2024-12-01 17:12:52', '2024-11-21 14:53:04', '2024-11-21 14:53:04', '2024-12-01 17:12:52', 100, 5.0, 'ACTIVE');
INSERT INTO "user" (name, username, password, email, phone, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth)
VALUES ('嘻嘻嘻', 'test2', '$2a$10$9dCMW.w4pWr3QHFwVGZh9O8ToxwVu1f6t1G3VdC9LycjI4GknE2Hi', '1653796925@qq.com', NULL, 'placeholder/300x300.jpg',
        'DISABLED', '2024-12-01 17:27:01', '2024-11-21 14:53:04', '2024-11-21 00:00:00', '2024-12-01 17:27:00', 0, 5.0, 'DISABLED');
INSERT INTO "user" (name, username, password, email, phone, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth)
VALUES ('新的用户2668e6de-e74d-4b16-b466-5e18ba5e22d3', '11142455755', '$2a$10$9dCMW.w4pWr3QHFwVGZh9O8ToxwVu1f6t1G3VdC9LycjI4GknE2Hi',
        '1653796925@qq.com', '', 'placeholder/300x300.jpg', 'ACTIVE', '2024-11-28 17:18:46', NULL, '2024-11-28 17:18:46',
        '2024-11-28 17:18:46', 0, 5.0, 'DISABLED');
INSERT INTO "user" (name, username, password, email, phone, avatar, status, last_login, last_reply, created_at, updated_at, order_num, score, merchant_auth)
VALUES ('新的用户e29a91f3-5de7-4c31-a4f6-bf0c5caa8a2d', '12311111111', '$2a$10$9dCMW.w4pWr3QHFwVGZh9O8ToxwVu1f6t1G3VdC9LycjI4GknE2Hi',
        '1653796925@qq.com', '', 'placeholder/300x300.jpg', 'ACTIVE', '2024-11-30 17:56:00', NULL, '2024-11-28 17:32:00',
        '2024-11-30 17:55:59', 0, 5.0, 'DISABLED');
