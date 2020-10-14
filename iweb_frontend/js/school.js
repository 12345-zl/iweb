let url4=backendServerUrl+'/school/list'
	fetch(url4)
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
			<div class="col-lg-2 col-md-2 col-sm-12 address">
				<span class=""><img src="${c.pic}" ></span>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-12">
				<div class="map">
				<h3>${c.sname}</h3>
				<p>校区地址：${c.address}</p>
			    <p>咨询电话：${c.phone}</p>
			    <p>邮编：${c.postcode}</p>
				</div>
			</div>
			
			`
		})
		//把拼接到一起的12个div设置为
		schoolList.innerHTML=html
	})