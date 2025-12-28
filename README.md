# oldstuff-ddd
原旧物圈项目翻新，去掉前端，保留后端，转换DDD设计模式，迁移到COLA中

---

## 技术栈

* Java: JDK 17
* 框架: Spring / Spring Boot
* 构建工具: Maven
* 数据库: PostgreSQL / Redis
* 中间件：RabbitMQ / ElasticSearch / MinIO
* 其他: MyBatis / JPA / Lombok / Swagger / Flyway 等

---

## 项目结构

```text
oldstuff-ddd/
├─oldstuff-backend-adapter
│  └─src
│     └─main
│         └─java
│             └─com.oldstuff.cola       // 适配器层（Controller）
│                 └─web                 
├─oldstuff-backend-app
│  └─src
│     ├─main
│     │  └─java
│     │      └─com.oldstuff.cola        // 编排层（app Service）
│     │          ├─config
│     │          ├─goods
│     │          ├─order
│     │          └─user
│     │              └─executor
│     │                  └─query
│     └─test
├─oldstuff-backend-client
│  └─src
│     └─main
│         └─java
│             └─com.oldstuff.cola       // 接口层（领域接口指导）
│                 ├─api
│                 ├─dto
│                 │  ├─data
│                 │  │  ├─chat
│                 │  │  ├─goods
│                 │  │  ├─order
│                 │  │  └─user
│                 │  └─event
│                 └─exception           
├─oldstuff-backend-domain               // 领域层
│  └─src
│     ├─main
│     │  └─java
│     │      └─com.oldstuff.cola
│     │          └─domain
│     │              ├─common           // 聚合根
│     │              │  ├─enums         // 枚举（值对象类型）
│     │              │  └─gateway       // 基建层调用接口
│     │              ├─goods
│     │              │  ├─enums
│     │              │  └─gateway
│     │              ├─order
│     │              └─user
│     │                  ├─enums
│     │                  ├─gateway
│     │                  └─service  
│     └─test
├─oldstuff-backend-infrastructure       // 基建层
│  └─src
│     ├─main
│     │  ├─java
│     │  │  └─com.oldstuff.cola
│     │  │      ├─common
│     │  │      ├─config
│     │  │      ├─goods
│     │  │      │  ├─gateway            // 领域接口实现
│     │  │      │  └─mapper
│     │  │      ├─order
│     │  │      ├─user
│     │  │      │  ├─gateway
│     │  │      │  └─mapper
│     │  │      └─utils           
│     │  └─resources
│     │      ├─db
│     │      │  └─migration             // flyway数据库管理
│     │      └─mybatis
│     └─test
└─start
    └─src
       ├─main
       │  ├─java
       │  │  └─com.oldstuff.cola
       │  └─resources
       └─test
````
