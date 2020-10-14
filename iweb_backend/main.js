/*iWeb项目的后台动态web服务器
功能：
    接收客户端提交的HTTP请求(request/req)；
	读取请求中的客户端提交来的数据
	向数据库服务器提交SQL命令以操作底层数据；
	最后向客户端发送HTTP响应（response/res）,说明执行成功还是失败
*/

//引入第三方提供的express模块
  const express =require('express')
//使用第三方模块创建一个Web服务器
  let app= express();
  //让Web服务器监听的指定端口上，即启动web服务器
  let port=5050  //提示：此处为新浪云服务器做铺垫
  app.listen(port,()=>{
	  console.log('Server Listening on Port:',port)
  })
  
  /*修改所有响应消息的头部，允许来自于任何客户端地跨域*/
  app.use((req,res,next)=>{
	  //修改响应消息头部，添加“访问控制-允许的来源”
	  res.header('Access-Control-Allow-Origin','*')
	  //方行，继续执行后续的请求处理过程
	  next()
  })
  /*//让Web服务器可以接受一个特定的请求，并回复该请求
  app.get('/index',(req,res)=>{
	  res.send('Welcom to My Index!')
  })
  app.get('/login',(req,res)=>{
  	  res.send('Welcom to My Login Page!')
  })*/
  /**API1.1:向客户端输出排名前12位的最新课程
  *请求方法:GET
  *请求地址：/course/newest
  *请求参数：无
  *响应数据：
  [
	  {
	    cid:3,
		cname:'微信小程序',
		pic:'img/course/03.jpg',
		tname:'程涛',
		tid:5,
		price:599
	  },
  ]
  */
 /*创建数据库连接池，其中包含10个连接，用于连接数据库*/
 //导入第三方模块mysql创建数据库连接池
 const mysql =require('mysql')
 //使用第三方模块mysql创建数据库连接池
 let pool=mysql.createPool({
	 host:'127.0.0.1',  //数据库服务器的地址
	 port:'3306',       //数据库服务器的端口号
	 user:'root',       //数据库管理员用户名
	 password:'',        //管理员登录密码
	 database:'iweb',     //数据库名称
	 connectionLimit:10,    //池中连接的最大数量
 })
 
 
 app.get('/course/newest',(req,res)=>{
	 //向数据库服务器发送查询请求，获得必须的课程数据:前12条（即从第0行开始读取12行）:
	 //且最新课程（即按课程编号由大到小排序);同时还要跨表查询（同时查询course和teacher两个表
	 
	 let sql='SELECT cid,cname,iw_course.pic,price,tname,tid,duration,start_time  FROM iw_course,iw_teacher WHERE iw_course.teacher_id=iw_teacher.tid ORDER BY cid DESC LIMIT 0,12'
	 pool.query(sql,(err,result)=>{
		 if(err){    //数据库操作执行错误
		     console.log('数据库查询失败！')
			 throw err
		 }
		 //数据库操作顺利完成，查询结果保存在result中
		 console.log('数据库查询成功！')
		 // console.log(result)
	   //将数据库返回的课程输出发送给客户端
	   res.send(result)
	 })
 })
 
 
 /**API1.2:向客户端输出排名前12位的最新课程
 *请求方法:GET
 *请求地址：/course/hottest
 *请求参数：无
 *响应数据：
 [
 	  {
 	    cid:3,
 		cname:'微信小程序',
 		pic:'img/course/03.jpg',
 		tname:'程涛',
 		tid:5,
 		price:599
 	  },
 ]*/
 app.get('/course/hottest',(req,res)=>{
 	 //向数据库服务器发送查询请求，获得必须的课程数据:前12条（即从第0行开始读取12行）:
 	 //且最新课程（即按课程编号由大到小排序);同时还要跨表查询（同时查询course和teacher两个表
 	 
 	 let sql='SELECT cid,cname,iw_course.pic,price,tname,tid FROM iw_course,iw_teacher WHERE iw_course.teacher_id=iw_teacher.tid ORDER BY buy_count DESC LIMIT 0,12'
 	 pool.query(sql,(err,result)=>{
 		 if(err){    //数据库操作执行错误
 		     console.log('数据库查询失败！')
 			 throw err
 		 }
 		 //数据库操作顺利完成，查询结果保存在result中
 		 console.log('数据库查询成功！')
 		 // console.log(result)
 	   //将数据库返回的课程输出发送给客户端
 	   res.send(result)
 	 })
 })
