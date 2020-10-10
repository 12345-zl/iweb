/*iweb在线课堂项目必须的数据库结构*/
/*SQL语句不区分大小写 ；习惯上：关键字都大写，非关键字可小写*/
 #删除数据库iweb,如果它存在的话
 DROP DATABASE IF EXISTS iweb;
 #重新创建数据库iweb
  CREATE DATABASE iweb CHARSET=UTF8;
  
 #进入数据库iweb
 USE iweb;
  #创建校区表
  CREATE TABLE iw_school(
    sid  INT PRIMARY KEY AUTO_INCREMENT, #校区编号
	sname VARCHAR(32), #名称
	pic VARCHAR(128), #图片
	address VARCHAR(64), #地址
	phone VARCHAR(32), #联系电话
	postcode VARCHAR(6), #邮编
	longitude DECIMAL(9,6), #经度
	latitude DECIMAL(9,6) #纬度
  );
  INSERT INTO iw_school values
  (NULL,
'北京中关村中心',
'img/school/bjzgc.jpg',
'北京市海淀区北三环西路甲18号（大钟寺附近）中鼎大厦B座7层',
'010-62130963',
'100098',
'116.347527',
'39.972529'
);
 INSERT INTO iw_school values
 (NULL,
'北京天坛中心',
'img/school/bjtt.jpg',
'北京市崇文区珠市口东大街6号珍贝大厦西侧3层达内科技',
'010-67028668',
'100050',
'119.623735',
'32.101501'
);
 INSERT INTO iw_school values
 (NULL,
'北京广渠门中心',
'img/school/bjgqm.jpg',
'北京市东城区广渠门东广渠家园25号楼启达大厦一层',
'15321130620',
'100010',
'116.457211',
'39.897629'
)


  #创建讲师表
  #创建课程类别表
  #创建课程表
  #创建用户信息表
  #创建购物车表
  #创建订单表
  #创建用户收藏夹表
  #创建....