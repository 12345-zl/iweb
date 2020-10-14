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
);
 INSERT INTO iw_school values
 (NULL,
'北京万寿路中心',
'img/school/bjwsl.jpg',
'北京市海淀区万寿路西街2号文博大厦二层达内科技',
'010-82761288',
'100081',
'116.300824',
'39.915776'
);
INSERT INTO iw_school values
 (NULL,
'北京清华园中心',
'img/school/bjqhy.jpg',
'北京市海淀区花园路小关街120号万盛商务会馆A区三层',
'010-82761288',
'100081',
'116.386429',
'39.984291'
);
INSERT INTO iw_school values
 (NULL,
'昌平区体育馆',
'img/school/cpq.jpg',
'北京市昌平区南环西路1号',
'(010)69741129',
'100081',
'116.232882',
'40.21634'
);
INSERT INTO iw_school values
 (NULL,
'远大中心',
'img/school/bjyd.jpg',
'北京市朝阳区慧忠路5号',
'(010)84891818',
'100081',
'116.41672',
'40.00199'
);
INSERT INTO iw_school values
 (NULL,
'北环中心',
'img/school/bjbh.jpg',
'北京市西城区裕民路18号',
'(010)84891818',
'100081',
'116.388534',
'39.978473'
);
INSERT INTO iw_school values
 (NULL,
'大悦城购物中心',
'img/school/bjdyc.jpg',
'北京市朝阳区朝阳北路101号',
'(010)85579871',
'100081',
'116.524819',
'39.930772'
);
INSERT INTO iw_school values
 (NULL,
'万通中心',
'img/school/bjwt.jpg',
'北京市朝阳区朝外大街甲6号',
'(010)84891818',
'100081',
'116.463148',
'39.925516'
);
INSERT INTO iw_school values
 (NULL,
'静安中心',
'img/school/bjja.jpg',
'北京市朝阳区北三环东路8号',
'(010)84891818',
'100081',
'116.446971',
'39.966166'
);
INSERT INTO iw_school values
 (NULL,
'西单大悦城购物中心',
'img/school/bjxd.jpg',
'北京市西城区西单北大街131号',
'(010)66517777',
'100081',
'116.379299',
'39.916967'
);
INSERT INTO iw_school values
 (NULL,
'北京体育馆',
'img/school/bj.jpg',
'北京市东城区体育馆路甲2号',
'(010)84891818',
'100081',
'116.433223',
'39.888323'
);
INSERT INTO iw_school values
 (NULL,
'通州体育场',
'img/school/bjwt.jpg',
'新华东街77号',
'(010)69552013',
'100081',
'116.667597',
'39.915206'
);
INSERT INTO iw_school values
 (NULL,
'北京月坛体育馆',
'img/school/bjyt.jpg',
'北京市西城区月坛南街甲1号',
'(010)68013882',
'100081',
'116.362267',
'39.921495'
);
INSERT INTO iw_school values
 (NULL,
'北京理工大学-体育馆',
'img/school/bjlgdx.jpg',
'北京市海淀区南大街5号北京理工大学内部',
'(010)68912532,(010)68915220',
'100081',
'116.321015',
'39.965049'
);
INSERT INTO iw_school values
 (NULL,
'金融街(海伦)中心',
'img/school/shjrj.jpg',
'上海市虹口区海伦路440号',
'(021)63566677',
'100081',
'121.496309',
'31.264676'
);
INSERT INTO iw_school values
 (NULL,
'新天地时尚·购物中心',
'img/school/bjxtd.jpg',
'上海市黄浦区马当路245号',
'(021)53820666',
'100081',
'121.481834',
'31.223399'
);
INSERT INTO iw_school values
 (NULL,
'万都中心',
'img/school/bjwd.jpg',
'上海市长宁区兴义路8号',
'(010)68013882',
'100081',
'121.411624',
'31.210783'
);
INSERT INTO iw_school values
 (NULL,
'歌斐中心',
'img/school/bjgf.jpg',
'上海市黄浦区蒙自路757号',
'(021)63366888',
'100081',
'121.488634',
'31.203419'
);
INSERT INTO iw_school values
 (NULL,
'大宁郁金香公园',
'img/school/shyjx.jpg',
'上海市静安区广中西路288号',
'(021)56653804',
'100081',
'121.449785',
'31.282174'
);
INSERT INTO iw_school values
 (NULL,
'闵行体育公园',
'img/school/bjmx.jpg',
'上海市闵行区新镇路456号',
'(021)54823272',
'100081',
'121.377542',
'31.149117'
);
INSERT INTO iw_school values
 (NULL,
'长风公园',
'img/school/bjcf.jpg',
'上海市普陀区大渡河路189号',
'(021)62453270',
'100081',
'121.403703',
'31.230279'
);
  #创建讲师表
  CREATE TABLE  iw_teacher(
   tid  INT PRIMARY KEY AUTO_INCREMENT,    	#讲师编号
   tname VARCHAR(6),  		#姓名
   pic   VARCHAR(128),  		#照片
   skills  VARCHAR(128), 		#擅长的领域
   experience VARCHAR(1024), 	#工作经验
   style VARCHAR(1024) 		#工作分格
   );
  INSERT INTO iw_teacher VALUES(
  NULL,
  '成亮',
  'img/teacher/t1.jpg',
  'WEB全栈开发',
  '10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；
  先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。',
  '讲课诙谐幽默，深处浅出，深得学生喜爱。');
   INSERT INTO iw_teacher VALUES(
   NULL,
   '李然',
   'img/teacher/t2.jpg',
   '高级网页设计',
   '从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。',
   '教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。'
   );
   INSERT INTO iw_teacher VALUES(
   NULL,
   '张东',
   'img/teacher/t3.jpg',
   'JS高级编程',
   '美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。',
   '一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。'
   );
  INSERT INTO iw_teacher VALUES(
  NULL,
  '程涛',
  'img/teacher/t4.jpg',
  '移动APP开发',
  '曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。',
  '感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。'
  );
 INSERT INTO iw_teacher VALUES(
  NULL,
  '纪盈鑫',
  'img/teacher/t5.jpg',
  '前端框架开发',
  '曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。',
  '授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。'
  );
    
  INSERT INTO iw_teacher VALUES(
   NULL,
   '程祖红',
   'img/teacher/t6.jpg',
   'Java讲师',
   '先后在神州数码、根网科技、托普软件、北大方正春元、国信易博等软件公司从事软件开发、设计及管理工作。',
   '讲授以细腻见长，善于以日常生活的例子加以类比、引导学生建立起编程中的逻辑思维能力。'
   );
   INSERT INTO iw_teacher VALUES(
    NULL,
    '杨燕',
    'img/teacher/t7.jpg',
    'Web讲师',
    '多年互联网领域研发经验，包括商务网站、管理系统、移动应用等研发经验。曾参与研发的项目涉及领域包括航天系统、总参谋部队等，并在大唐电信任职高级工程师期间积累了丰富的教学实战经验',
    '由浅入深，快速入门，实行理论加实战的教学方式，做到真正的学以致用。达内集团WEB技术讲师，主讲HTML5、CSS3、交互设计、JavaScript等课程。'
    );
	INSERT INTO iw_teacher VALUES(
	 NULL,
	 '王丹波',
	 'img/teacher/t8.jpg',
	 'Python讲师',
	 '曾从事成都农商银行核心/支付/票据、建行中间业务系统、华夏基金清算系统、数据加密等软件开发项目',
	 '讲课风格深入浅出，注重案例化、模型化，立体化教学，注重培养思考能力、动手能力、自学能力'
	 );
	 INSERT INTO iw_teacher VALUES(
	  NULL,
	  '刘国斌',
	  'img/teacher/t9.jpg',
	  'Java讲师',
	  '曾工作于联想担任系统开发工程师，曾在博彦科技股份有限公司担任项目经理从事移动互联网管理及研发工作，曾创办蓝懿科技有限责任公司从事总经理职务负责iOS教学及管理工作。',
	  '授课幽默风趣，善于用通俗易懂的语言让学生掌握复杂知识点。整个授课思路清晰。知识点讲解深入浅出。善于与学员沟通能及时掌握学生学习动态，根据学生情况因材施教。'
	  );
	  INSERT INTO iw_teacher VALUES(
	   NULL,
	   '丁明一',
	   'img/teacher/t10.jpg',
	   'Linux云计算讲师',
	   '红帽官方认证讲师(RHCI)红帽认证架构师(RHCA)，，精通Linux系统管理、大规模部署Linux环境、建立Shell脚本自动化管理平台等。主持部署多个LAMP网络服务平台、构建管理多个大型Nginx Web服务平台，著作《Linux运维之道》。',
	   '教学中因材施教，注重学员自我能力的提升'
	   );
	   INSERT INTO iw_teacher VALUES(
	    NULL,
	    '李旭辉',
	    'img/teacher/t11.jpg',
	    '软件测试讲师',
	    '曾参与国内某知名ERP软件、 金融理财软件的测试，曾主持搜狗输入法/浏览器、搜狗听 写/手机助手App的测试工作',
	    '讲课生动，通俗易懂，擅于知识拆分细化， 融会贯通的讲解方式'
	    );
	    INSERT INTO iw_teacher VALUES(
	     NULL,
	     '崔辉',
	     'img/teacher/t12.jpg',
	     '软件测试讲师',
	     '曾工作于远东数码有限公司，用友软件等机构。担任开发工程师，测试工程师，测试经理等职位。曾在北大资源学院，达内科技等机构担任讲师，具备多年的软件开发，测试经验。',
	     '课耐心细致，思路清晰，能化难为简，知识点讲解透彻。善于与学生沟通，始终秉持着"授之以鱼，不如授之以渔 "的教学理念。'
	     );
		 INSERT INTO iw_teacher VALUES(
		  NULL,
		  '黄书林',
		  'img/teacher/t13.jpg',
		  '网络运维与安全实战讲师',
		  '具有丰富的 IT 从业经验和教育心得， 精通 TCP/IP 及路由 / 交换技术，熟练 构建大中型企业网，对广域网及数据传 输网中的核心网、城域网、接入网有极 为深刻的见解和专业理念',
		  '课堂气氛轻松、活泼，引导学员克服畏难情绪、培养良好的学习习惯，将专业技能通过碎片化处理使学员更易理解、掌握。'
		  );
		  INSERT INTO iw_teacher VALUES(
		   NULL,
		   '王健',
		   'img/teacher/t14.jpg',
		   '网络运维与安全实战讲师',
		   '十五年互联网从业经验，八年IT培训经验，曾任某大型企业网站运营经理。拥有RHCE/MCSE等行业资质，多年一线技术经验',
		   '把复杂的知识通俗化，深入浅出的讲解知识点，授课风格灵活多变，思路清晰。'
		   );
		   INSERT INTO iw_teacher VALUES(
		    NULL,
		    '兰刚',
		    'img/teacher/t15.jpg',
		    '大数据讲师',
		    '曾在东泰科技、紫光软件等机构任职。精通 J2SE、J2EE 技术体系，项目经验丰富。',
		    '曾在东泰科技、紫光软件等机构任职。精通 J2SE、J2EE 技术体系，项目经验丰富。语言风趣幽默，知识点讲解到位详细，深入浅出，理论与实际项目相结合紧密，让学员在轻松开心的氛围中学习到软件开发的精髓。'
		    );
  INSERT INTO iw_teacher VALUES(
   NULL,
   '陈子枢',
   'img/teacher/t16.jpg',
   'Java培优教研总监',
   '工作20年，15年软件开发、管理经验，5年教学经验。曾任职于山脉科技、神州数码、电网等机构，担任系统架构师、CTO等工作。曾在传智播客任A级讲师、达内科技任研发总监及金牌讲师。精通Java2EE技术体系，项目经验极其丰富。',
   '风趣幽默、业务分析透彻、深入浅出，理论与实际项目相结合紧密，让学员在轻松开心的氛围中学习到软件开发的精髓。'
   );
   INSERT INTO iw_teacher VALUES(
    NULL,
    '崔庆江',
    'img/teacher/t17.jpg',
    'UI讲师',
    '16年数字艺术设计及培训经验，原清华美术学院数字艺术培训讲师，Adobe认证讲师',
    '16年行业及教学经验;原清华美术学院数字艺术培训讲师，设计制作了大量的包装设计、标志设计、书籍装帧等项目，设计印刷经验丰富，语言表达能力强，注重理论和实践的结合，注重项目经验和技巧的分享。讲课富有激情，善于激发学员的思维，训练学员技能，认真讲评作品，互动式的教学模式'
    );
  		 INSERT INTO iw_teacher VALUES(
  		  NULL,
  		  '吴统瑞',
  		  'img/teacher/t18.jpg',
  		  'UI讲师',
  		  'Adobe 认证讲师CEAC 委员10年设计与教学相关经验担任CEAC国家信息化计算机教育认证创意设计人才培养工程专业委员会讲师',
  		  'Adobe 认证讲师CEAC 委员10年设计与教学相关经验担任CEAC信息化计算机教育认证创意设计人才培养工程专业委员会讲师'
  		  );
  		  INSERT INTO iw_teacher VALUES(
  		   NULL,
  		   '郝志祥',
  		   'img/teacher/t19.jpg',
  		   'CAD教研总监',
  		   '17年设计及教学相关经验 原清华美术学院数字艺术培训讲师， 参与设计制作了大量的居住空间设计、办公空间设计、展览展示等项目',
  		   '设计施工经验丰富;语言表达能力强， 善于和学员沟通，能随时掌握学员的 学习状况，深受学员喜爱。'
  		   );
  		   INSERT INTO iw_teacher VALUES(
  		    NULL,
  		    '周华飞',
  		    'img/teacher/t15.jpg',
  		    'Python教研总监',
  		    '十五年互联网从业经验，曾担任Domob高级工程师，中国云计算职业教育产业领军人物',
  		    '讲课富有激情，善于激发 学员的思维。细心、富有责任感，注重原理与实战相结合'
  		    );
  #创建课程类别表
 CREATE TABLE iw_course_type(
  tid INT PRIMARY KEY AUTO_INCREMENT, #类别编号
  tname VARCHAR(16)                   #类别名称
  );
  
  INSERT INTO iw_course_type  VALUES(NULL,'基础课程');
  INSERT INTO iw_course_type  VALUES(NULL,'核心课程');
  INSERT INTO iw_course_type  VALUES(NULL,'进阶课程');
  #创建课程表
  CREATE TABLE iw_course(
  cid INT PRIMARY KEY AUTO_INCREMENT,  #课程编号
  type_id INT ,   #课程所属类别的编号，例如1-基础课程，2-核心课程
  cname VARCHAR(64),  #课程名称
  pic VARCHAR(128),  #介绍图片
  teacher_id INT,#教师编号
  duration VARCHAR(16),#课程时长
  start_time VARCHAR(16),#开课时间
  #注意：一门课程可能在多个校区开课，此处无法保存多个校区
  price DECIMAL(8,2),  #价格
  details VARCHAR(4096),  #课程详细介绍
  buy_count INT      #购买数量
  );
  INSERT INTO iw_course VALUES(
   NULL,
   1,
   '微信小程序开发',
   'img/course/01.jpg',
   '1',
   '五天',
   '每月底开课',
   '599',
   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
   180
   );
   INSERT INTO iw_course VALUES(
    NULL,
	3,
    'Unity地形环境搭建',
    'img/course/02.jpg',
    '2',
    '三天',
    '每月初开课',
    '299',
    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
	1900
    );
	INSERT INTO iw_course VALUES(
	 NULL,
	 2,
	 'UI控件之基本控件',
	 'img/course/03.jpg',
	 '3',
	 '一周',
	 '每月底开课',
	 '1688',
	 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
	 3459
	 );
	  INSERT INTO iw_course VALUES(
	   NULL,
	   2,
	   '微信小程序概述',
	   'img/course/04.jpg',
	   '5',
	   '一月',
	   '八月开课',
	   '1399',
	   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
	   1289
	   );
