/* 1.点击“查看详情”时跳转到课程详情页，并提供商品的编号 */
document.querySelectorAll('[data-jump-to-details]').forEach(function(e,i){
	e.onclick=function(){
		// 准备待跳转的目标地址
		let cid=e.dataset.jumpToDetails     //查找当前被点击的按钮上保存的“课程编号”
		let url='course-details.html?courseId='+cid
		//
		//跳转到课程详情页
		open(url)
		// window.open('course-details.html','_self')//在当前页打开新页面
		// window.open('course-details.html','_blank')//在空白页打开新页面
		// window.open('course-details.html')// 在空白页打开新页面
	}
	
})