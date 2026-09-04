<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Modern Marketplace</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   RESET
========================================================= */

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
    background:#f5f6f8;
    color:#16181d;
    line-height:1.5;
    transition:.3s;
}

body.dark{
    background:#0d1016;
    color:#f7f7f8;
}

a{
    text-decoration:none;
    color:inherit;
}

button,
input,
select{
    font-family:inherit;
}

button{
    cursor:pointer;
    border:0;
}

img{
    max-width:100%;
    display:block;
}

.container{
    width:min(1380px,calc(100% - 40px));
    margin:auto;
}


/* =========================================================
   TOP NOTICE
========================================================= */

.top-notice{
    height:36px;
    background:#111318;
    color:#fff;

    display:flex;
    align-items:center;
    justify-content:center;

    font-size:12px;
    font-weight:500;
}

.top-notice strong{
    color:#fff;
    margin-left:5px;
}


/* =========================================================
   HEADER
========================================================= */

header{
    background:rgba(255,255,255,.92);
    backdrop-filter:blur(18px);

    position:sticky;
    top:0;
    z-index:1000;

    border-bottom:1px solid #e8e9ec;
}

body.dark header{
    background:rgba(16,19,26,.94);
    border-color:#252a34;
}

.header{
    height:76px;

    display:flex;
    align-items:center;
    gap:30px;
}


/* LOGO */

.logo{
    display:flex;
    align-items:center;
    gap:11px;

    font-size:22px;
    font-weight:800;
    letter-spacing:-.7px;
}

.logo-box{
    width:42px;
    height:42px;

    border-radius:13px;

    background:#111318;
    color:#fff;

    display:grid;
    place-items:center;

    font-size:18px;
}

.logo span{
    color:#ff4d4f;
}


/* SEARCH */

.search{
    flex:1;
    max-width:620px;
    position:relative;
}

.search input{
    width:100%;
    height:46px;

    border:1px solid #e3e5e9;
    border-radius:14px;

    background:#f5f6f8;

    padding:0 50px 0 18px;

    outline:none;
    font-size:13px;

    color:#111318;
}

.search input:focus{
    background:#fff;
    border-color:#ff4d4f;
}

body.dark .search input{
    background:#191d25;
    border-color:#2b303a;
    color:#fff;
}

.search button{
    position:absolute;
    right:5px;
    top:5px;

    width:36px;
    height:36px;

    border-radius:10px;

    background:#111318;
    color:#fff;
}

body.dark .search button{
    background:#fff;
    color:#111318;
}


/* HEADER ACTIONS */

.header-actions{
    margin-left:auto;

    display:flex;
    align-items:center;
    gap:7px;
}

.icon-btn{
    width:42px;
    height:42px;

    border-radius:12px;

    background:transparent;
    color:inherit;

    position:relative;

    transition:.2s;
}

.icon-btn:hover{
    background:#f0f1f3;
}

body.dark .icon-btn:hover{
    background:#20242d;
}

.badge{
    position:absolute;

    top:-2px;
    right:-2px;

    min-width:17px;
    height:17px;

    padding:0 5px;

    border-radius:20px;

    background:#ff4d4f;
    color:#fff;

    display:grid;
    place-items:center;

    font-size:9px;
    font-weight:800;
}


/* ACCOUNT */

.account{
    display:flex;
    align-items:center;
    gap:9px;

    padding:6px 10px;

    border-radius:12px;
}

.account:hover{
    background:#f0f1f3;
}

body.dark .account:hover{
    background:#20242d;
}

.avatar{
    width:34px;
    height:34px;

    border-radius:50%;

    background:#eceef2;

    display:grid;
    place-items:center;
}

.account-text small{
    display:block;
    color:#858993;
    font-size:10px;
}

.account-text strong{
    font-size:12px;
}


/* =========================================================
   NAVIGATION
========================================================= */

.nav-wrap{
    border-top:1px solid #f0f1f3;
}

body.dark .nav-wrap{
    border-color:#252a34;
}

.nav{
    height:48px;

    display:flex;
    align-items:center;
    gap:32px;
}

.nav a{
    font-size:12px;
    font-weight:600;
    color:#727681;

    position:relative;
}

.nav a:hover,
.nav a.active{
    color:#111318;
}

body.dark .nav a:hover,
body.dark .nav a.active{
    color:#fff;
}

.nav a.active:after{
    content:"";

    position:absolute;

    left:0;
    right:0;
    bottom:-17px;

    height:2px;

    background:#ff4d4f;
}


/* =========================================================
   HERO
========================================================= */

.hero{
    padding:28px 0 0;
}

.hero-grid{
    display:grid;
    grid-template-columns:1.55fr .85fr;
    gap:18px;
}


/* MAIN HERO */

.hero-main{
    min-height:500px;

    border-radius:28px;

    overflow:hidden;

    position:relative;

    display:flex;
    align-items:flex-end;

    padding:48px;

    color:#fff;

    background:
    linear-gradient(
        90deg,
        rgba(8,10,14,.94),
        rgba(8,10,14,.25)
    ),
    url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1500&q=90")
    center/cover;
}

.hero-content{
    max-width:600px;
}

.eyebrow{
    display:inline-flex;
    align-items:center;
    gap:7px;

    padding:8px 13px;

    border:1px solid rgba(255,255,255,.2);

    background:rgba(255,255,255,.1);

    backdrop-filter:blur(10px);

    border-radius:50px;

    font-size:11px;
    font-weight:700;

    margin-bottom:18px;
}

.hero h1{
    font-size:clamp(38px,5vw,68px);
    line-height:1.02;
    letter-spacing:-3px;

    margin-bottom:18px;
}

.hero p{
    color:rgba(255,255,255,.72);

    max-width:520px;

    font-size:14px;

    margin-bottom:27px;
}

.hero-buttons{
    display:flex;
    gap:10px;
}


/* BUTTONS */

.btn{
    min-height:45px;

    padding:0 20px;

    border-radius:12px;

    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:8px;

    font-size:12px;
    font-weight:700;

    transition:.2s;
}