INSERT INTO iw_course VALUES(
   NULL,
   2,
   '手机图标绘制',
   'img/course/05.jpg',
   '6',
   '五天',
   '每月底开课',
   '899',
   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
   675
   );
   INSERT INTO iw_course VALUES(
    NULL,
	2,
    'jQuery操作DOM',
    'img/course/06.jpg',
    '7',
    '六天',
    '九月底开课',
    '699',
    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
	879
    );
	INSERT INTO iw_course VALUES(
	 NULL,
	 2,
	 'WXAPP之一周上手小程序',
	 'img/course/07.jpg',
	 '8',
	 '五天',
	 '每月底开课',
	 '5399',
	 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
	 376
	 );
	 INSERT INTO iw_course VALUES(
	  NULL,
	  3,
	  '零基础手绘教程',
	  'img/course/08.jpg',
	  '9',
	  '五天',
	  '6月底开课',
	  '3599',
	  '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
	  777
	  );
	  INSERT INTO iw_course VALUES(
	   NULL,
	   3,
	   'Linux系统管理',
	   'img/course/09.jpg',
	   '10',
	   '五天',
	   '4月底开课',
	   '688',
	   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
	   5669
	   );
	   INSERT INTO iw_course VALUES(
	    NULL,
		1,
	    '视频剪辑',
	    'img/course/10.jpg',
	    '11',
	    '五天',
	    '每月初开课',
	    '388',
	    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
	    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
		56346
	    );
		INSERT INTO iw_course VALUES(
		 NULL,
		 1,
		 '数据分析与可视化',
		 'img/course/11.jpg',
		 '12',
		 '15天',
		 '每月底开课',
		 '4800',
		 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
		 5488
		 );
		 INSERT INTO iw_course VALUES(
		  NULL,
		  1,
		  '插画动起来',
		  'img/course/12.jpg',
		  '13',
		  '30天',
		  '9月底开课',
		  '1599',
		  '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
		  7567
		  );
		  INSERT INTO iw_course VALUES(
		   NULL,
		   3,
		   '魔术效果制作',
		   'img/course/13.jpg',
		   '14',
		   '14天',
		   '每月底开课',
		   '3000',
		   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
		   653
		   );
		   INSERT INTO iw_course VALUES(
		    NULL,
			3,
		    'WUI界面设计',
		    'img/course/14.jpg',
		    '15',
		    '40天',
		    '3月初开课',
		    '1680',
		    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
		    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
			876
		    );
			INSERT INTO iw_course VALUES(
			 NULL,
			 1,
			 '红帽认证课程',
			 'img/course/15.jpg',
			 '16',
			 '16天',
			 '每月底开课',
			 '4399',
			 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
			 3643
			 );
			 INSERT INTO iw_course VALUES(
			  NULL,
			  2,
			  'WEB前端课程',
			  'img/course/16.jpg',
			  '17',
			  '60天',
			  '每月底开课',
			  '5999',
			  '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
			  673
			  );
			  INSERT INTO iw_course VALUES(
			   NULL,
			   2,
			   '红帽认证工程师',
			   'img/course/17.jpg',
			   '18',
			   '15天',
			   '每月底开课',
			   '10599',
			   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
			   788
			   );
			   INSERT INTO iw_course VALUES(
			    NULL,
				2,
			    'web精品课',
			    'img/course/18.jpg',
			    '19',
			    '50天',
			    '每月底开课',
			    '5999',
			    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
			    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
				56
			    );
				INSERT INTO iw_course VALUES(
				 NULL,
				 1,
				 'ps入门',
				 'img/course/19.jpg',
				 '20',
				 '15天',
				 '每月底开课',
				 '2999',
				 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
				 3874
				 );
				 INSERT INTO iw_course VALUES(
				  NULL,
				  3,
				  '前端开发框架',
				  'img/course/20.jpg',
				  '1',
				  '90天',
				  '每月底开课',
				  '16699',
				  '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
				  760
				  );
				  INSERT INTO iw_course VALUES(
				   NULL,
				   3,
				   'MongoDB',
				   'img/course/21.jpg',
				   '2',
				   '10天',
				   '每月底开课',
				   '5399',
				   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
				   7876
				   );
				   INSERT INTO iw_course VALUES(
				    NULL,
					2,
				    '微信小程序开发',
				    'img/course/22.jpg',
				    '3',
				    '9天',
				    '每月底开课',
				    '599',
				    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
				    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
					66
				    );
					INSERT INTO iw_course VALUES(
					 NULL,
					 3,
					 'Linux云计算',
					 'img/course/23.jpg',
					 '4',
					 '15天',
					 '每月底开课',
					 '999',
					 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
					 7656
					 );
					 INSERT INTO iw_course VALUES(
					  NULL,
					  2,
					  'EME之微信运营',
					  'img/course/24.jpg',
					  '5',
					  '五天',
					  '每月底开课',
					  '599',
					  '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
					  546
					  );
					  INSERT INTO iw_course VALUES(
					   NULL,
					   1,
					   'Java实战',
					   'img/course/25.jpg',
					   '6',
					   '8天',
					   '每月底开课',
					   '1599',
					   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
					   45
					   );
					   INSERT INTO iw_course VALUES(
					    NULL,
						2,
					    'HADOOP',
					    'img/course/26.jpg',
					    '7',
					    '78天',
					    '每月底开课',
					    '9999',
					    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
					    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
						4565
					    );
						INSERT INTO iw_course VALUES(
						 NULL,
						 2,
						 '软件测试',
						 'img/course/27.jpg',
						 '8',
						 '19天',
						 '每月底开课',
						 '4599',
						 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
						 708
						 );
						 INSERT INTO iw_course VALUES(
						  NULL,
						  2,
						  'Linux部署',
						  'img/course/28.jpg',
						  '9',
						  '18天',
						  '每月底开课',
						  '5499',
						  '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						  <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
						  9809
						  );
						  INSERT INTO iw_course VALUES(
						   NULL,
						   2,
						   '手绘图标',
						   'img/course/29.jpg',
						   '10',
						   '4个半月',
						   '每月底开课',
						   '5999',
						   '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						   <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
						   9885
				            );
						   INSERT INTO iw_course VALUES(
						    NULL,
							1,
						    'UI绘画',
						    'img/course/30.jpg',
						    '11',
						    '90天',
						    '每月底开课',
						    '18888',
						    '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
						    <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
							1132
						    );
							INSERT INTO iw_course VALUES(
							 NULL,
							 2,
							 'MySQL存储',
							 'img/course/31.jpg',
							 '12',
							 '五天',
							 '每月底开课',
							 '59999',
							 '<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
							 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>
							 <p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>',
							 345
							 );
