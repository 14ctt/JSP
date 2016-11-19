
use xs

create table pcc(
id varchar(50) not null,
neirong varchar(50) not null
)
insert into pcc values('1','没接到女朋友电话是因为：')
insert into pcc values('2','在街上被女朋友发现在看其他女生：')
insert into pcc values('3','女朋友问我好看还是她好看：')
insert into pcc values('4','约会迟到')
insert into pcc values('5','女友生气时怎么做')

create table pc(
problem varchar(2) not null,
xuanzhe varchar(50) not null
)

delete from pc
insert into pc values('1','手机开的静音')
insert into pc values('1','在打游戏')
insert into pc values('1','给你买东西')
insert into pc values('1','在工作')

insert into pc values('2','我没有看')
insert into pc values('2','好漂亮')
insert into pc values('2','她好丑啊')
insert into pc values('2','她还是没你好看')

insert into pc values('3','都好看')
insert into pc values('3','她好看')
insert into pc values('3','你好看')
insert into pc values('3','都不好看')

insert into pc values('4','堵车')
insert into pc values('4','和朋友喝酒')
insert into pc values('4','上司要求加班')
insert into pc values('4','开会')

insert into pc values('5','不理她')
insert into pc values('5','继续和她吵架')
insert into pc values('5','道歉并给她惊喜')
insert into pc values('5','只道歉并给她做爱吃的饭菜')

