<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

:root{
    --primary:#6d5dfc;
    --primary-dark:#5748e8;
    --secondary:#8b5cf6;
    --text:#17172b;
    --muted:#77778a;
    --bg:#f6f7fb;
    --card:#ffffff;
    --border:#e9e9f1;
    --success:#20b26b;
    --danger:#ef476f;
    --warning:#f59e0b;
    --dark:#161625;
    --shadow:0 10px 30px rgba(40,35,90,.08);
    --radius:18px;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Inter,Arial,sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.5;
}

body.dark{
    --text:#f7f7ff;
    --muted:#aaaabd;
    --bg:#11111d;
    --card:#1b1b2a;
    --border:#303044;
    --shadow:0 10px 30px rgba(0,0,0,.25);
}

button,
input,
select{
    font-family:inherit;
}

button{
    border:0;
    cursor:pointer;
}

a{
    text-decoration:none;
    color:inherit;
}

.container{
    width:min(1250px,calc(100% - 32px));
    margin:auto;
}

/* ================= TOP STRIP ================= */

.top-strip{
    background:#17172b;
    color:#fff;
    font-size:12px;
    padding:9px 0;
}

.top-strip-inner{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

/* ================= HEADER ================= */

header{
    background:var(--card);
    position:sticky;
    top:0;
    z-index:1000;
    border-bottom:1px solid var(--border);
}

.header{
    height:76px;
    display:flex;
    align-items:center;
    gap:25px;
}

/* LOGO */

.logo{
    display:flex;
    align-items:center;
    gap:10px;
    font-size:21px;
    font-weight:800;
    min-width:max-content;
}

.logo-box{
    width:42px;
    height:42px;
    border-radius:13px;
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    color:white;
    display:grid;
    place-items:center;
}

.logo span{
    color:var(--primary);
}

/* SEARCH */

.search{
    flex:1;
    max-width:600px;
    height:46px;
    display:flex;
    background:var(--bg);
    border:1px solid var(--border);
    border-radius:12px;
    overflow:hidden;
}

.search select{
    border:0;
    background:transparent;
    padding:0 12px;
    color:var(--muted);
    outline:none;
}

.search input{
    flex:1;
    border:0;
    outline:none;
    background:transparent;
    padding:0 10px;
    color:var(--text);
}

.search button{
    width:50px;
    background:var(--primary);
    color:#fff;
}

.search button:hover{
    background:var(--primary-dark);
}

/* HEADER ACTIONS */

.header-actions{
    margin-left:auto;
    display:flex;
    gap:8px;
}

.header-btn{
    width:44px;
    height:44px;
    border-radius:12px;
    background:transparent;
    color:var(--text);
    position:relative;
}

.header-btn:hover{
    background:var(--bg);
}

.badge{
    position:absolute;
    top:-2px;
    right:-2px;
    min-width:18px;
    height:18px;
    padding:0 5px;
    border-radius:20px;
    background:var(--danger);
    color:#fff;
    font-size:10px;
    font-weight:700;
    display:grid;
    place-items:center;
}

/* NAV */

.nav{
    border-top:1px solid var(--border);
}

.nav-inner{
    height:48px;
    display:flex;
    align-items:center;
    gap:30px;
}

.nav a{
    color:var(--muted);
    font-size:13px;
    font-weight:600;
}

.nav a:hover,
.nav a.active{
    color:var(--primary);
}

/* MOBILE MENU */

.menu-btn{
    display:none;
    width:42px;
    height:42px;
    background:var(--bg);
    border-radius:10px;
}

/* ================= HERO ================= */

.hero{
    padding:28px 0;
}

.hero-box{
    min-height:430px;
    border-radius:25px;
    overflow:hidden;
    position:relative;
    display:flex;
    align-items:center;
    background:
    linear-gradient(90deg,
    rgba(24,20,55,.96),
    rgba(24,20,55,.58)),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
    center/cover;
}

.hero-content{
    color:#fff;
    max-width:620px;
    padding:55px;
}

.hero-tag{
    display:inline-flex;
    align-items:center;
    gap:7px;
    background:rgba(255,255,255,.12);
    border:1px solid rgba(255,255,255,.15);
    padding:8px 14px;
    border-radius:30px;
    font-size:12px;
    margin-bottom:20px;
}

.hero h1{
    font-size:50px;
    line-height:1.08;
    margin-bottom:18px;
}

.hero p{
    color:rgba(255,255,255,.78);
    font-size:15px;
    max-width:540px;
    margin-bottom:28px;
}

.hero-buttons{
    display:flex;
    gap:10px;
}

.btn{
    min-height:46px;
    padding:0 22px;
    border-radius:11px;
    font-weight:700;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:8px;
}

.btn-primary{
    background:var(--primary);
    color:#fff;
}

.btn-primary:hover{
    background:var(--primary-dark);
}

.btn-light{
    background:#fff;
    color:#17172b;
}

/* HERO STATS */

.hero-stats{
    position:absolute;
    bottom:25px;
    right:30px;
    display:flex;
    gap:10px;
}

.stat{
    background:rgba(255,255,255,.12);
    backdrop-filter:blur(10px);
    border:1px solid rgba(255,255,255,.16);
    padding:13px 17px;
    border-radius:13px;
    color:white;
}

.stat strong{
    display:block;
    font-size:17px;
}

.stat span{
    font-size:10px;
    opacity:.7;
}

/* ================= SECTION ================= */

.section{
    padding:35px 0;
}

.section-head{
    display:flex;
    justify-content:space-between;
    align-items:end;
    margin-bottom:20px;
}

.section-head h2{
    font-size:24px;
}

.section-head p{
    color:var(--muted);
    font-size:13px;
    margin-top:3px;
}

.view{
    color:var(--primary);
    font-size:13px;
    font-weight:700;
}

/* ================= CATEGORIES ================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category{
    background:var(--card);
    border:1px solid var(--border);
    border-radius:18px;
    padding:18px 10px;
    text-align:center;
    transition:.25s;
}

.category:hover{
    transform:translateY(-4px);
    border-color:var(--primary);
    box-shadow:var(--shadow);
}

.category-img{
    width:65px;
    height:65px;
    margin:auto auto 12px;
    border-radius:50%;
    overflow:hidden;
}

.category-img img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.category h4{
    font-size:13px;
}

.category small{
    color:var(--muted);
    font-size:10px;
}

/* ================= FILTER ================= */

.filter-wrapper{
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:15px;
    margin-bottom:22px;
}

.filters{
    display:flex;
    gap:8px;
    overflow:auto;
}

.filter{
    white-space:nowrap;
    padding:9px 16px;
    border-radius:30px;
    background:var(--card);
    border:1px solid var(--border);
    color:var(--muted);
    font-size:12px;
    font-weight:600;
}

.filter:hover,
.filter.active{
    background:var(--primary);
    color:#fff;
    border-color:var(--primary);
}

.sort{
    border:1px solid var(--border);
    background:var(--card);
    color:var(--text);
    padding:10px 13px;
    border-radius:9px;
}

/* ================= PRODUCTS ================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product{
    background:var(--card);
    border:1px solid var(--border);
    border-radius:18px;
    overflow:hidden;
    transition:.25s;
}

.product:hover{
    transform:translateY(-5px);
    box-shadow:var(--shadow);
}

.product-image{
    height:235px;
    position:relative;
    background:var(--bg);
    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.4s;
}

.product:hover img{
    transform:scale(1.05);
}

.product-label{
    position:absolute;
    left:12px;
    top:12px;
    padding:6px 9px;
    border-radius:7px;
    background:var(--primary);
    color:white;
    font-size:9px;
    font-weight:800;
    text-transform:uppercase;
}

.product-label.sale{
    background:var(--success);
}

.wish{
    position:absolute;
    right:12px;
    top:12px;
    width:36px;
    height:36px;
    border-radius:50%;
    background:#fff;
    color:#777;
    display:grid;
    place-items:center;
}

.wish.active{
    color:var(--danger);
}

.product-body{
    padding:16px;
}

.product-category{
    font-size:10px;
    text-transform:uppercase;
    color:var(--muted);
    font-weight:700;
}

.product-title{
    margin:5px 0;
    font-size:14px;
    font-weight:700;
}

.rating{
    color:var(--warning);
    font-size:12px;
}

.rating span{
    color:var(--muted);
    margin-left:4px;
}

.price{
    margin-top:8px;
    display:flex;
    align-items:center;
    gap:8px;
}

.current{
    font-size:18px;
    font-weight:800;
}

.old{
    color:var(--muted);
    font-size:11px;
    text-decoration:line-through;
}

.product-bottom{
    display:flex;
    gap:7px;
    margin-top:13px;
}

.add{
    flex:1;
    height:40px;
    border-radius:9px;
    background:var(--text);
    color:var(--card);
    font-weight:700;
    font-size:12px;
}

.add:hover{
    background:var(--primary);
    color:#fff;
}

.eye{
    width:40px;
    height:40px;
    border-radius:9px;
    border:1px solid var(--border);
    background:var(--card);
    color:var(--text);
}

/* ================= DEAL ================= */

.deal{
    margin-top:15px;
    border-radius:22px;
    overflow:hidden;
    display:grid;
    grid-template-columns:1fr 1fr;
    background:#17172b;
    color:#fff;
}

.deal-photo{
    min-height:360px;
    background:
    url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85")
    center/cover;
}

.deal-content{
    padding:45px;
    display:flex;
    justify-content:center;
    flex-direction:column;
}

.deal-tag{
    color:#a99eff;
    text-transform:uppercase;
    font-size:11px;
    font-weight:800;
}

.deal h2{
    font-size:34px;
    margin:8px 0;
}

.deal p{
    color:#aaaabe;
    font-size:13px;
    max-width:420px;
}

.deal-price{
    font-size:32px;
    font-weight:800;
    margin-top:14px;
}

.deal-price del{
    color:#77778a;
    font-size:14px;
    margin-left:7px;
}

.timer{
    display:flex;
    gap:8px;
    margin:20px 0;
}

.timer-box{
    width:60px;
    height:58px;
    border-radius:10px;
    background:#24243a;
    display:grid;
    place-items:center;
}

.timer-box strong{
    font-size:17px;
}

.timer-box small{
    font-size:8px;
    color:#9999ac;
}

/* ================= FEATURES ================= */

.features{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:14px;
}

.feature{
    background:var(--card);
    border:1px solid var(--border);
    border-radius:15px;
    padding:20px;
    display:flex;
    gap:14px;
    align-items:center;
}

.feature-icon{
    width:44px;
    height:44px;
    border-radius:12px;
    background:#efedff;
    color:var(--primary);
    display:grid;
    place-items:center;
}

body.dark .feature-icon{
    background:#302d50;
}

.feature h4{
    font-size:12px;
}

.feature p{
    font-size:10px;
    color:var(--muted);
}

/* ================= REVIEWS ================= */

.reviews{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:16px;
}

.review{
    background:var(--card);
    border:1px solid var(--border);
    padding:23px;
    border-radius:17px;
}

.stars{
    color:var(--warning);
    font-size:13px;
    margin-bottom:12px;
}

.review p{
    font-size:13px;
    color:var(--muted);
    margin-bottom:18px;
}

.user{
    display:flex;
    align-items:center;
    gap:10px;
}

.user img{
    width:42px;
    height:42px;
    border-radius:50%;
    object-fit:cover;
}

.user strong{
    display:block;
    font-size:12px;
}

.user small{
    color:var(--muted);
    font-size:10px;
}

/* ================= NEWSLETTER ================= */

.newsletter{
    margin-top:20px;
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    color:white;
    border-radius:22px;
    padding:40px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:25px;
}

.newsletter h2{
    font-size:25px;
}

.newsletter p{
    opacity:.75;
    font-size:12px;
    margin-top:5px;
}

.newsletter-form{
    display:flex;
    width:420px;
}

.newsletter-form input{
    flex:1;
    height:46px;
    border:0;
    outline:0;
    padding:0 15px;
    border-radius:9px 0 0 9px;
}

.newsletter-form button{
    padding:0 20px;
    background:#17172b;
    color:white;
    border-radius:0 9px 9px 0;
    font-weight:700;
}

/* ================= FOOTER ================= */

footer{
    margin-top:45px;
    background:#17172b;
    color:#fff;
    padding:45px 0 20px;
}

.footer{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:40px;
}

.footer-logo{
    font-size:20px;
    font-weight:800;
    margin-bottom:10px;
}

.footer-logo span{
    color:#a99eff;
}

.footer-about{
    color:#9999ac;
    font-size:12px;
    max-width:300px;
}

.footer h4{
    font-size:13px;
    margin-bottom:14px;
}

.footer ul{
    list-style:none;
}

.footer li{
    margin-bottom:8px;
}

.footer li a{
    color:#9999ac;
    font-size:11px;
}

.footer li a:hover{
    color:#fff;
}

.social{
    display:flex;
    gap:7px;
    margin-top:15px;
}

.social a{
    width:34px;
    height:34px;
    background:#24243a;
    border-radius:8px;
    display:grid;
    place-items:center;
}

.copyright{
    border-top:1px solid #303044;
    margin-top:35px;
    padding-top:18px;
    text-align:center;
    color:#77778a;
    font-size:10px;
}

/* ================= CART ================= */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.5);
    opacity:0;
    pointer-events:none;
    transition:.3s;
    z-index:2000;
}