#创建校区开课表，记录哪个校区开设了哪些校区--典型的“多对多”
CREATE TABLE iw_school_course(
scid INT PRIMARY KEY AUTO_INCREMENT,  #开课编号
school_id INT,     #校区编号
course_id INT     #课程编号
							    
);
INSERT INTO iw_school_course VALUES(NULL,1,1);
INSERT INTO iw_school_course VALUES(NULL,3,2);
INSERT INTO iw_school_course VALUES(NULL,4,3);
INSERT INTO iw_school_course VALUES(NULL,5,4);
INSERT INTO iw_school_course VALUES(NULL,6,5);
INSERT INTO iw_school_course VALUES(NULL,7,6);
INSERT INTO iw_school_course VALUES(NULL,8,7);
INSERT INTO iw_school_course VALUES(NULL,9,8);
INSERT INTO iw_school_course VALUES(NULL,10,9);
INSERT INTO iw_school_course VALUES(NULL,11,10);
INSERT INTO iw_school_course VALUES(NULL,12,11);
INSERT INTO iw_school_course VALUES(NULL,13,12);
INSERT INTO iw_school_course VALUES(NULL,14,13);
INSERT INTO iw_school_course VALUES(NULL,15,14);
INSERT INTO iw_school_course VALUES(NULL,16,15);
INSERT INTO iw_school_course VALUES(NULL,17,16);
INSERT INTO iw_school_course VALUES(NULL,18,17);
INSERT INTO iw_school_course VALUES(NULL,19,18);
INSERT INTO iw_school_course VALUES(NULL,20,19);
INSERT INTO iw_school_course VALUES(NULL,1,20);
INSERT INTO iw_school_course VALUES(NULL,3,21);
INSERT INTO iw_school_course VALUES(NULL,4,22);
INSERT INTO iw_school_course VALUES(NULL,5,23);
INSERT INTO iw_school_course VALUES(NULL,6,24);
INSERT INTO iw_school_course VALUES(NULL,7,25);
INSERT INTO iw_school_course VALUES(NULL,8,26);
INSERT INTO iw_school_course VALUES(NULL,9,27);
INSERT INTO iw_school_course VALUES(NULL,10,28);
INSERT INTO iw_school_course VALUES(NULL,12,29);
INSERT INTO iw_school_course VALUES(NULL,13,30);
INSERT INTO iw_school_course VALUES(NULL,14,31);
  #创建用户信息表
  CREATE TABLE iw_user (
   uid INT PRIMARY KEY AUTO_INCREMENT,#用户编号
   email VARCHAR(64), #邮箱
   phone VARCHAR(64),#电话
   password VARCHAR(128)  #登录密码
  );
  INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn',13812345678,password('123456'));
  INSERT INTO iw_user VALUES(NULL,'dou@tedu.cn',13877345678,password('bb3456'));
  INSERT INTO iw_user VALUES(NULL,'tang@tedu.cn',13992345678,password('cc3456'));
  INSERT INTO iw_user VALUES(NULL,'niu@tedu.cn',13817775678,password('dd3456'));
  INSERT INTO iw_user VALUES(NULL,'cai@tedu.cn',13800022278,password('aa3456'));
  
  #创建购物车表
  #创建订单表
  #创建用户收藏夹表
  #创建....