.btn-primary{
    background:#ff4d4f;
    color:#fff;
}

.btn-primary:hover{
    background:#e83c3f;
    transform:translateY(-2px);
}

.btn-light{
    background:#fff;
    color:#111318;
}

.btn-light:hover{
    transform:translateY(-2px);
}


/* HERO SIDE */

.hero-side{
    display:grid;
    grid-template-rows:1fr 1fr;
    gap:18px;
}

.promo{
    border-radius:24px;

    padding:30px;

    color:#fff;

    position:relative;

    overflow:hidden;

    display:flex;
    align-items:flex-end;
}

.promo:after{
    content:"";

    position:absolute;
    inset:0;

    background:linear-gradient(
        0deg,
        rgba(0,0,0,.72),
        transparent 70%
    );
}

.promo-content{
    position:relative;
    z-index:2;
}

.promo h3{
    font-size:25px;
    letter-spacing:-1px;

    margin-bottom:5px;
}

.promo p{
    font-size:12px;
    opacity:.75;

    margin-bottom:14px;
}

.promo-watch{
    background:
    url("https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=90")
    center/cover;
}

.promo-shoes{
    background:
    url("https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=90")
    center/cover;
}


/* =========================================================
   CATEGORY SECTION
========================================================= */

.section{
    padding-top:65px;
}

.section-header{
    display:flex;
    align-items:end;
    justify-content:space-between;

    margin-bottom:22px;
}

.section-header h2{
    font-size:26px;
    letter-spacing:-1px;
}

.section-header p{
    color:#858993;
    font-size:12px;
    margin-top:4px;
}

.view{
    font-size:12px;
    font-weight:700;
    color:#ff4d4f;
}


/* CATEGORY CARDS */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category{
    background:#fff;

    border:1px solid #e7e8eb;

    border-radius:18px;

    padding:16px;

    text-align:left;

    transition:.25s;
}

body.dark .category{
    background:#161a21;
    border-color:#282d36;
}

.category:hover{
    transform:translateY(-5px);
    border-color:#ff4d4f;
}

.category-image{
    height:110px;

    border-radius:13px;

    overflow:hidden;

    margin-bottom:13px;
}

.category-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    transition:.4s;
}

.category:hover img{
    transform:scale(1.08);
}

.category h4{
    font-size:13px;
    margin-bottom:3px;
}

.category span{
    color:#92959d;
    font-size:10px;
}


/* =========================================================
   PRODUCT SECTION
========================================================= */

.product-toolbar{
    display:flex;
    justify-content:space-between;
    align-items:center;

    margin-bottom:22px;
}

.filters{
    display:flex;
    gap:7px;

    overflow-x:auto;
}

.filter{
    white-space:nowrap;

    padding:9px 15px;

    border-radius:50px;

    background:#fff;

    border:1px solid #e4e5e8;

    color:#6d717b;

    font-size:11px;
    font-weight:600;
}

body.dark .filter{
    background:#161a21;
    border-color:#282d36;
}

.filter:hover,
.filter.active{
    background:#111318;
    color:#fff;
    border-color:#111318;
}

body.dark .filter:hover,
body.dark .filter.active{
    background:#fff;
    color:#111318;
}


/* PRODUCTS */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product{
    background:#fff;

    border:1px solid #e7e8eb;

    border-radius:20px;

    overflow:hidden;

    position:relative;

    transition:.25s;
}

body.dark .product{
    background:#161a21;
    border-color:#282d36;
}

.product:hover{
    transform:translateY(-6px);
    box-shadow:0 18px 45px rgba(0,0,0,.1);
}

.product-image{
    height:290px;

    background:#f1f2f4;

    position:relative;

    overflow:hidden;
}

body.dark .product-image{
    background:#20242c;
}

.product-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    transition:.45s;
}

.product:hover img{
    transform:scale(1.07);
}


/* BADGE */

.product-badge{
    position:absolute;

    left:13px;
    top:13px;

    background:#111318;
    color:#fff;

    padding:6px 10px;

    border-radius:50px;

    font-size:9px;
    font-weight:800;

    text-transform:uppercase;
}

.product-badge.sale{
    background:#20a45a;
}


/* WISHLIST */

.wishlist{
    position:absolute;

    top:12px;
    right:12px;

    width:38px;
    height:38px;

    border-radius:50%;

    background:rgba(255,255,255,.92);

    color:#6e727c;

    display:grid;
    place-items:center;

    box-shadow:0 5px 15px rgba(0,0,0,.08);
}

.wishlist.active{
    color:#ff4d4f;
}


/* PRODUCT INFO */

.product-info{
    padding:18px;
}

.product-category{
    color:#92959d;

    font-size:9px;
    font-weight:800;

    text-transform:uppercase;

    letter-spacing:.6px;
}

.product-title{
    font-size:14px;
    font-weight:700;

    margin:5px 0 8px;

    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;
}

.rating{
    color:#f6ad27;

    font-size:11px;
}

.rating span{
    color:#9699a1;
}

.price-row{
    display:flex;
    align-items:center;
    gap:8px;

    margin-top:10px;
}

.price{
    font-size:18px;
    font-weight:800;
}

.old-price{
    color:#a1a4ab;
    font-size:11px;
    text-decoration:line-through;
}

.product-actions{
    display:flex;
    gap:7px;

    margin-top:14px;
}

.add-cart{
    flex:1;

    height:40px;

    border-radius:10px;

    background:#111318;
    color:#fff;

    font-size:11px;
    font-weight:700;
}

body.dark .add-cart{
    background:#fff;
    color:#111318;
}

.add-cart:hover{
    background:#ff4d4f;
    color:#fff;
}

.quick-view{
    width:40px;
    height:40px;

    border-radius:10px;

    background:#f2f3f5;
    color:#555962;
}

body.dark .quick-view{
    background:#242933;
    color:#fff;
}


/* =========================================================
   DEAL
========================================================= */