.overlay.open{
    opacity:1;
    pointer-events:auto;
}

.cart{
    position:fixed;
    right:-430px;
    top:0;
    width:410px;
    max-width:100%;
    height:100vh;
    background:var(--card);
    z-index:2001;
    transition:.3s;
    display:flex;
    flex-direction:column;
}

.cart.open{
    right:0;
}

.cart-head{
    height:70px;
    border-bottom:1px solid var(--border);
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:0 20px;
}

.cart-head button{
    width:36px;
    height:36px;
    border-radius:9px;
    background:var(--bg);
    color:var(--text);
}

.cart-list{
    flex:1;
    overflow:auto;
    padding:18px;
}

.empty{
    text-align:center;
    color:var(--muted);
    padding:70px 15px;
}

.empty i{
    font-size:45px;
    margin-bottom:15px;
}

.cart-item{
    display:flex;
    gap:12px;
    padding:13px 0;
    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:65px;
    height:65px;
    object-fit:cover;
    border-radius:10px;
}

.cart-info{
    flex:1;
}

.cart-info h4{
    font-size:12px;
}

.cart-info p{
    color:var(--primary);
    font-weight:800;
    font-size:12px;
    margin-top:5px;
}

.remove{
    background:none;
    color:var(--muted);
}

.cart-footer{
    border-top:1px solid var(--border);
    padding:20px;
}

