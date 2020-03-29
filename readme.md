### 使用Spring+Mybatis开发的人员信息管理系统

* 主要是用技术
  **Servlet、JSP
  -SpringIOC、SpringAOP
  -Mybatis
  -Mybatis+Spring整合
* 工具
  -IDEA
  -MySQL
  -Toncat
* 项目结构
  -持久层--Mybatis
  -表现层--Servlet+JSP
  -Spring--管理对象、切面处理
  -sm父moudle
    -全局定义与组织
  -sm_service
    -持久层、业务层
    -Mybatis依赖、Spring依赖
  -sm_web
  	-表现层
  	-Servlet依赖

#### 项目中使用了一个核心控制器(DispatherServlet)对url进行解析，根据解析出来的结果调用对应的Controller方法，并将数据返回到jsp页面。
#### 在项目的开发过程中，遇到了各式各样的问题
* 最简单的类名写错，导致核心控制器找不到对应的Controller，页面404或者500。
* 方法名写错，没能处理数据，页面跳转成功，但是页面空白。
* IDEA中Tomcat路径没弄好，页面500。
* Dao接口与SQL映射文件没处理好
* 最淡疼的是IDEA有时会莫名其妙自己产生bug，关掉并重启bug就消失掉了....
