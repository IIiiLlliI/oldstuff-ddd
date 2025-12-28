
-- ----------------------------
-- Table structure for chat_records
-- ----------------------------
DROP TABLE IF EXISTS chat_records;

CREATE TABLE chat_records (
                              id uuid NOT NULL DEFAULT uuid_generate_v7(),
                              send_id uuid NOT NULL,
                              received_id uuid NOT NULL,
                              type smallint NOT NULL,
                              image varchar(255),
                              content text,
                              status smallint NOT NULL DEFAULT 0,
                              created_at timestamp DEFAULT CURRENT_TIMESTAMP,
                              PRIMARY KEY (id)
);

COMMENT ON TABLE chat_records IS '聊天记录';
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
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (1, 2, 0, NULL, '你好，今天怎么样？', 0, '2024-11-26 20:04:32');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (2, 1, 0, NULL, '我很好，谢谢！你呢？', 1, '2024-11-26 20:04:43');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (1, 2, 1, 'placeholder/300x300.jpg', NULL, 0, '2024-12-01 13:18:53');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (2, 1, 0, NULL, '这张图片很有趣！', 0, '2024-11-26 20:04:43');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (1, 2, 2, NULL, '系统消息：您的好友已上线。', 1, '2024-11-26 20:04:43');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (2, 1, 0, NULL, '好的，我看到了。', 0, '2024-11-26 20:04:43');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (1, 2, 0, NULL, '明天记得开会。', 0, '2024-11-26 20:04:43');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (2, 1, 0, NULL, '好的，我会准时到。', 1, '2024-11-26 20:04:43');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (1, 2, 1, 'placeholder/300x300.jpg', NULL, 0, '2024-12-01 13:18:54');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (2, 1, 0, NULL, '这张照片很棒！', 0, '2024-11-26 20:04:43');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (1, 10, 2, NULL, '系统消息：用户''哈哈哈''发起了会话', 0, '2024-11-26 20:43:57');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (8, 9, 2, NULL, '系统消息：用户''新的用户e29a91f3-5de7-4c31-a4f6-bf0c5caa8a2d''发起了会话', 0, '2024-11-30 18:08:22');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (9, 8, 0, '', 'string', 0, '2024-11-30 18:26:13');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (9, 8, 0, '', 'string', 0, '2024-11-30 19:09:42');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (9, 8, 0, '', 'string111', 0, '2024-11-30 19:09:50');
-- INSERT INTO chat_records (send_id, received_id, type, image, content, status, created_at) VALUES (10, 1, 2, NULL, '系统消息：用户''新的用户5a96344a-762d-44f3-8552-40b7705c7d31''发起了会话', 0, '2025-04-19 12:57:24');

-- ----------------------------
-- Table structure for chat_session
-- ----------------------------
DROP TABLE IF EXISTS chat_session;

CREATE TABLE chat_session (
                              id uuid NOT NULL DEFAULT uuid_generate_v7(),
                              received_id uuid,
                              send_id uuid,
                              last_message varchar(255),
                              last_reply_time timestamp,
                              good_id integer,
                              PRIMARY KEY (id)
);

COMMENT ON TABLE chat_session IS '聊天会话';
COMMENT ON COLUMN chat_session.id IS '会话id';
COMMENT ON COLUMN chat_session.received_id IS '接收者id';
COMMENT ON COLUMN chat_session.send_id IS '发送者id';
COMMENT ON COLUMN chat_session.last_message IS '最后一条消息';
COMMENT ON COLUMN chat_session.last_reply_time IS '最后聊天时间';
COMMENT ON COLUMN chat_session.good_id IS '当前咨询商品id';


-- ----------------------------
-- Records of chat_session
-- ----------------------------
-- INSERT INTO chat_session(received_id, send_id, last_message, last_reply_time, good_id) VALUES (2, 1, '324234', '2024-11-28 13:36:44', 1);
-- INSERT INTO chat_session(received_id, send_id, last_message, last_reply_time, good_id) VALUES (10, 1, '系统消息：用户''哈哈哈''发起了会话', '2024-11-26 20:43:57', NULL);
-- INSERT INTO chat_session(received_id, send_id, last_message, last_reply_time, good_id) VALUES (1, 2, '324234', '2024-11-28 13:36:44', 1);
-- INSERT INTO chat_session(received_id, send_id, last_message, last_reply_time, good_id) VALUES (8, 9, 'string111', '2024-11-30 19:09:50', 5);
-- INSERT INTO chat_session(received_id, send_id, last_message, last_reply_time, good_id) VALUES (9, 8, 'string111', '2024-11-30 19:09:50', 5);
-- INSERT INTO chat_session(received_id, send_id, last_message, last_reply_time, good_id) VALUES (1, 10, '系统消息：用户''新的用户5a96344a-762d-44f3-8552-40b7705c7d31''发起了会话', '2025-04-19 12:57:24', 2);
-- INSERT INTO chat_session(received_id, send_id, last_message, last_reply_time, good_id) VALUES (10, 1, '系统消息：用户''新的用户5a96344a-762d-44f3-8552-40b7705c7d31''发起了会话', '2025-04-19 12:57:24', NULL);
