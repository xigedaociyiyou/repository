-- #注意里面导入数据的是cdh里面的mysql的连接
-- #如果使用老师提供的数据需要换成相应的配置ip 账号 密码
-- # 下面有配置的
--
-- #老师提供的MySQL 配置
-- -- jdbcUrl='106.75.33.59'
-- -- username='itcast_edu_stu'
-- -- password='itcast_edu_stu'
--
-- #CDH mysql配置
-- jdbcUrl='192.168.88.80'
-- username='root'
-- password='123456'
--
-- # 1.访问咨询主表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/nev?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from web_chat_ems_2019_07 where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_web_chat_ems_2019_07 \
-- -m 1
-- wait
--
-- # 2.访问与咨询信息副表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/nev?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from web_chat_text_ems_2019_07 where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_web_chat_text_ems_2019_07 \
-- -m 1
-- wait
--
-- #scrm系统表数据导入
-- #3.客户静态信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from customer where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_customer \
-- -m 1
-- wait
--
-- #4.线索申诉信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from customer_appeal where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_customer_appeal \
-- -m 1
-- wait
--
-- #5.客户线索表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from customer_clue where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_customer_clue \
-- -m 1
-- wait
--
-- #6.客户意向表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from customer_relationship where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_customer_relationship \
-- -m 1
-- wait
--
--
--
--
--
--
-- #7.员工信息表'
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from employee where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_ods_employee \
-- -m 1
-- wait
--
-- #8.班级信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from itcast_clazz where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_itcast_clazz \
-- -m 1
-- wait
--
-- #9.校区信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from itcast_school where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_itcast_school \
-- -m 1
-- wait
--
-- #10.学科信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from itcast_subject where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_itcast_subject \
-- -m 1
-- wait
--
-- #11.员工部门表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from scrm_department where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_scrm_department \
-- -m 1
-- wait
--
-- #teach系统建表
-- #12.teach日期列表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/teach?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select * from calendar where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_calendar \
-- -m 1
-- wait
--
-- #13.在读学员人数信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/teach?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from class_studying_student_count where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_class_studying_student_count \
-- -m 1
-- wait
--
-- #14.班级排课信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/teach?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from course_table_upload_detail where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_course_table_upload_detail \
-- -m 1
-- wait
--
-- #15.学生请假申请表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/teach?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select *,'2023-08-31' dt from student_leave_apply where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_student_leave_apply \
-- -m 1
-- wait
--
-- #16.班级作息时间表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/teach?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select * from tbh_class_time_table where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_tbh_class_time_table \
-- -m 1
-- wait
--
-- #17.学生打卡信息表
-- /usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
-- --connect 'jdbc:mysql://106.75.33.59:3306/teach?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
-- --username itcast_edu_stu \
-- --password itcast_edu_stu \
-- --query "select * from tbh_student_signin_record where 1=1 and  \$CONDITIONS" \
-- --hcatalog-database zxjy_ods \
-- --hcatalog-table ods_tbh_student_signin_record \
-- -m 1
-- wait
--
