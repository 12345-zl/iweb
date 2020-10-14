// 1.点击“查看详情”后，跳转到课程详情页，并提供当前商品的编号
//ES6提供的遍历数组
document.querySelectorAll('[data-jump-to-details]').forEach(function(e,i){
	e.onclick=function(){
		// console.dir(e)
		//准备带跳转的目标地址
		let cid=e.dataset.jumpToDetails//查找当前被点击按钮上保存的“课程编号”
		let url='course-details.html?courseId='+cid
		//跳转到课程详情页
		open(url)
		// window.open('course - details.html','_self')在当前页打开新页面
		// window.open('course-details.html','_blank')//在空白页打开新页面
		// window.open('course-details.html')//在空白页打开新页面
	}
})

/*异步请求后台数据服务器提供的API2.1,获取最新课程
	把动态服务器端返回的课程数据添加到teachershort中*/
	 
	let url6=backendServerUrl+'/course/core'
	fetch(url6)
	.then(res=>{
		// console.log(res)//res就是服务器返回的响应消息
		return res.json()//把响应消息的主体用JSON方式转换
	})
	.then(data=>{
		// console.log(data) //data就是响应消息主体内容
		//根据服务器端返回的12个课程对象，创建12个div元素
		let html=''
		data.forEach(c=>{
			html += `
			<div class="course row">
					<div class="col-sm-5 col-md-3 col-lg-3">
						<img class="pic" src="${c.pic}">
					</div>
					<div class="col-sm-7 col-md-7 col-lg-7 details">
						<h3>课程:${c.cname}</h3>
						<p>讲师:${c.tname}</p>
						<p>课时:${c.duration}</p>
						<p class="hidden-sm">开课时间：${c.start_time}</p>
						<p class="hidden-sm">上课地点：i前端各校区 查看各校区地址</p>
						<span>${c.price}.00</span>
					</div>
					<div class="col-md-2 col-lg-2 jump">
						<button data-jump-to-details="115" class="jump2details">查看详情</button>
					</div>
				</div>
			`
		})
		//把拼接到一起的12个div设置为
		courseCore.innerHTML=html
	})


 
 