.deal{
    margin-top:70px;

    border-radius:28px;

    overflow:hidden;

    display:grid;
    grid-template-columns:1fr 1fr;

    background:#111318;
    color:#fff;
}

.deal-image{
    min-height:400px;

    background:
    url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=90")
    center/cover;
}

.deal-content{
    padding:55px;

    display:flex;
    flex-direction:column;
    justify-content:center;
}

.deal-label{
    color:#ff7274;

    font-size:10px;
    font-weight:800;

    text-transform:uppercase;
}

.deal h2{
    font-size:38px;

    letter-spacing:-2px;

    margin:10px 0;
}

.deal p{
    color:#999da6;

    font-size:13px;

    max-width:420px;

    margin-bottom:18px;
}

.deal-price{
    font-size:32px;
    font-weight:800;
}

.deal-price del{
    color:#666b75;
    font-size:15px;
    margin-left:7px;
    font-weight:400;
}


/* TIMER */

.timer{
    display:flex;
    gap:8px;

    margin:22px 0;
}

.timer-box{
    width:60px;
    height:58px;

    border-radius:11px;

    background:#1d2027;

    display:flex;
    flex-direction:column;

    align-items:center;
    justify-content:center;
}

.timer-box strong{
    font-size:18px;
}

.timer-box span{
    font-size:8px;
    color:#777c86;
    text-transform:uppercase;
}


/* =========================================================
   BENEFITS
========================================================= */

.benefits{
    margin-top:55px;

    display:grid;
    grid-template-columns:repeat(4,1fr);

    background:#fff;

    border:1px solid #e6e7ea;

    border-radius:22px;

    overflow:hidden;
}

body.dark .benefits{
    background:#161a21;
    border-color:#282d36;
}

.benefit{
    padding:25px;

    display:flex;
    gap:14px;

    align-items:center;

    border-right:1px solid #e8e9ec;
}

body.dark .benefit{
    border-color:#282d36;
}

.benefit:last-child{
    border-right:0;
}

.benefit-icon{
    width:44px;
    height:44px;

    border-radius:12px;

    background:#fff0f0;
    color:#ff4d4f;

    display:grid;
    place-items:center;

    flex-shrink:0;
}

.benefit h4{
    font-size:12px;
}

.benefit p{
    color:#91949c;
    font-size:10px;
}


/* =========================================================
   REVIEWS
========================================================= */

.reviews{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:16px;
}

.review{
    background:#fff;

    border:1px solid #e6e7ea;

    border-radius:20px;

    padding:25px;
}

body.dark .review{
    background:#161a21;
    border-color:#282d36;
}

.review-stars{
    color:#f5ad25;

    font-size:12px;

    margin-bottom:14px;
}

.review p{
    color:#686c75;

    font-size:12px;
    line-height:1.8;

    margin-bottom:20px;
}

body.dark .review p{
    color:#a2a6af;
}

.reviewer{
    display:flex;
    align-items:center;
    gap:10px;
}

.reviewer img{
    width:40px;
    height:40px;

    border-radius:50%;

    object-fit:cover;
}

.reviewer strong{
    display:block;
    font-size:11px;
}

