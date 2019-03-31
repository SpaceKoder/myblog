document.getElementById('sideNavButton').addEventListener('click', function(){
    document.getElementById('sideNav').classList.add('active');
    document.querySelector('html').classList.add('active-sidenav');
    document.querySelector('.navbar').classList.remove('fixed');

    var topSpacer = document.querySelector('.top-spacer');
    topSpacer.classList.remove('top-spacer__expand');
    if(topSpacer.hasAttribute('data-collapse') && topSpacer.getAttribute('data-collapse') == 'false'){
        topSpacer.classList.add('top-spacer__collapse');
    }

    var body = document.body;
    body.setAttribute('data-sidenav', true);
    body.setAttribute('data-overflow-x', false);
    body.setAttribute('data-overflow-y', false);
});

document.getElementById('dimmer').addEventListener('click', function(){
    document.getElementById('sideNav').classList.remove('active');
    document.querySelector('html').classList.remove('active-sidenav');

    var body = document.body;
    body.setAttribute('data-sidenav', false);
    body.setAttribute('data-overflow-y', true);
});

function bodyOverflow(){
    if(this.getAttribute('data-sidenav') == 'false'){
        document.body.setAttribute('data-overflow-x', true);
        document.querySelector('.navbar').classList.add('fixed');
        
        var topSpacer = document.querySelector('.top-spacer');
        if(topSpacer.hasAttribute('data-collapse') && topSpacer.getAttribute('data-collapse') == 'false'){
            topSpacer.classList.remove('top-spacer__collapse');
        } else {
            topSpacer.classList.add('top-spacer__expand');
        }
    }
}

document.body.addEventListener('webkitTransitionEnd', bodyOverflow);
document.body.addEventListener('mozTransitionEnd', bodyOverflow);
document.body.addEventListener('oTransitionEnd', bodyOverflow);
document.body.addEventListener('transitionend', bodyOverflow);

hljs.initHighlightingOnLoad();