app.get('/teacher/list',(req,res)=>{
	// 向数据库服务器发送查询请求，获得必须的课程数据:前12条(即从0行到第12行);且最新课程（即按课程编号由大到小排序）；
	// 同时还要跨表查询（同时查询course和teacher两个表）
	let sql='SELECT tid,pic,tname,skills,experience,style FROM iw_teacher LIMIT 0,5'
	pool.query(sql,(err,result)=>{
		if(err){    //数据库操作执行错误
		console.log('数据库查询失败！')
			throw err
			
		}
		//数据库操作顺利完成，查询结果保存在result中
		console.log('数据库查询成功!')
        // console.log(result)
		// 将数据库返回的课程输出发送给客户端
		res.send(result)
	})
	
})
app.get('/school/list',(req,res)=>{
	// 向数据库服务器发送查询请求，获得必须的课程数据:前12条(即从0行到第12行);且最新课程（即按课程编号由大到小排序）；
	// 同时还要跨表查询（同时查询course和teacher两个表）
	let sql='SELECT sid,iw_school.pic,sname,address,phone,postcode FROM iw_school LIMIT 0,5'
	pool.query(sql,(err,result)=>{
		if(err){    //数据库操作执行错误
		console.log('数据库查询失败！')
			throw err
			
		}
		//数据库操作顺利完成，查询结果保存在result中
		console.log('数据库查询成功!')
        // console.log(result)
		// 将数据库返回的课程输出发送给客户端
		res.send(result)
	})
	
})
/**API1.3:向客户端页发送课程信息，用于课程列表页
 *请求方法:GET
 *请求地址：/course/list
 *请求参数：
 *       tid:type id要查询的课程类别，如果没有指定就是想查询所有的
 *       pno:page num 要查询的分页页号，如果没有指定默认值为
 *响应数据：
 [
 	  {
 	    cid:3,
 		cname:'微信小程序开发',
 		pic:'img/course/03.jpg',
 		tname:'程涛',
		start_time:'每周一开课',
		price:599,
		duration:'2天',
		schoolList:[{sid:3,sname:'北京万寿'}]
 		
 	  },
 ]*/