.total{
    display:flex;
    justify-content:space-between;
    font-weight:800;
    margin-bottom:14px;
}

.checkout{
    width:100%;
    height:48px;
    border-radius:10px;
    background:var(--primary);
    color:white;
    font-weight:800;
}

/* ================= TOAST ================= */

.toast{
    position:fixed;
    right:20px;
    bottom:20px;
    background:#17172b;
    color:white;
    padding:13px 18px;
    border-radius:10px;
    font-size:12px;
    transform:translateY(100px);
    opacity:0;
    transition:.3s;
    z-index:5000;
}

.toast.show{
    transform:translateY(0);
    opacity:1;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1050px){

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .features{
        grid-template-columns:repeat(2,1fr);
    }

    .hero-stats{
        display:none;
    }
}

@media(max-width:800px){

    .top-strip{
        display:none;
    }

    .menu-btn{
        display:block;
    }

    .header{
        height:auto;
        min-height:70px;
        flex-wrap:wrap;
        padding:10px 0 65px;
    }

    .search{
        position:absolute;
        top:68px;
        left:16px;
        right:16px;
        max-width:none;
    }

    .nav{
        display:none;
    }

    .hero-content{
        padding:35px 25px;
    }

    .hero h1{
        font-size:38px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal-photo{
        min-height:230px;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .newsletter{
        flex-direction:column;
        align-items:stretch;
    }

    .newsletter-form{
        width:100%;
    }

    .footer{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:500px){

    .container{
        width:min(100% - 22px,1250px);
    }

    .logo{
        font-size:17px;
    }

    .logo-box{
        width:37px;
        height:37px;
    }

    .header-actions{
        gap:2px;
    }

    .header-btn{
        width:38px;
    }

    .hero{
        padding-top:15px;
    }

    .hero-box{
        min-height:420px;
    }

    .hero h1{
        font-size:30px;
    }

    .hero-buttons{
        flex-direction:column;
    }

    .hero-buttons .btn{
        width:100%;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .product-image{
        height:170px;
    }

    .product-body{
        padding:12px;
    }

    .product-title{
        font-size:12px;
    }

    .current{
        font-size:16px;
    }

    .eye{
        display:none;
    }

    .deal-content{
        padding:28px 20px;
    }

    .features{
        grid-template-columns:1fr;
    }

    .newsletter{
        padding:28px 20px;
    }

    .newsletter-form{
        flex-direction:column;
        gap:8px;
    }

    .newsletter-form input,
    .newsletter-form button{
        height:44px;
        border-radius:8px;
    }

    .footer{
        grid-template-columns:1fr;
    }
}

</style>

</head>

<body>

<!-- TOP -->

<div class="top-strip">
    <div class="container top-strip-inner">
        <span>Free delivery on orders above $50</span>
        <span>Secure shopping • 24/7 support</span>
    </div>
</div>

<!-- HEADER -->

<header>

<div class="container header">

<button class="menu-btn" id="menuBtn">
    <i class="fas fa-bars"></i>
</button>

<a href="#" class="logo">
    <div class="logo-box">
        <i class="fas fa-bag-shopping"></i>
    </div>
    Nexus<span>Shop</span>
</a>

<div class="search">

<select id="searchCategory">
    <option value="">All</option>
    <option value="Smartphones">Phones</option>
    <option value="Laptops">Laptops</option>
    <option value="Gadgets">Gadgets</option>
    <option value="Footwear">Shoes</option>
    <option value="Accessories">Accessories</option>
</select>

<input
id="searchInput"
type="search"
placeholder="Search products..."

>

<button id="searchBtn">
    <i class="fas fa-search"></i>
</button>

</div>

<div class="header-actions">

<button class="header-btn" id="themeBtn">
    <i class="far fa-moon"></i>
</button>

<button class="header-btn">
    <i class="far fa-user"></i>
</button>

<button class="header-btn">
    <i class="far fa-heart"></i>
    <span class="badge" id="wishCount">0</span>
</button>

<button class="header-btn" id="cartBtn">
    <i class="fas fa-shopping-bag"></i>
    <span class="badge" id="cartCount">0</span>
</button>

</div>

</div>

<nav class="nav">

<div class="container nav-inner">

<a href="#" class="active">Home</a> <a href="#categories">Categories</a> <a href="#products">Shop</a> <a href="#deals">Deals</a> <a href="#reviews">Reviews</a>

</div>

</nav>

</header>

<main>

<!-- HERO -->

<section class="hero">

<div class="container">

<div class="hero-box">

<div class="hero-content">

<div class="hero-tag">
<i class="fas fa-sparkles"></i>
New Collection 2026
</div>

<h1>
Shop smarter.<br>
Live better.
</h1>

<p>
Discover technology, fashion, accessories and everyday
essentials — all carefully selected for you.
</p>

<div class="hero-buttons">

<button class="btn btn-primary" id="shopBtn">
Start Shopping
<i class="fas fa-arrow-right"></i>
</button>

<button class="btn btn-light" id="dealBtn">
View Deals
</button>

</div>

</div>

<div class="hero-stats">

<div class="stat">
<strong>10K+</strong>
<span>Products</span>
</div>

<div class="stat">
<strong>25K+</strong>
<span>Customers</span>
</div>

<div class="stat">
<strong>4.9/5</strong>
<span>Rating</span>
</div>

</div>

</div>

</div>

</section>

<!-- CATEGORIES -->

<section class="section" id="categories">

<div class="container">

<div class="section-head">

<div>
<h2>Browse Categories</h2>
<p>Find exactly what you're looking for</p>
</div>

<a class="view" href="#products">
View all →
</a>

</div>

<div class="categories" id="categoriesGrid"></div>

</div>

</section>

<!-- PRODUCTS -->

<section class="section" id="products">

<div class="container">

<div class="section-head">

<div>
<h2>Popular Products</h2>
<p>Hand-picked products customers love</p>
</div>

</div>

<div class="filter-wrapper">

<div class="filters">

<button class="filter active" data-filter="All">All</button> <button class="filter" data-filter="Smartphones">Phones</button> <button class="filter" data-filter="Laptops">Laptops</button> <button class="filter" data-filter="Gadgets">Gadgets</button> <button class="filter" data-filter="Footwear">Shoes</button> <button class="filter" data-filter="Accessories">Accessories</button>

</div>

<select class="sort" id="sort">
<option value="default">Sort</option>
<option value="low">Price: Low</option>
<option value="high">Price: High</option>
</select>

</div>

<div class="products" id="productsGrid"></div>

</div>

</section>

<!-- DEAL -->

<section class="container" id="deals">

<div class="deal">

<div class="deal-photo"></div>

<div class="deal-content">

<span class="deal-tag">
Limited Time Deal
</span>

<h2>MacBook Air M2</h2>

<p>
Powerful performance in an incredibly thin design.
Grab today's special offer before it ends.
</p>

<div class="deal-price">
$999
<del>$1,199</del>
</div>

<div class="timer">

<div class="timer-box">
<strong id="days">00</strong>
<small>DAYS</small>
</div>

<div class="timer-box">
<strong id="hours">00</strong>
<small>HOURS</small>
</div>

<div class="timer-box">
<strong id="minutes">00</strong>
<small>MINS</small>
</div>

<div class="timer-box">
<strong id="seconds">00</strong>
<small>SECS</small>
</div>

</div>

<button class="btn btn-primary" id="dealCart">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

</div>

</div>

</section>

<!-- FEATURES -->

<section class="container section">

<div class="features">

<div class="feature">
<div class="feature-icon">
<i class="fas fa-truck-fast"></i>
</div>
<div>
<h4>Fast Delivery</h4>
<p>Quick doorstep delivery</p>
</div>
</div>

<div class="feature">
<div class="feature-icon">
<i class="fas fa-rotate-left"></i>
</div>
<div>
<h4>Easy Returns</h4>
<p>30-day return policy</p>
</div>
</div>

<div class="feature">
<div class="feature-icon">
<i class="fas fa-shield-halved"></i>
</div>
<div>
<h4>Secure Payment</h4>
<p>100% protected checkout</p>
</div>
</div>

<div class="feature">
<div class="feature-icon">
<i class="fas fa-headset"></i>
</div>
<div>
<h4>24/7 Support</h4>
<p>We're here to help</p>
</div>
</div>

</div>

</section>

<!-- REVIEWS -->

<section class="section" id="reviews">

<div class="container">

<div class="section-head">

<div>
<h2>Happy Customers</h2>
<p>What shoppers say about us</p>
</div>

</div>

<div class="reviews">

<div class="review">

<div class="stars">★★★★★</div>

<p>
"Very easy website to use. My order arrived quickly
and the product quality was excellent."
</p>

<div class="user">

<img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80">

<div>
<strong>Sarah Wilson</strong>
<small>Verified Buyer</small>
</div>

</div>

</div>

<div class="review">

<div class="stars">★★★★★</div>

<p>
"Great prices and a really smooth shopping experience.
I will definitely order again."
</p>

<div class="user">

<img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80">

<div>
<strong>David Miller</strong>
<small>Verified Buyer</small>
</div>

</div>

</div>

<div class="review">

<div class="stars">★★★★★</div>

<p>
"Beautiful products, fast delivery and very helpful
customer support."
</p>

<div class="user">

<img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80">

<div>
<strong>Emma Taylor</strong>
<small>Verified Buyer</small>
</div>

</div>

</div>

</div>

</div>

</section>

<!-- NEWSLETTER -->

<section class="container">

<div class="newsletter">

<div>

<h2>Don't miss a deal.</h2>

<p>
Get exclusive discounts and new product updates.
</p>

</div>

<form class="newsletter-form" id="newsletterForm">

<input
type="email"
id="email"
placeholder="Your email address"
required

>

<button>
Subscribe
</button>

</form>

</div>

</section>

</main>

<!-- FOOTER -->

<footer>

<div class="container">

<div class="footer">

<div>

<div class="footer-logo">
Nexus<span>Shop</span>
</div>

<p class="footer-about">
A modern shopping destination for technology,
fashion, accessories and everyday essentials.
</p>

<div class="social">

<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i class="fab fa-instagram"></i></a> <a href="#"><i class="fab fa-x-twitter"></i></a> <a href="#"><i class="fab fa-youtube"></i></a>

</div>

</div>

<div>

<h4>Shop</h4>

<ul>
<li><a href="#products">All Products</a></li>
<li><a href="#products">New Arrivals</a></li>
<li><a href="#deals">Deals</a></li>
<li><a href="#categories">Categories</a></li>
</ul>

</div>

<div>

<h4>Support</h4>

<ul>
<li><a href="#">Contact Us</a></li>
<li><a href="#">Shipping</a></li>
<li><a href="#">Returns</a></li>
<li><a href="#">FAQ</a></li>
</ul>

</div>

<div>

<h4>Company</h4>

<ul>
<li><a href="#">About</a></li>
<li><a href="#">Careers</a></li>
<li><a href="#">Privacy</a></li>
<li><a href="#">Terms</a></li>
</ul>

</div>

</div>

<div class="copyright">
© <span id="year"></span> NexusShop. All rights reserved.
</div>

</div>

</footer>

<!-- CART -->

<div class="overlay" id="overlay"></div>

<aside class="cart" id="cart">

<div class="cart-head">

<h3>
Cart (<span id="cartItemsCount">0</span>)
</h3>

<button id="closeCart">
<i class="fas fa-xmark"></i>
</button>

</div>

<div class="cart-list" id="cartList">

<div class="empty">

<i class="fas fa-bag-shopping"></i>

<h3>Your cart is empty</h3>

<p>Add something you love.</p>

</div>

</div>

<div class="cart-footer">

<div class="total">

<span>Total</span>

<span id="total">
$0
</span>

</div>

<button class="checkout" id="checkout">
Proceed to Checkout
</button>

</div>

</aside>

<div class="toast" id="toast"></div>

<script>

/* ================= DATA ================= */

const categories = [

{
name:"Smartphones",
count:24,
img:"https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=300&q=80"
},

{
name:"Laptops",
count:18,
img:"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=300&q=80"
},

{
name:"Gadgets",
count:31,
img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=300&q=80"
},

{
name:"Footwear",
count:27,
img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=300&q=80"
},

{
name:"Accessories",
count:39,
img:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=300&q=80"
},

{
name:"Fashion",
count:42,
img:"https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=300&q=80"
}

];


const products = [

{
id:1,
title:"iPhone 14 Pro Max",
price:1099,
old:1199,
rating:5,
reviews:128,
category:"Smartphones",
badge:"New",
img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
},

{
id:2,
title:'MacBook Pro 14"',
price:1999,
rating:5,
reviews:86,
category:"Laptops",
badge:"",
img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
},

{
id:3,
title:"Apple Watch Series 8",
price:349,
old:399,
rating:5,
reviews:214,
category:"Accessories",
badge:"Sale",
img:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
},

{
id:4,
title:"Nike Air Max 270",
price:150,
rating:4,
reviews:53,
category:"Footwear",
badge:"",
img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
},

{
id:5,
title:"Sony A7 IV Camera",
price:2499,
rating:5,
reviews:42,
category:"Gadgets",
badge:"New",
img:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
},

{
id:6,
title:"Premium Perfume",
price:120,
rating:5,
reviews:189,
category:"Accessories",
badge:"",
img:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
},

{
id:7,
title:"Travel Backpack",
price:79,
old:99,
rating:4,
reviews:67,
category:"Accessories",
badge:"Sale",
img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
},

{
id:8,
title:"Sony WH-1000XM5",
price:399,
rating:5,
reviews:156,
category:"Gadgets",
badge:"",
img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
}

];


/* ================= STATE ================= */

let cart=[];
let wishlist=[];
let currentFilter="All";


/* ================= DOM ================= */

const productsGrid=document.getElementById("productsGrid");
const categoriesGrid=document.getElementById("categoriesGrid");
const cart=document.getElementById("cart");
const overlay=document.getElementById("overlay");
const cartList=document.getElementById("cartList");
const cartCount=document.getElementById("cartCount");
const cartItemsCount=document.getElementById("cartItemsCount");
const total=document.getElementById("total");
const wishCount=document.getElementById("wishCount");
const toast=document.getElementById("toast");


/* ================= CATEGORIES ================= */

function renderCategories(){

categoriesGrid.innerHTML="";

categories.forEach(category=>{

const card=document.createElement("button");

card.className="category";

card.innerHTML=`

<div class="category-img">
<img src="${category.img}" alt="${category.name}">
</div>

<h4>${category.name}</h4>

<small>${category.count} items</small>

`;

card.onclick=()=>{

currentFilter=category.name;

document
.querySelectorAll(".filter")
.forEach(btn=>btn.classList.remove("active"));

const filter=document.querySelector(
`.filter[data-filter="${category.name}"]`
);

if(filter){
filter.classList.add("active");
}

renderProducts(
products.filter(p=>p.category===category.name)
);

document
.getElementById("products")
.scrollIntoView({
behavior:"smooth"
});

};

categoriesGrid.appendChild(card);

});

}


/* ================= PRODUCTS ================= */

function renderProducts(list){

productsGrid.innerHTML="";

if(!list.length){

productsGrid.innerHTML=`

<div style="
grid-column:1/-1;
text-align:center;
padding:60px;
color:var(--muted);
">

<i class="fas fa-box-open"
style="font-size:45px;margin-bottom:15px">
</i>

<h3>No products found</h3>

<p>Try another category or search.</p>

</div>

`;

return;

}


list.forEach(product=>{

const card=document.createElement("article");

card.className="product";

const wished=wishlist.includes(product.id);

card.innerHTML=`

<div class="product-image">

<img src="${product.img}" alt="${product.title}">

${
product.badge
?
`
<span class="product-label ${product.badge==="Sale"?"sale":""}">
${product.badge}
</span>
`
:""
}

<button
class="wish ${wished?"active":""}"
data-wish="${product.id}"
>

<i class="${wished?"fas":"far"} fa-heart"></i>

</button>

</div>


<div class="product-body">

<div class="product-category">
${product.category}
</div>

<div class="product-title">
${product.title}
</div>

<div class="rating">
${"★".repeat(product.rating)}
${"☆".repeat(5-product.rating)}
<span>(${product.reviews})</span>
</div>

<div class="price">

<span class="current">
$${product.price.toLocaleString()}
</span>

${
product.old
?
`
<span class="old">
$${product.old.toLocaleString()}
</span>
`
:""
}

</div>


<div class="product-bottom">

<button
class="add"
data-cart="${product.id}"
>
<i class="fas fa-plus"></i>
Add to Cart
</button>

<button class="eye">
<i class="far fa-eye"></i>
</button>

</div>

</div>

`;

productsGrid.appendChild(card);

});


document
.querySelectorAll("[data-cart]")
.forEach(button=>{

button.onclick=()=>{

addToCart(
Number(button.dataset.cart)
);

};

});


document
.querySelectorAll("[data-wish]")
.forEach(button=>{

button.onclick=()=>{

toggleWishlist(
Number(button.dataset.wish)
);

};

});

}


/* ================= CART ================= */

function addToCart(id){

const product=products.find(p=>p.id===id);

if(!product)return;

const existing=cart.find(p=>p.id===id);

if(existing){

existing.qty++;

}else{

cart.push({
...product,
qty:1
});

}

updateCart();

showToast(
product.title+" added to cart"
);

}


function updateCart(){

const count=cart.reduce(
(sum,item)=>sum+item.qty,
0
);

cartCount.textContent=count;
cartItemsCount.textContent=count;

if(!cart.length){

cartList.innerHTML=`

<div class="empty">

<i class="fas fa-bag-shopping"></i>

<h3>Your cart is empty</h3>

<p>Add something you love.</p>

</div>

`;

total.textContent="$0";

return;

}


cartList.innerHTML="";

let sum=0;

cart.forEach(item=>{

sum+=item.price*item.qty;

const row=document.createElement("div");

row.className="cart-item";

row.innerHTML=`

<img src="${item.img}">

<div class="cart-info">

<h4>${item.title}</h4>

<p>
$${item.price.toLocaleString()}
× ${item.qty}
</p>

</div>

<button
class="remove"
data-remove="${item.id}"
>

<i class="fas fa-trash"></i>

</button>

`;

cartList.appendChild(row);

});

total.textContent=
"$"+sum.toLocaleString();


document
.querySelectorAll("[data-remove]")
.forEach(button=>{

button.onclick=()=>{

cart=cart.filter(
item=>item.id!==Number(button.dataset.remove)
);

updateCart();

};

});

}


/* ================= WISHLIST ================= */

function toggleWishlist(id){

const index=wishlist.indexOf(id);

const product=products.find(p=>p.id===id);

if(index===-1){

wishlist.push(id);

showToast(
product.title+" added to wishlist"
);

}else{

wishlist.splice(index,1);

showToast(
product.title+" removed from wishlist"
);

}

wishCount.textContent=wishlist.length;

renderCurrentProducts();

}


/* ================= FILTER ================= */

function renderCurrentProducts(){

let list=products;

if(currentFilter!=="All"){

list=list.filter(
p=>p.category===currentFilter
);

}

const search=
document
.getElementById("searchInput")
.value
.toLowerCase()
.trim();

if(search){

list=list.filter(p=>
p.title.toLowerCase().includes(search) ||
p.category.toLowerCase().includes(search)
);

}

renderProducts(list);

}


document
.querySelectorAll(".filter")
.forEach(button=>{

button.onclick=()=>{

document
.querySelectorAll(".filter")
.forEach(b=>
b.classList.remove("active")
);

button.classList.add("active");

currentFilter=button.dataset.filter;

renderCurrentProducts();

};

});


/* ================= SEARCH ================= */

document
.getElementById("searchInput")
.addEventListener(
"input",
renderCurrentProducts
);

document
.getElementById("searchBtn")
.onclick=renderCurrentProducts;


/* ================= SORT ================= */

document
.getElementById("sort")
.addEventListener(
"change",
e=>{

let list=[...products];

if(currentFilter!=="All"){

list=list.filter(
p=>p.category===currentFilter
);

}

if(e.target.value==="low"){

list.sort((a,b)=>a.price-b.price);

}

if(e.target.value==="high"){

list.sort((a,b)=>b.price-a.price);

}

renderProducts(list);

});


/* ================= CART DRAWER ================= */

function openCart(){

cart.classList.add("open");
overlay.classList.add("open");

}

function closeCart(){

cart.classList.remove("open");
overlay.classList.remove("open");

}

document
.getElementById("cartBtn")
.onclick=openCart;

document
.getElementById("closeCart")
.onclick=closeCart;

overlay.onclick=closeCart;


/* ================= HERO ================= */

document
.getElementById("shopBtn")
.onclick=()=>{

document
.getElementById("products")
.scrollIntoView({
behavior:"smooth"
});

};

document
.getElementById("dealBtn")
.onclick=()=>{

document
.getElementById("deals")
.scrollIntoView({
behavior:"smooth"
});

};


/* ================= DEAL ================= */

document
.getElementById("dealCart")
.onclick=()=>{

addToCart(2);

openCart();

};


/* ================= DARK MODE ================= */

document
.getElementById("themeBtn")
.onclick=()=>{

document.body.classList.toggle("dark");

const icon=
document.querySelector("#themeBtn i");

icon.classList.toggle("fa-moon");
icon.classList.toggle("fa-sun");

};


/* ================= MOBILE MENU ================= */

document
.getElementById("menuBtn")
.onclick=()=>{

document
.querySelector(".nav")
.style.display=
document.querySelector(".nav")
.style.display==="block"
?
"none"
:
"block";

};


/* ================= NEWSLETTER ================= */

document
.getElementById("newsletterForm")
.onsubmit=e=>{

e.preventDefault();

showToast(
"Thanks for subscribing!"
);

e.target.reset();

};


/* ================= CHECKOUT ================= */

document
.getElementById("checkout")
.onclick=()=>{

if(!cart.length){

showToast("Your cart is empty");

return;

}

showToast(
"Checkout coming soon!"
);

};


/* ================= TOAST ================= */

let toastTimer;

function showToast(message){

toast.textContent=message;

toast.classList.add("show");

clearTimeout(toastTimer);

toastTimer=setTimeout(
()=>toast.classList.remove("show"),
2500
);

}


/* ================= TIMER ================= */

const end=
new Date(
Date.now()+24*60*60*1000
);

function timer(){

const diff=end-new Date();

if(diff<=0)return;

const d=Math.floor(
diff/(1000*60*60*24)
);

const h=Math.floor(
(diff/(1000*60*60))%24
);

const m=Math.floor(
(diff/(1000*60))%60
);

const s=Math.floor(
(diff/1000)%60
);

document.getElementById("days")
.textContent=String(d).padStart(2,"0");

document.getElementById("hours")
.textContent=String(h).padStart(2,"0");

document.getElementById("minutes")
.textContent=String(m).padStart(2,"0");

document.getElementById("seconds")
.textContent=String(s).padStart(2,"0");

}

timer();

setInterval(timer,1000);


/* ================= INIT ================= */

document.getElementById("year")
.textContent=new Date().getFullYear();

renderCategories();

renderProducts(products);

updateCart();

</script>

</body>
</html>
