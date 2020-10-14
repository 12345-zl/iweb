/*2.轮播广告*/
let currentCarousel=0  //当前正在显示哪个广告
let totalCarousel=4    //轮播广告的总数
 // 点击“下一张”按钮， 自动切换到广告中的下一条
 document.querySelector('[data-carousel="next"]').onclick=function(){
	 currentCarousel++      //切换到下一个
	 if(currentCarousel>=totalCarousel){
		 //如果已经切换到最后一张之后，必须重回到0
		 currentCarousel=0 
	 }
	 //显示新的轮播广告项，
	 //切换广告指示器的显示
	 //首先隐藏当前显示的广告项——删除active类
	 document.querySelector('.carousel>.items>li.active').classList.remove('active')
	 //然后再让目标广告项显示出来——li添加active类
	 let list=document.querySelectorAll('.carousel>.items>li')
	 list[currentCarousel].classList.add('active')
	 
	 //显示新的轮播广告项，
	 //切换广告指示器的显示
	 //首先隐藏当前显示的广告项——删除active类
	 document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
	 //然后再让当前广告项显示出来——li添加active类
	 list=document.querySelectorAll('.carousel>.indicators>li')
	 list[currentCarousel].classList.add('active')
 }
 document.querySelector('[data-carousel="prev"]').onclick=function(){
 	 currentCarousel--      //切换到下一个
 	 if(currentCarousel<0){
 		 //如果已经切换到最后一张之后，必须重回到0
 		 currentCarousel=totalCarousel-1
 	 }
 	 //显示新的轮播广告项，
 	 //首先隐藏当前显示的广告项——删除active类
 	 document.querySelector('.carousel>.items>li.active').classList.remove('active')
 	 //然后再让目标广告项显示出来——li添加active类
 	 let list=document.querySelectorAll('.carousel>.items>li')
 	 list[currentCarousel].classList.add('active')
	 
	 document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
	 //然后再让当前广告项显示出来——li添加active类
	 list=document.querySelectorAll('.carousel>.indicators>li')
	 list[currentCarousel].classList.add('active')
 }
 //点击四个“轮播指示器（小圆饼）”时，切换到对应的广告项
 let indicatorlist= document.querySelectorAll('[data-carousel-to]')
 // console.log(indicatorlist)	//类数组对象
 //循环遍历数组中的每一个元素
indicatorlist.forEach(function(e,i){
	// console.log(e,i) //e就是每个li,i是li的下标
	e.onclick=function(){
		//切换要显示的广告项
		document.querySelector('.carousel>.items>li.active').classList.remove('active')
		//提示：CSS中nth-child()下标从1开始而不是0
		document.querySelector('.carousel>.items>li:nth-child('+(i+1)+')').classList.add('active')
		//切换广告指示器的敲活项
		document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
		//提示：CSS中nth-child()下标从1开始而不是0
		document.querySelector('.carousel>.indicators>li:nth-child('+(i+1)+')').classList.add('active')
		//切换广告指示器的敲活项
	}
})	
	//让轮播广告每隔3s自动调整到下一张
	//一次性定时器
	// let timer=setTimeout()
	//周期性定时器
	let timer=setInterval(function(){
		currentCarousel++
		if(currentCarousel>=totalCarousel){
			//如果切换到最后一张之后，则从头开始轮播
			currentCarousel=0 
		}
		//切换当前显示的广告项
		document.querySelector('.carousel>.items>li.active').classList.remove('active')
		//提示：CSS中nth-child()下标从1开始而不是0
		document.querySelector('.carousel>.items>li:nth-child('+(currentCarousel+1)+')').classList.add('active')
		//切换当前广告项对应的显示器
	    document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
	    //提示：CSS中nth-child()下标从1开始而不是0
	    document.querySelector('.carousel>.indicators>li:nth-child('+(currentCarousel+1)+')').classList.add('active')
	},2000)
 
 	/*异步请求后台数据服务器提供的API1.1,获取最新课程
	把动态服务器端返回的课程数据添加到courseNewest中*/
	 /*所有页面都需要使用到的全局变量*/
	  
	let url=backendServerUrl+'/course/newest'
	fetch(url)
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
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="course">
					<a href="#" class="pic"><img src="${c.pic}"></a>
					<a href="#" class="title">${c.cname}</a>
					<a href="#" class="teacher">${c.tname}</a>
					<span class="price">${c.price}.00</span>
				</div>
			</div>
			`
		})
		//把拼接到一起的12个div设置为
		courseNewest.innerHTML=html
	})


	/*异步请求后台数据服务器提供的API1.1,获取最新课程
	把动态服务器端返回的课程数据添加到courseHottest中*/
	 
	let url2=backendServerUrl+'/course/hottest'
	fetch(url2)
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
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="course">
					<a href="#" class="pic"><img src="${c.pic}"></a>
					<a href="#" class="title">${c.cname}</a>
					<a href="#" class="teacher">${c.tname}</a>
					<span class="price">${c.price}.00</span>
				</div>
			</div>
			`
		})
		//把拼接到一起的12个div设置为
		courseHottest.innerHTML=html
	})

/*异步请求后台数据服务器提供的API2.1,获取最新课程
	把动态服务器端返回的课程数据添加到teachershort中*/
	 
	let url3=backendServerUrl+'/teacher/list'
	fetch(url3)
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
			<div class="col-lg-5-1">
				<div class="teacher-item">
				<a href="#" class="pic"><img src="${c.pic}"></a>
					<a href="" class="tname">${c.tname}</a>
					<span class="maincourse">${c.skills}</span>
				</div>
			</div>
			`
		})
		//把拼接到一起的12个div设置为
		teacherList.innerHTML=html
	})


 
 