//http://127.0.0.1:5050/course/list?tid=2&pno=3
app.get('/course/list', (req, res)=>{
	//①读取客户端提交的请求数据：tid和pno
	let tid = req.query.tid	//从查询字符串中读请求数据
	let pno = req.query.pno //从查询字符串中读请求数据
	if(!tid){
		tid = 0	//如果客户端未指定查询哪类课程，则返回第0类(即所有类别)
	}
	if(!pno){
		pno = 1 //如果客户端未指定查询哪页课程，默认查询第1页
	}else {
		pno = parseInt(pno)
	}
	//最终需要发送给客户端的“分页器对象”
	let output = {
		dataCount: 0,	//待查询的记录的总条数
		pageSize: 6,	//页面大小，即每页中最多可保存的记录数量
		pageCount: 0,	//满足条件的数据总页数
		pno: pno,		//待查询的页号
		list: [],		//当前页码中的数据
	}
	//②向数据库服务器发起查询语句
	//首先查询满足条件的记录的总条数
	let sql0 = 'SELECT count(*) AS c FROM  iw_course '
	if(tid !== 0){
		sql0  += '  WHERE  type_id='+tid
	}
	pool.query(sql0, (err,result)=>{
		if(err){
			throw err
		}
		//获得满足条件的总记录数量
		output.dataCount = result[0].c
		//计算总页数
		output.pageCount = Math.ceil(output.dataCount/output.pageSize)
		//查询客户端指定的页码中的数据
		let sql2 = 'SELECT cid,cname,price,start_time,duration,tname,iw_course.pic FROM iw_course, iw_teacher  WHERE  iw_teacher.tid=iw_course.teacher_id '
		if(tid!==0){
			sql2 += '  AND type_id='+tid
		}
		sql2 += '  ORDER BY cid DESC  '
		sql2 += '  LIMIT '+(pno-1)*output.pageSize + ',' + output.pageSize
		pool.query(sql2, (err, result)=>{
			if(err){
				throw err
			}
			//result就是查询的指定类别指定页码上的数据
			output.list = result
			//向客户端发送查询结果
			res.send(output)
		})
	})
})
/*
第1页: 从第0条开始，要6条，即第0/1/2/3/4/5行
第2页: 从第6条开始，要6条，即第6/7/8/9/10/11行
第3页: 从第12条开始，要6条，即第12/13/14/15/16/17行
第4页: 从第18条开始，要6条，即第18/19/20/21/22/23行
...
第x页: 从第(x-1)*6条开始，要6条，
*/
app.get('/course/base',(req,res)=>{
 	 //向数据库服务器发送查询请求，获得必须的课程数据:前12条（即从第0行开始读取12行）:
 	 //且最新课程（即按课程编号由大到小排序);同时还要跨表查询（同时查询course和teacher两个表
	 
	 let sql='SELECT * FROM iw_course Where type_id=1'
 	 pool.query(sql,(err,result)=>{
 		 if(err){    //数据库操作执行错误
 		     console.log('数据库查询失败！')
 			 throw err
 		 }
 		 //数据库操作顺利完成，查询结果保存在result中
 		 console.log('数据库查询成功！')
 		 // console.log(result)
 	   //将数据库返回的课程输出发送给客户端
 	   res.send(result)
 	 })
 })
 app.get('/course/progress',(req,res)=>{
  	 //向数据库服务器发送查询请求，获得必须的课程数据:前12条（即从第0行开始读取12行）:
  	 //且最新课程（即按课程编号由大到小排序);同时还要跨表查询（同时查询course和teacher两个表
 	 
 	 let sql='SELECT * FROM iw_course Where type_id=3'
  	 pool.query(sql,(err,result)=>{
  		 if(err){    //数据库操作执行错误
  		     console.log('数据库查询失败！')
  			 throw err
  		 }
  		 //数据库操作顺利完成，查询结果保存在result中
  		 console.log('数据库查询成功！')
  		 // console.log(result)
  	   //将数据库返回的课程输出发送给客户端
  	   res.send(result)
  	 })
  })
  app.get('/course/core',(req,res)=>{
   	 //向数据库服务器发送查询请求，获得必须的课程数据:前12条（即从第0行开始读取12行）:
   	 //且最新课程（即按课程编号由大到小排序);同时还要跨表查询（同时查询course和teacher两个表
   	 
   	 let sql='SELECT * FROM iw_course Where type_id=2'
   	 pool.query(sql,(err,result)=>{
   		 if(err){    //数据库操作执行错误
   		     console.log('数据库查询失败！')
   			 throw err
   		 }
   		 //数据库操作顺利完成，查询结果保存在result中
   		 console.log('数据库查询成功！')
   		 // console.log(result)
   	   //将数据库返回的课程输出发送给客户端
   	   res.send(result)
   	 })
   })

 /*响应数据：
 {
 	dataCount:31, //满足条件的数据的总数
 	pageSize:6, //页面大小，即每页显示的数据的条数
 	pageCount:6,
 	pno:1, //当前显示的页号
 	list:{  //用户请求的页码中的数据
 		   {
			   cid:3,
			   cname:'微信小程序开发',
			   pic:'img/course/03.jpg',
			   tname:'程涛',
			   start_time:'每周一开课',
			   price:599,
			   duration:'2天',
			   schoolList:[{sid:3,sname:'北京万寿'}]
			   
		   }
 	}
 	
 }*/
 