.reviewer small{
    color:#9699a1;
    font-size:9px;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    margin-top:60px;

    padding:42px;

    border-radius:25px;

    background:
    linear-gradient(120deg,#ff4d4f,#ff6567);

    color:#fff;

    display:flex;

    justify-content:space-between;
    align-items:center;

    gap:30px;
}

.newsletter h2{
    font-size:26px;
    letter-spacing:-1px;
}

.newsletter p{
    opacity:.8;
    font-size:11px;
    margin-top:4px;
}

.newsletter-form{
    display:flex;

    width:430px;
    max-width:100%;
}

.newsletter-form input{
    flex:1;

    height:46px;

    border:0;
    outline:0;

    padding:0 15px;

    border-radius:11px 0 0 11px;
}

.newsletter-form button{
    padding:0 20px;

    border-radius:0 11px 11px 0;

    background:#111318;
    color:#fff;

    font-size:11px;
    font-weight:700;
}


/* =========================================================
   FOOTER
========================================================= */

footer{
    margin-top:65px;

    padding:55px 0 25px;

    background:#111318;
    color:#fff;
}

.footer-grid{
    display:grid;

    grid-template-columns:2fr 1fr 1fr 1fr;

    gap:50px;
}

.footer-logo{
    font-size:21px;
    font-weight:800;
}

.footer-logo span{
    color:#ff4d4f;
}

.footer-about{
    color:#858994;

    max-width:310px;

    font-size:11px;

    margin-top:12px;
}

.footer h4{
    font-size:12px;
    margin-bottom:15px;
}

.footer ul{
    list-style:none;
}

.footer li{
    margin-bottom:9px;
}

.footer li a{
    color:#858994;
    font-size:11px;
}

.footer li a:hover{
    color:#fff;
}

.social{
    display:flex;
    gap:7px;
    margin-top:20px;
}

.social a{
    width:34px;
    height:34px;

    border-radius:9px;

    background:#1d2027;

    display:grid;
    place-items:center;

    font-size:12px;
}

.footer-bottom{
    border-top:1px solid #292d35;

    margin-top:40px;

    padding-top:20px;

    text-align:center;

    color:#666b74;

    font-size:10px;
}


/* =========================================================
   CART DRAWER
========================================================= */

.overlay{
    position:fixed;
    inset:0;

    background:rgba(0,0,0,.5);

    backdrop-filter:blur(4px);

    z-index:2000;

    opacity:0;
    pointer-events:none;

    transition:.3s;
}

.overlay.open{
    opacity:1;
    pointer-events:auto;
}

.cart{
    position:fixed;

    top:0;
    right:-450px;

    width:420px;
    max-width:100%;

    height:100vh;

    background:#fff;

    z-index:2001;

    display:flex;
    flex-direction:column;

    transition:.35s;
}

body.dark .cart{
    background:#161a21;
    color:#fff;
}

.cart.open{
    right:0;
}

.cart-header{
    height:72px;

    padding:0 22px;

    border-bottom:1px solid #e7e8eb;

    display:flex;
    align-items:center;
    justify-content:space-between;
}

body.dark .cart-header{
    border-color:#292e37;
}

.cart-header h3{
    font-size:16px;
}

.close-cart{
    width:38px;
    height:38px;

    border-radius:10px;

    background:#f0f1f3;
}

body.dark .close-cart{
    background:#252a33;
    color:#fff;
}

.cart-items{
    flex:1;

    overflow-y:auto;

    padding:20px;
}

.empty-cart{
    text-align:center;

    padding-top:90px;

    color:#90949d;
}

.empty-cart i{
    font-size:42px;
    margin-bottom:15px;
}

.cart-item{
    display:flex;
    gap:12px;

    padding:14px 0;

    border-bottom:1px solid #e7e8eb;
}

body.dark .cart-item{
    border-color:#292e37;
}

.cart-item img{
    width:70px;
    height:70px;

    object-fit:cover;

    border-radius:11px;
}

.cart-item-info{
    flex:1;
}

.cart-item-info h4{
    font-size:12px;
}

.cart-item-info p{
    color:#ff4d4f;

    font-size:12px;
    font-weight:700;

    margin-top:5px;
}

.remove-item{
    background:transparent;
    color:#999da5;

    align-self:center;
}

.cart-footer{
    padding:20px;

    border-top:1px solid #e7e8eb;
}

body.dark .cart-footer{
    border-color:#292e37;
}

.cart-total{
    display:flex;
    justify-content:space-between;

    font-size:15px;
    font-weight:800;

    margin-bottom:15px;
}

.checkout{
    width:100%;
    height:48px;

    border-radius:11px;

    background:#ff4d4f;
    color:#fff;

    font-size:12px;
    font-weight:800;
}


/* =========================================================
   TOAST
========================================================= */

.toast{
    position:fixed;

    bottom:25px;
    left:50%;

    transform:translate(-50%,100px);

    background:#111318;
    color:#fff;

    padding:13px 20px;

    border-radius:12px;

    z-index:3000;

    font-size:11px;

    opacity:0;

    transition:.3s;
}

.toast.show{
    transform:translate(-50%,0);
    opacity:1;
}


/* =========================================================
   MOBILE MENU
========================================================= */

.mobile-menu{
    display:none;

    width:42px;
    height:42px;

    border-radius:11px;

    background:#f0f1f3;
}

body.dark .mobile-menu{
    background:#242933;
    color:#fff;
}

.mobile-nav{
    display:none;

    padding:10px 20px 20px;

    border-top:1px solid #e8e9ec;
}

body.dark .mobile-nav{
    border-color:#282d36;
}

.mobile-nav.open{
    display:block;
}

.mobile-nav a{
    display:block;

    padding:11px 0;

    font-size:13px;
    font-weight:600;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1150px){

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-side{
        grid-template-columns:1fr 1fr;
        grid-template-rows:auto;
    }

}


@media(max-width:900px){

    .account-text{
        display:none;
    }

    .nav-wrap{
        display:none;
    }

    .mobile-menu{
        display:block;
    }

    .header{
        height:68px;
        gap:10px;
    }

    .logo{
        font-size:18px;
    }

    .logo-box{
        width:38px;
        height:38px;
    }

    .search{
        position:absolute;

        top:78px;
        left:20px;
        right:20px;

        max-width:none;
    }

    header{
        margin-bottom:58px;
    }

    .hero-main{
        min-height:440px;
        padding:35px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .benefits{
        grid-template-columns:repeat(2,1fr);
    }

    .benefit{
        border-bottom:1px solid #e8e9ec;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .newsletter{
        flex-direction:column;
        align-items:flex-start;
    }

    .newsletter-form{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }

}


@media(max-width:600px){

    .container{
        width:calc(100% - 28px);
    }

    .top-notice{
        font-size:10px;
    }

    .header-actions{
        gap:0;
    }

    .account{
        display:none;
    }

    .hero{
        padding-top:15px;
    }

    .hero-main{
        min-height:450px;

        padding:25px;

        border-radius:22px;
    }

    .hero h1{
        font-size:40px;
        letter-spacing:-2px;
    }

    .hero-buttons{
        flex-direction:column;
    }

    .hero-buttons .btn{
        width:100%;
    }

    .hero-side{
        grid-template-columns:1fr;
    }

    .promo{
        min-height:230px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .category{
        padding:10px;
    }

    .category-image{
        height:100px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .product-image{
        height:185px;
    }

    .product-info{
        padding:13px;
    }

    .product-title{
        font-size:12px;
    }

    .price{
        font-size:15px;
    }

    .add-cart{
        font-size:10px;
    }

    .quick-view{
        display:none;
    }

    .deal{
        grid-template-columns:1fr;
        border-radius:22px;
    }

    .deal-image{
        min-height:260px;
    }

    .deal-content{
        padding:30px 22px;
    }

    .deal h2{
        font-size:30px;
    }

    .benefits{
        grid-template-columns:1fr;
    }

    .benefit{
        border-right:0;
    }

    .newsletter{
        padding:30px 22px;
    }

    .newsletter h2{
        font-size:22px;
    }

    .newsletter-form{
        flex-direction:column;
        gap:8px;
    }

    .newsletter-form input,
    .newsletter-form button{
        height:45px;
        border-radius:10px;
    }

    .footer-grid{
        grid-template-columns:1fr;
        gap:30px;
    }

    .cart{
        width:100%;
    }

}


/* =========================================================
   NO RESULTS
========================================================= */

.no-results{
    grid-column:1/-1;

    text-align:center;

    padding:70px 20px;

    color:#92959d;
}

.no-results i{
    font-size:45px;

    margin-bottom:15px;
}

</style>
</head>


<body>

<!-- =========================================================
     TOP NOTICE
========================================================= -->

<div class="top-notice">
    ✦ Weekend Sale is Live — Free shipping on orders over $50
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

<div class="container header">

    <button class="mobile-menu" id="mobileMenuBtn">
        <i class="fas fa-bars"></i>
    </button>


    <a href="#" class="logo">

        <div class="logo-box">
            <i class="fas fa-bag-shopping"></i>
        </div>

        Nexus<span>Shop</span>

    </a>


    <div class="search">

        <input
            id="searchInput"
            type="search"
            placeholder="Search products, brands and categories..."
        >

        <button id="searchBtn">
            <i class="fas fa-search"></i>
        </button>

    </div>


    <div class="header-actions">

        <button class="icon-btn" id="themeBtn" title="Toggle theme">
            <i class="far fa-moon"></i>
        </button>


        <button class="icon-btn" id="wishlistBtn" title="Wishlist">

            <i class="far fa-heart"></i>

            <span
                class="badge"
                id="wishlistCount">
                0
            </span>

        </button>


        <button class="account">

            <div class="avatar">
                <i class="far fa-user"></i>
            </div>

            <div class="account-text">
                <small>Welcome</small>
                <strong>My Account</strong>
            </div>

        </button>


        <button class="icon-btn" id="cartBtn">

            <i class="fas fa-bag-shopping"></i>

            <span
                class="badge"
                id="cartCount">
                0
            </span>

        </button>

    </div>

</div>


<div class="nav-wrap">

<div class="container nav">

    <a href="#" class="active">
        Home
    </a>

    <a href="#categories">
        Categories
    </a>

    <a href="#products">
        New Arrivals
    </a>

    <a href="#products">
        Best Sellers
    </a>

    <a href="#deals">
        <i class="fas fa-bolt"></i>
        Deals
    </a>

    <a href="#reviews">
        Reviews
    </a>

</div>

</div>


<div class="mobile-nav" id="mobileNav">

    <a href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">New Arrivals</a>
    <a href="#products">Best Sellers</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>

</div>

</header>


<!-- =========================================================
     MAIN
========================================================= -->

<main>


<!-- HERO -->

<section class="hero">

<div class="container">

<div class="hero-grid">


<div class="hero-main">

<div class="hero-content">

<div class="eyebrow">

    <i class="fas fa-sparkles"></i>

    NEW SEASON 2026

</div>


<h1>
    Shop smarter.
    Live better.
</h1>


<p>
    Discover premium technology, fashion and everyday
    essentials curated for modern life.
</p>


<div class="hero-buttons">

<button
    class="btn btn-primary"
    id="shopNow">

    Explore Collection

    <i class="fas fa-arrow-right"></i>

</button>


<button
    class="btn btn-light"
    id="dealNow">

    Today's Deals

</button>

</div>

</div>

</div>


<div class="hero-side">


<div class="promo promo-watch">

<div class="promo-content">

<h3>Smart Watches</h3>

<p>
    Starting from $199
</p>

<button class="btn btn-light">
    Shop Now
</button>

</div>

</div>


<div class="promo promo-shoes">

<div class="promo-content">

<h3>Move in Style</h3>

<p>
    Sports shoes up to 40% off
</p>

<button class="btn btn-light">
    Explore
</button>

</div>

</div>


</div>

</div>

</div>

</section>


<!-- =========================================================
     CATEGORIES
========================================================= -->

<section
    class="section"
    id="categories">

<div class="container">

<div class="section-header">

<div>

<h2>Browse Categories</h2>

<p>
    Everything you need, organized for you.
</p>

</div>

<a href="#products" class="view">
    View all →
</a>

</div>


<div
    class="categories"
    id="categoryRow">
</div>

</div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section
    class="section"
    id="products">

<div class="container">


<div class="section-header">

<div>

<h2>Trending right now</h2>

<p>
    Products shoppers are loving this week.
</p>

</div>

</div>


<div class="product-toolbar">

<div class="filters">

<button
    class="filter active"
    data-filter="All">
    All
</button>

<button
    class="filter"
    data-filter="Smartphones">
    Smartphones
</button>

<button
    class="filter"
    data-filter="Laptops">
    Laptops
</button>

<button
    class="filter"
    data-filter="Gadgets">
    Gadgets
</button>

<button
    class="filter"
    data-filter="Footwear">
    Footwear
</button>

<button
    class="filter"
    data-filter="Accessories">
    Accessories
</button>

</div>

</div>


<div
    class="products"
    id="productsGrid">
</div>

</div>

</section>


<!-- =========================================================
     DEAL
========================================================= -->

<section
    class="container"
    id="deals">

<div class="deal">

<div class="deal-image"></div>


<div class="deal-content">

<span class="deal-label">
    ⚡ Flash Deal
</span>


<h2>
    MacBook Air M2
</h2>


<p>
    Powerful performance in an incredibly thin design.
    Grab today's exclusive offer before the timer runs out.
</p>


<div class="deal-price">

$999

<del>$1,199</del>

</div>


<div class="timer">

<div class="timer-box">
    <strong id="days">00</strong>
    <span>Days</span>
</div>

<div class="timer-box">
    <strong id="hours">00</strong>
    <span>Hours</span>
</div>

<div class="timer-box">
    <strong id="minutes">00</strong>
    <span>Minutes</span>
</div>

<div class="timer-box">
    <strong id="seconds">00</strong>
    <span>Seconds</span>
</div>

</div>


<button
    class="btn btn-primary"
    id="dealCart">

    <i class="fas fa-bag-shopping"></i>

    Add Deal to Cart

</button>

</div>

</div>

</section>


<!-- =========================================================
     BENEFITS
========================================================= -->

<section class="container">

<div class="benefits">

<div class="benefit">

<div class="benefit-icon">
    <i class="fas fa-truck-fast"></i>
</div>

<div>
    <h4>Free Shipping</h4>
    <p>On orders over $50</p>
</div>

</div>


<div class="benefit">

<div class="benefit-icon">
    <i class="fas fa-rotate-left"></i>
</div>

<div>
    <h4>Easy Returns</h4>
    <p>30 day return policy</p>
</div>

</div>


<div class="benefit">

<div class="benefit-icon">
    <i class="fas fa-shield-halved"></i>
</div>

<div>
    <h4>Secure Checkout</h4>
    <p>Protected payments</p>
</div>

</div>


<div class="benefit">

<div class="benefit-icon">
    <i class="fas fa-headset"></i>
</div>

<div>
    <h4>24/7 Support</h4>
    <p>We're always available</p>
</div>

</div>

</div>

</section>


<!-- =========================================================
     REVIEWS
========================================================= -->

<section
    class="section"
    id="reviews">

<div class="container">

<div class="section-header">

<div>

<h2>
    Loved by shoppers
</h2>

<p>
    Real experiences from our customers.
</p>

</div>

</div>


<div class="reviews">


<div class="review">

<div class="review-stars">
    ★★★★★
</div>

<p>
    "The ordering experience was incredibly smooth.
    The product arrived earlier than expected and
    the packaging was excellent."
</p>


<div class="reviewer">

<img
src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
alt="Customer">

<div>

<strong>Ava Martin</strong>

<small>
    Verified Buyer
</small>

</div>

</div>

</div>


<div class="review">

<div class="review-stars">
    ★★★★★
</div>

<p>
    "Excellent prices and a great selection.
    I found exactly what I wanted in a few minutes.
    Definitely coming back."
</p>


<div class="reviewer">

<img
src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80"
alt="Customer">

<div>

<strong>Michael Lee</strong>

<small>
    Frequent Shopper
</small>

</div>

</div>

</div>


<div class="review">

<div class="review-stars">
    ★★★★★
</div>

<p>
    "Great quality, beautiful packaging and fast
    delivery. The whole experience felt premium."
</p>


<div class="reviewer">

<img
src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
alt="Customer">

<div>

<strong>Sophia Chen</strong>

<small>
    Verified Buyer
</small>

</div>

</div>

</div>


</div>

</div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="container">

<div class="newsletter">

<div>

<h2>
    Don't miss the next drop.
</h2>

<p>
    Get exclusive offers, new arrivals and early access.
</p>

</div>


<form
    class="newsletter-form"
    id="newsletterForm">

<input
    type="email"
    id="email"
    placeholder="Your email address"
    required>

<button type="submit">
    Subscribe
</button>

</form>

</div>

</section>


</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

<div class="container">

<div class="footer-grid">


<div>

<div class="footer-logo">
    Nexus<span>Shop</span>
</div>

<p class="footer-about">
    A modern shopping destination for technology,
    fashion, accessories and everyday essentials.
</p>


<div class="social">

<a href="#">
    <i class="fab fa-facebook-f"></i>
</a>

<a href="#">
    <i class="fab fa-instagram"></i>
</a>

<a href="#">
    <i class="fab fa-x-twitter"></i>
</a>

<a href="#">
    <i class="fab fa-youtube"></i>
</a>

</div>

</div>


<div class="footer">

<h4>Shop</h4>

<ul>
<li><a href="#">All Products</a></li>
<li><a href="#">New Arrivals</a></li>
<li><a href="#">Best Sellers</a></li>
<li><a href="#">Deals</a></li>
</ul>

</div>


<div class="footer">

<h4>Support</h4>

<ul>
<li><a href="#">Contact Us</a></li>
<li><a href="#">Shipping</a></li>
<li><a href="#">Returns</a></li>
<li><a href="#">FAQ</a></li>
</ul>

</div>


<div class="footer">

<h4>Company</h4>

<ul>
<li><a href="#">About Us</a></li>
<li><a href="#">Careers</a></li>
<li><a href="#">Privacy</a></li>
<li><a href="#">Terms</a></li>
</ul>

</div>


</div>


<div class="footer-bottom">

© <span id="year"></span>
NexusShop. All rights reserved.

</div>

</div>

</footer>


<!-- =========================================================
     CART
========================================================= -->

<div
    class="overlay"
    id="cartOverlay">
</div>


<aside
    class="cart"
    id="cartDrawer">


<div class="cart-header">

<h3>
    Shopping Bag
    (<span id="cartTitleCount">0</span>)
</h3>

<button
    class="close-cart"
    id="closeCart">

    <i class="fas fa-xmark"></i>

</button>

</div>


<div
    class="cart-items"
    id="cartItems">

<div class="empty-cart">

<i class="fas fa-bag-shopping"></i>

<h3>
    Your bag is empty
</h3>

<p>
    Add something you love.
</p>

</div>

</div>


<div class="cart-footer">

<div class="cart-total">

<span>
    Total
</span>

<span id="cartTotal">
    $0
</span>

</div>


<button
    class="checkout"
    id="checkoutBtn">

    Proceed to Checkout

</button>

</div>

</aside>


<!-- TOAST -->

<div
    class="toast"
    id="toast">
</div>


<script>

/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [

{
    name:"Smartphones",
    count:24,
    image:"https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=500&q=85"
},

{
    name:"Laptops",
    count:18,
    image:"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=500&q=85"
},

{
    name:"Clothing",
    count:42,
    image:"https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=500&q=85"
},

{
    name:"Gadgets",
    count:31,
    image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=85"
},

{
    name:"Footwear",
    count:27,
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=85"
},

{
    name:"Accessories",
    count:39,
    image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=85"
}

];


const PRODUCTS = [

{
    id:1,
    title:"iPhone 14 Pro Max",
    price:1099,
    oldPrice:1199,
    rating:5,
    reviews:128,
    badge:"New",
    category:"Smartphones",
    img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
},

{
    id:2,
    title:'MacBook Pro 14"',
    price:1999,
    rating:4,
    reviews:86,
    badge:"",
    category:"Laptops",
    img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
},

{
    id:3,
    title:"Apple Watch Series 8",
    price:349,
    oldPrice:399,
    rating:5,
    reviews:214,
    badge:"Sale",
    category:"Accessories",
    img:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
},

{
    id:4,
    title:"Nike Air Max 270",
    price:150,
    rating:4,
    reviews:53,
    badge:"",
    category:"Footwear",
    img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
},

{
    id:5,
    title:"Sony A7 IV Camera",
    price:2499,
    rating:5,
    reviews:42,
    badge:"New",
    category:"Gadgets",
    img:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
},

{
    id:6,
    title:"Premium Perfume",
    price:120,
    rating:5,
    reviews:189,
    badge:"",
    category:"Accessories",
    img:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
},

{
    id:7,
    title:"Travel Backpack",
    price:79,
    oldPrice:99,
    rating:4,
    reviews:67,
    badge:"Sale",
    category:"Accessories",
    img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
},

{
    id:8,
    title:"Sony WH-1000XM5",
    price:399,
    rating:5,
    reviews:156,
    badge:"",
    category:"Gadgets",
    img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
}

];


/* =========================================================
   STATE
========================================================= */

let cart = [];
let wishlist = [];


/* =========================================================
   DOM
========================================================= */

const productsGrid =
document.getElementById("productsGrid");

const categoryRow =
document.getElementById("categoryRow");

const cartDrawer =
document.getElementById("cartDrawer");

const cartOverlay =
document.getElementById("cartOverlay");

const cartItems =
document.getElementById("cartItems");

const cartCount =
document.getElementById("cartCount");

const cartTitleCount =
document.getElementById("cartTitleCount");

const cartTotal =
document.getElementById("cartTotal");

const wishlistCount =
document.getElementById("wishlistCount");

const toast =
document.getElementById("toast");


/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories(){

    categoryRow.innerHTML = "";

    CATEGORIES.forEach(category => {

        const element =
        document.createElement("button");

        element.className = "category";

        element.innerHTML = `

            <div class="category-image">

                <img
                    src="${category.image}"
                    alt="${category.name}"
                    loading="lazy"
                >

            </div>

            <h4>
                ${category.name}
            </h4>

            <span>
                ${category.count} products
            </span>

        `;

        element.onclick = () => {

            document.getElementById(
                "searchInput"
            ).value = category.name;

            filterProducts(category.name);

            document.getElementById(
                "products"
            ).scrollIntoView({
                behavior:"smooth"
            });

        };

        categoryRow.appendChild(element);

    });

}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(list){

    productsGrid.innerHTML = "";

    if(!list.length){

        productsGrid.innerHTML = `

            <div class="no-results">

                <i class="fas fa-box-open"></i>

                <h3>
                    No products found
                </h3>

                <p>
                    Try searching for something else.
                </p>

            </div>

        `;

        return;
    }


    list.forEach(product => {

        const card =
        document.createElement("article");

        card.className = "product";


        const wished =
        wishlist.includes(product.id);


        const badge =
        product.badge
        ?
        `
        <span class="product-badge
        ${product.badge === "Sale" ? "sale" : ""}">
            ${product.badge}
        </span>
        `
        :
        "";


        card.innerHTML = `

            <div class="product-image">

                <img
                    src="${product.img}"
                    alt="${product.title}"
                    loading="lazy"
                >

                ${badge}

                <button
                    class="wishlist ${wished ? "active" : ""}"
                    data-id="${product.id}">

                    <i class="${wished ? "fas" : "far"} fa-heart"></i>

                </button>

            </div>


            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-title">
                    ${product.title}
                </div>

                <div class="rating">

                    ${"★".repeat(product.rating)}
                    ${"☆".repeat(5-product.rating)}

                    <span>
                        (${product.reviews})
                    </span>

                </div>


                <div class="price-row">

                    <span class="price">
                        $${product.price.toLocaleString()}
                    </span>

                    ${
                        product.oldPrice
                        ?
                        `
                        <span class="old-price">
                            $${product.oldPrice.toLocaleString()}
                        </span>
                        `
                        :
                        ""
                    }

                </div>


                <div class="product-actions">

                    <button
                        class="add-cart"
                        data-id="${product.id}">

                        <i class="fas fa-plus"></i>

                        Add to Bag

                    </button>


                    <button class="quick-view">

                        <i class="far fa-eye"></i>

                    </button>

                </div>

            </div>

        `;


        productsGrid.appendChild(card);

    });


    attachProductEvents();

}


/* =========================================================
   PRODUCT EVENTS
========================================================= */

function attachProductEvents(){

    document
    .querySelectorAll(".add-cart")
    .forEach(button => {

        button.onclick = () => {

            addToCart(
                Number(button.dataset.id)
            );

        };

    });


    document
    .querySelectorAll(".wishlist")
    .forEach(button => {

        button.onclick = () => {

            toggleWishlist(
                Number(button.dataset.id)
            );

        };

    });

}


/* =========================================================
   CART
========================================================= */

function addToCart(id){

    const product =
    PRODUCTS.find(
        p => p.id === id
    );

    if(!product) return;


    const existing =
    cart.find(
        item => item.id === id
    );


    if(existing){

        existing.quantity++;

    }
    else{

        cart.push({
            ...product,
            quantity:1
        });

    }


    updateCart();

    showToast(
        `${product.title} added to your bag`
    );

}


function updateCart(){

    const count =
    cart.reduce(
        (sum,item) =>
        sum + item.quantity,
        0
    );


    cartCount.textContent = count;

    cartTitleCount.textContent = count;


    if(!cart.length){

        cartItems.innerHTML = `

            <div class="empty-cart">

                <i class="fas fa-bag-shopping"></i>

                <h3>
                    Your bag is empty
                </h3>

                <p>
                    Add something you love.
                </p>

            </div>

        `;

        cartTotal.textContent = "$0";

        return;

    }


    cartItems.innerHTML = "";

    let total = 0;


    cart.forEach(item => {

        total +=
        item.price * item.quantity;


        const element =
        document.createElement("div");

        element.className = "cart-item";


        element.innerHTML = `

            <img
                src="${item.img}"
                alt="${item.title}"
            >


            <div class="cart-item-info">

                <h4>
                    ${item.title}
                </h4>

                <p>
                    $${item.price.toLocaleString()}
                    × ${item.quantity}
                </p>

            </div>


            <button
                class="remove-item"
                data-id="${item.id}">

                <i class="fas fa-trash"></i>

            </button>

        `;


        cartItems.appendChild(element);

    });


    cartTotal.textContent =
    `$${total.toLocaleString()}`;


    document
    .querySelectorAll(".remove-item")
    .forEach(button => {

        button.onclick = () => {

            const id =
            Number(button.dataset.id);

            cart =
            cart.filter(
                item => item.id !== id
            );

            updateCart();

        };

    });

}


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id){

    const index =
    wishlist.indexOf(id);

    const product =
    PRODUCTS.find(
        p => p.id === id
    );


    if(index === -1){

        wishlist.push(id);

        showToast(
            `${product.title} added to wishlist`
        );

    }
    else{

        wishlist.splice(index,1);

        showToast(
            `${product.title} removed from wishlist`
        );

    }


    wishlistCount.textContent =
    wishlist.length;


    renderProducts(
        getCurrentProducts()
    );

}


/* =========================================================
   SEARCH
========================================================= */

function filterProducts(query){

    const search =
    query.toLowerCase().trim();


    const filtered =
    PRODUCTS.filter(product => {

        return !search ||

        product.title
        .toLowerCase()
        .includes(search)

        ||

        product.category
        .toLowerCase()
        .includes(search);

    });


    renderProducts(filtered);

}


function getCurrentProducts(){

    const search =
    document
    .getElementById("searchInput")
    .value
    .toLowerCase()
    .trim();


    if(!search)
        return PRODUCTS;


    return PRODUCTS.filter(product =>

        product.title
        .toLowerCase()
        .includes(search)

        ||

        product.category
        .toLowerCase()
        .includes(search)

    );

}


document
.getElementById("searchInput")
.addEventListener(
    "input",
    e => filterProducts(e.target.value)
);


document
.getElementById("searchBtn")
.onclick = () => {

    filterProducts(
        document
        .getElementById("searchInput")
        .value
    );

};


/* =========================================================
   FILTERS
========================================================= */

document
.querySelectorAll(".filter")
.forEach(button => {

    button.onclick = () => {

        document
        .querySelectorAll(".filter")
        .forEach(b =>
            b.classList.remove("active")
        );


        button.classList.add("active");


        const filter =
        button.dataset.filter;


        if(filter === "All"){

            renderProducts(PRODUCTS);

        }
        else{

            renderProducts(
                PRODUCTS.filter(
                    product =>
                    product.category === filter
                )
            );

        }

    };

});


/* =========================================================
   CART DRAWER
========================================================= */

function openCart(){

    cartDrawer.classList.add("open");

    cartOverlay.classList.add("open");

}


function closeCart(){

    cartDrawer.classList.remove("open");

    cartOverlay.classList.remove("open");

}


document
.getElementById("cartBtn")
.onclick = openCart;


document
.getElementById("closeCart")
.onclick = closeCart;


cartOverlay.onclick = closeCart;


/* =========================================================
   HERO BUTTONS
========================================================= */

document
.getElementById("shopNow")
.onclick = () => {

    document
    .getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

};


document
.getElementById("dealNow")
.onclick = () => {

    document
    .getElementById("deals")
    .scrollIntoView({
        behavior:"smooth"
    });

};


document
.getElementById("dealCart")
.onclick = () => {

    addToCart(2);

    openCart();

};


/* =========================================================
   TIMER
========================================================= */

const dealEnd =
new Date(
    Date.now() +
    24 * 60 * 60 * 1000
);


function updateTimer(){

    const diff =
    dealEnd - new Date();


    if(diff <= 0)
        return;


    const days =
    Math.floor(
        diff /
        (1000 * 60 * 60 * 24)
    );


    const hours =
    Math.floor(
        (diff /
        (1000 * 60 * 60)) % 24
    );


    const minutes =
    Math.floor(
        (diff /
        (1000 * 60)) % 60
    );


    const seconds =
    Math.floor(
        (diff / 1000) % 60
    );


    document.getElementById("days")
    .textContent =
    String(days).padStart(2,"0");


    document.getElementById("hours")
    .textContent =
    String(hours).padStart(2,"0");


    document.getElementById("minutes")
    .textContent =
    String(minutes).padStart(2,"0");


    document.getElementById("seconds")
    .textContent =
    String(seconds).padStart(2,"0");

}


updateTimer();

setInterval(updateTimer,1000);


/* =========================================================
   DARK MODE
========================================================= */

document
.getElementById("themeBtn")
.onclick = () => {

    document.body.classList.toggle("dark");


    const icon =
    document.querySelector(
        "#themeBtn i"
    );


    icon.classList.toggle("fa-moon");

    icon.classList.toggle("fa-sun");

};


/* =========================================================
   MOBILE MENU
========================================================= */

document
.getElementById("mobileMenuBtn")
.onclick = () => {

    document
    .getElementById("mobileNav")
    .classList.toggle("open");

};


/* =========================================================
   NEWSLETTER
========================================================= */

document
.getElementById("newsletterForm")
.onsubmit = e => {

    e.preventDefault();


    const email =
    document
    .getElementById("email")
    .value.trim();


    if(!email)
        return;


    showToast(
        "🎉 You're subscribed!"
    );


    e.target.reset();

};


/* =========================================================
   TOAST
========================================================= */

let toastTimer;


function showToast(message){

    toast.textContent = message;

    toast.classList.add("show");


    clearTimeout(toastTimer);


    toastTimer =
    setTimeout(
        () =>
        toast.classList.remove("show"),
        2500
    );

}


/* =========================================================
   CHECKOUT
========================================================= */

document
.getElementById("checkoutBtn")
.onclick = () => {

    if(!cart.length){

        showToast(
            "Your shopping bag is empty"
        );

        return;

    }


    showToast(
        "Checkout page coming soon!"
    );

};


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year")
.textContent =
new Date().getFullYear();


/* =========================================================
   INIT
========================================================= */

renderCategories();

renderProducts(PRODUCTS);

updateCart();

</script>

</body>
</html>
