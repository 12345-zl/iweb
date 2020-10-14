
//后台API服务器的地址
	  let backendServerUrl='Http://127.0.0.1:5050'
	  //提示：部署到云服务器后，此地址
/*响应式导航条：点击汉堡包按钮时导航菜单从左侧进入 反之点击关闭按钮导航隐藏在左侧*/
document.querySelector('[data-toggle="nav"]').onclick = function() {
	document.querySelector('[data-target="nav"]').classList.add('active')
}

document.querySelector('[data-click="nav"]').onclick = function() {
	document.querySelector('[data-target="nav"]').classList.remove('active')
}
