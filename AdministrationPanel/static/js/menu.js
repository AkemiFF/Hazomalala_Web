document.addEventListener('DOMContentLoaded', function() {
    const menuBarIcon = document.getElementById('burger-menu')
    const navBar = document.getElementById('navbar-container')
    const mainApp = document.getElementById('main-dashboard')
    const logo = document.getElementById('logo')
    const firstNav = document.getElementById("first-nav")
    const secondNav = document.getElementById("second-nav")
    const linkConfigure = document.getElementById("link-configure")
    const hovers = document.querySelectorAll('.bg-hover')
    const iconDowns = document.querySelectorAll('i.fa.fa-chevron-down.icon-down')  
    const navIcons = document.querySelectorAll('#second-nav a')
    const commandContainer = document.getElementById('command-container')
    const productContainer = document.getElementById('product-container')
    const userContainer = document.getElementById('user-container')
    const pharmaContainer = document.getElementById('pharma-container')

    menuBarIcon.addEventListener('click', function() {
        if(navBar.classList.contains("menu-block")) {
            navBar.classList.add("menu-collapse")
            navBar.classList.remove("menu-block")
            mainApp.classList.remove("main-dashboard")
            mainApp.classList.add("main-responsive")
            firstNav.classList.remove("d-block")
            firstNav.style.transition = "all 0.3s linear"
            firstNav.classList.add("d-none")
            secondNav.classList.remove("d-none")
            secondNav.style.transition = "all 0.3s linear"
            secondNav.classList.add("d-block")
            logo.classList.remove("logo-show")
            logo.classList.add("logo-collapse")
        } else {
            navBar.classList.remove("menu-collapse")
            navBar.classList.add("menu-block")
            mainApp.classList.add("main-dashboard")
            mainApp.classList.remove("main-responsive")
            secondNav.classList.remove("d-block")
            secondNav.style.transition = "all 0.3s linear"
            secondNav.classList.add("d-none")
            firstNav.classList.remove("d-none")
            firstNav.style.transition = "all 0.3s linear"
            firstNav.classList.add("d-block")
            logo.classList.remove("logo-collapse")
            logo.classList.add("logo-show")
        }
    })


hovers[0].addEventListener("mouseenter", function() {
    if(!hovers[0].classList.contains("hovered") && !iconDowns[0].classList.add("icon-down-hidden")) {
        iconDowns[0].classList.remove('icon-down-hidden')
        iconDowns[0].classList.add('icon-down-show')
        hovers[0].classList.add('hovered')
    }
    hovers[0].addEventListener("mouseleave", function() {
        if(hovers[0].classList.contains("hovered")) {
            hovers[0].classList.remove("hovered")
            iconDowns[0].classList.remove("icon-down-show")
            iconDowns[0].classList.add("icon-down-hidden")
        }
    })
})

hovers[1].addEventListener("mouseenter", function() {
    if(!hovers[1].classList.contains("hovered") && !iconDowns[1].classList.add("icon-down-hidden")) {
        iconDowns[1].classList.remove('icon-down-hidden')
        iconDowns[1].classList.add('icon-down-show')
        hovers[1].classList.add('hovered')
    }
    hovers[1].addEventListener("mouseleave", function() {
        if(hovers[1].classList.contains("hovered")) {
            hovers[1].classList.remove("hovered")
            iconDowns[1].classList.remove("icon-down-show")
            iconDowns[1].classList.add("icon-down-hidden")
        }
    })
})

hovers[2].addEventListener("mouseenter", function() {
    if(!hovers[2].classList.contains("hovered") && !iconDowns[2].classList.add("icon-down-hidden")) {
        iconDowns[2].classList.remove('icon-down-hidden')
        iconDowns[2].classList.add('icon-down-show')
        hovers[2].classList.add('hovered')
    }
    hovers[2].addEventListener("mouseleave", function() {
        if(hovers[2].classList.contains("hovered")) {
            hovers[2].classList.remove("hovered")
            iconDowns[2].classList.remove("icon-down-show")
            iconDowns[2].classList.add("icon-down-hidden")
        }
    })
})

hovers[3].addEventListener("mouseenter", function() {
    if(!hovers[3].classList.contains("hovered") && !iconDowns[3].classList.add("icon-down-hidden")) {
        iconDowns[3].classList.remove('icon-down-hidden')
        iconDowns[3].classList.add('icon-down-show')
        hovers[3].classList.add('hovered')
    }
    hovers[3].addEventListener("mouseleave", function() {
        if(hovers[3].classList.contains("hovered")) {
            hovers[3].classList.remove("hovered")
            iconDowns[3].classList.remove("icon-down-show")
            iconDowns[3].classList.add("icon-down-hidden")
        }
    })
})


iconDowns[0].addEventListener('click', function(e) {
    e.preventDefault()
    const links1 = document.querySelectorAll('.link-hover1')
    links1.forEach(link1 => {
        showLinks(link1, "-5rem")
    })
}) 

iconDowns[1].addEventListener('click', function(e) {
    e.preventDefault()
    const links2 = document.querySelectorAll('.link-hover2')
    links2.forEach(link2 => {
        showLinks(link2, "-5rem")
    })
}) 

iconDowns[2].addEventListener('click', function(e) {
    e.preventDefault()
    const links3 = document.querySelectorAll('.link-hover3')
    links3.forEach(link3 => {
        showLinks(link3, "-6rem")
    })
}) 

iconDowns[3].addEventListener('click', function(e) {
    e.preventDefault()
    const links4 = document.querySelectorAll('.link-hover4')
    links4.forEach(link4 => {
        showLinks(link4, "-5rem")
    })
}) 

function showLinks(link, margin) {
    if(link.classList.contains("a-collapse")) {
        link.classList.remove("a-collapse")
        link.classList.add("a-visible")
        linkConfigure.style.marginTop = margin
        linkConfigure.style.transition = "all 0.2s linear"
        setTimeout(() => {
            link.classList.remove("a-visible")
            link.classList.add("a-show")
        }, 300);
    } else {
        link.classList.remove("a-show")
        link.classList.add("a-hidden")
        linkConfigure.style.marginTop = "0rem";
        linkConfigure.style.transition = "all 0.2s linear"
        setTimeout(() => {
            link.classList.remove("a-hidden")
            link.classList.add("a-collapse")
        }, 200);
    }
}

navIcons[1].addEventListener("mouseenter", function() {
    if(commandContainer.classList.contains("nav-icon-hidden")) {
        if(productContainer.classList.contains("nav-icon-show")) {
            productContainer.classList.remove("nav-icon-show")
            productContainer.classList.add("nav-icon-hidden")
        } else if (userContainer.classList.contains("nav-icon-show")){
            userContainer.classList.remove("nav-icon-show")
            userContainer.classList.add("nav-icon-hidden")
        } else if (pharmaContainer.classList.contains("nav-icon-show")) {
            pharmaContainer.classList.remove("nav-icon-show")
            pharmaContainer.classList.add("nav-icon-hidden")
        }
        commandContainer.classList.remove('nav-icon-hidden')
        commandContainer.classList.add('nav-icon-show')
    }
    commandContainer.addEventListener("mouseleave", function() {
        if(commandContainer.classList.contains("nav-icon-show")) {
            commandContainer.classList.remove("nav-icon-show")
            commandContainer.classList.add("nav-icon-hidden")
        }
    })
})

navIcons[2].addEventListener("mouseenter", function() {
    if(productContainer.classList.contains("nav-icon-hidden")) {
        if(commandContainer.classList.contains("nav-icon-show")) {
            commandContainer.classList.remove("nav-icon-show")
            commandContainer.classList.add("nav-icon-hidden")
        } else if (userContainer.classList.contains("nav-icon-show")){
            userContainer.classList.remove("nav-icon-show")
            userContainer.classList.add("nav-icon-hidden")
        } else if(pharmaContainer.classList.contains("nav-icon-show")) {
            pharmaContainer.classList.remove("nav-icon-show")
            pharmaContainer.classList.add("nav-icon-hidden")
        } 
        productContainer.classList.remove('nav-icon-hidden')
        productContainer.classList.add('nav-icon-show')
    }
    productContainer.addEventListener("mouseleave", function() {
        if(productContainer.classList.contains("nav-icon-show")) {
            productContainer.classList.remove("nav-icon-show")
            productContainer.classList.add("nav-icon-hidden")
        }
    })
})

navIcons[3].addEventListener("mouseenter", function() {
    if(commandContainer.classList.contains("nav-icon-hidden")) {
        if(commandContainer.classList.contains("nav-icon-show")) {
            commandContainer.classList.remove("nav-icon-show")
            commandContainer.classList.add("nav-icon-hidden")
        } else if (productContainer.classList.contains("nav-icon-show")){
            productContainer.classList.remove("nav-icon-show")
            productContainer.classList.add("nav-icon-hidden")
        } else if (pharmaContainer.classList.contains("nav-icon-show")) {
            pharmaContainer.classList.remove("nav-icon-show")
            pharmaContainer.classList.add("nav-icon-hidden")
        }
        userContainer.classList.remove('nav-icon-hidden')
        userContainer.classList.add('nav-icon-show')
    }
    userContainer.addEventListener("mouseleave", function() {
        if(userContainer.classList.contains("nav-icon-show")) {
            userContainer.classList.remove("nav-icon-show")
            userContainer.classList.add("nav-icon-hidden")
        }
    })
})

navIcons[4].addEventListener("mouseenter", function() {
    if(pharmaContainer.classList.contains("nav-icon-hidden")) {
        if(commandContainer.classList.contains("nav-icon-show")) {
            commandContainer.classList.remove("nav-icon-show")
            commandContainer.classList.add("nav-icon-hidden")
        } else if (productContainer.classList.contains("nav-icon-show")){
            productContainer.classList.remove("nav-icon-show")
            productContainer.classList.add("nav-icon-hidden")
        } else if (userContainer.classList.contains("nav-icon-show")) {
            userContainer.classList.remove("nav-icon-show")
            userContainer.classList.add("nav-icon-hidden")
        }
        pharmaContainer.classList.remove('nav-icon-hidden')
        pharmaContainer.classList.add('nav-icon-show')
    }
    pharmaContainer.addEventListener("mouseleave", function() {
        if(pharmaContainer.classList.contains("nav-icon-show")) {
            pharmaContainer.classList.remove("nav-icon-show")
            pharmaContainer.classList.add("nav-icon-hidden")
        }
    })
})

})
