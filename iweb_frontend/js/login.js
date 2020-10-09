document.querySelector('[data-toggle="ma"]').onclick = function() {
	document.querySelector('[data-target="ma"]').classList.add('active')
}

document.querySelector('[data-click="ma"]').onclick = function() {
	document.querySelector('[data-target="ma"]').classList.remove('active')
}
