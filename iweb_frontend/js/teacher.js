let url6=backendServerUrl+'/teacher/list'
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
			<div class="col-lg-2 col-md-2 col-sm-12 zpxg">
				<span class=""><img src="${c.pic}" ></span>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-12">
				<div class="xxys">
				<h3>${c.tname}</h3>
				<p>${c.skills}</p>
			    <p>工作经历：${c.experience}</p>
			    <p>授课风格：${c.style}</p>
				</div>
			</div>
			`
		})
		//把拼接到一起的12个div设置为
		teacherList.innerHTML=html
	})