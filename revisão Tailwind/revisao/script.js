document.querySelectorAll('.produtos-list').forEach(item => {
    item.addEventListener('click', () => {
        item.classList.add('animate-click');
        item.addEventListener('animationend', () => {
            item.classList.remove('animate-click');
        }, { once: true });
    });
});
