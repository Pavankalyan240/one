<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>NexusShop — Modern Shopping</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   GLOBAL
========================================================= */

:root {
    --primary: #111827;
    --secondary: #6b7280;
    --accent: #ff4d4f;
    --accent-dark: #e63c3e;
    --green: #16a34a;
    --yellow: #f59e0b;

    --bg: #f7f8fa;
    --white: #ffffff;
    --border: #e5e7eb;
    --light: #f1f3f5;

    --shadow: 0 5px 20px rgba(0,0,0,.06);
    --shadow-lg: 0 15px 45px rgba(0,0,0,.12);

    --radius: 14px;
    --container: 1280px;
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: Inter, sans-serif;
    background: var(--bg);
    color: var(--primary);
    line-height: 1.5;
}

body.dark {
    --bg: #111827;
    --white: #1f2937;
    --primary: #f9fafb;
    --secondary: #9ca3af;
    --border: #374151;
    --light: #374151;
}

a {
    text-decoration: none;
    color: inherit;
}

button,
input {
    font-family: inherit;
}

button {
    cursor: pointer;
    border: none;
}

img {
    max-width: 100%;
    display: block;
}

.container {
    max-width: var(--container);
    margin: auto;
    padding: 0 22px;
}

/* =========================================================
   TOP BAR
========================================================= */

.top-bar {
    background: #111827;
    color: white;
    font-size: 13px;
}

.top-bar-inner {
    min-height: 36px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.top-bar span {
    opacity: .85;
}

/* =========================================================
   HEADER
========================================================= */

header {
    background: var(--white);
    position: sticky;
    top: 0;
    z-index: 1000;
    border-bottom: 1px solid var(--border);
}

.header-main {
    min-height: 74px;
    display: flex;
    align-items: center;
    gap: 28px;
}

/* LOGO */

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 23px;
    font-weight: 800;
    white-space: nowrap;
}

.logo-icon {
    width: 40px;
    height: 40px;
    background: var(--accent);
    color: white;
    border-radius: 10px;
    display: grid;
    place-items: center;
}

.logo span {
    color: var(--accent);
}

/* SEARCH */

.search-area {
    flex: 1;
    display: flex;
    max-width: 600px;
    height: 46px;
}

.search-area select {
    width: 125px;
    border: 1px solid var(--border);
    border-right: 0;
    background: var(--light);
    padding: 0 12px;
    border-radius: 9px 0 0 9px;
    color: var(--secondary);
    outline: none;
}

.search-area input {
    flex: 1;
    border: 1px solid var(--border);
    padding: 0 16px;
    outline: none;
    background: var(--white);
    color: var(--primary);
}

.search-area input:focus {
    border-color: var(--accent);
}

.search-btn {
    width: 52px;
    background: var(--accent);
    color: white;
    border-radius: 0 9px 9px 0;
    font-size: 17px;
}

.search-btn:hover {
    background: var(--accent-dark);
}

/* HEADER ACTIONS */

.header-actions {
    display: flex;
    align-items: center;
    gap: 6px;
    margin-left: auto;
}

.header-action {
    min-width: 45px;
    height: 45px;
    padding: 6px 9px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 7px;
    border-radius: 9px;
    color: var(--primary);
    position: relative;
}

.header-action:hover {
    background: var(--light);
}

.header-action small {
    font-size: 11px;
    color: var(--secondary);
}

.count {
    position: absolute;
    top: 0;
    right: 0;
    background: var(--accent);
    color: white;
    min-width: 19px;
    height: 19px;
    padding: 0 5px;
    border-radius: 50px;
    font-size: 10px;
    display: grid;
    place-items: center;
    font-weight: 700;
}

/* NAV */

.nav {
    border-top: 1px solid var(--border);
}

.nav-inner {
    height: 48px;
    display: flex;
    align-items: center;
    gap: 30px;
}

.nav a {
    font-size: 14px;
    font-weight: 600;
    color: var(--secondary);
}

.nav a:hover,
.nav a.active {
    color: var(--accent);
}

/* MOBILE */

.mobile-menu-btn {
    display: none;
    width: 42px;
    height: 42px;
    border-radius: 8px;
    background: var(--light);
}

.mobile-nav {
    display: none;
}

/* =========================================================
   HERO
========================================================= */

.hero {
    margin-top: 22px;
}

.hero-grid {
    display: grid;
    grid-template-columns: 1.4fr .6fr;
    gap: 18px;
}

.hero-main {
    min-height: 420px;
    border-radius: 18px;
    padding: 55px;
    display: flex;
    align-items: center;

    background:
        linear-gradient(90deg,
        rgba(17,24,39,.95),
        rgba(17,24,39,.45)),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1400&q=85")
        center/cover;

    color: white;
}

.hero-content {
    max-width: 560px;
}

.hero-label {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    background: rgba(255,255,255,.12);
    padding: 7px 13px;
    border-radius: 50px;
    font-size: 12px;
    margin-bottom: 18px;
}

.hero h1 {
    font-size: 48px;
    line-height: 1.1;
    margin-bottom: 18px;
}

.hero p {
    color: rgba(255,255,255,.8);
    font-size: 16px;
    margin-bottom: 28px;
}

.hero-buttons {
    display: flex;
    gap: 10px;
}

.btn {
    min-height: 45px;
    padding: 0 22px;
    border-radius: 8px;
    font-weight: 700;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
}

.btn-primary {
    background: var(--accent);
    color: white;
}

.btn-primary:hover {
    background: var(--accent-dark);
}

.btn-white {
    background: white;
    color: #111827;
}

/* HERO SIDE */

.hero-side {
    display: grid;
    grid-template-rows: 1fr 1fr;
    gap: 18px;
}

.promo-card {
    border-radius: 18px;
    overflow: hidden;
    padding: 28px;
    position: relative;
    color: white;
    display: flex;
    align-items: center;
}

.promo-card:first-child {
    background:
        linear-gradient(90deg, rgba(30,41,59,.95), rgba(30,41,59,.35)),
        url("https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80")
        center/cover;
}

.promo-card:last-child {
    background:
        linear-gradient(90deg, rgba(127,29,29,.95), rgba(127,29,29,.35)),
        url("https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80")
        center/cover;
}

.promo-card h3 {
    font-size: 22px;
    margin-bottom: 6px;
}

.promo-card p {
    font-size: 13px;
    opacity: .8;
    margin-bottom: 14px;
}

/* =========================================================
   SECTION
========================================================= */

.section {
    padding: 55px 0 0;
}

.section-heading {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 22px;
}

.section-heading h2 {
    font-size: 25px;
}

.section-heading p {
    color: var(--secondary);
    font-size: 13px;
    margin-top: 3px;
}

.view-all {
    color: var(--accent);
    font-weight: 700;
    font-size: 14px;
}

/* =========================================================
   CATEGORIES
========================================================= */

.category-row {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 12px;
}

.category {
    background: var(--white);
    border: 1px solid var(--border);
    border-radius: 12px;
    min-height: 125px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    transition: .2s;
}

.category:hover {
    border-color: var(--accent);
    transform: translateY(-3px);
    box-shadow: var(--shadow);
}

.category-icon {
    width: 50px;
    height: 50px;
    background: #fff0f0;
    color: var(--accent);
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-size: 20px;
    margin-bottom: 10px;
}

body.dark .category-icon {
    background: #3f1d1d;
}

.category h4 {
    font-size: 14px;
}

.category small {
    color: var(--secondary);
    font-size: 11px;
}

/* =========================================================
   FILTER BAR
========================================================= */

.filter-bar {
    background: var(--white);
    border: 1px solid var(--border);
    border-radius: 10px;
    padding: 12px;
    display: flex;
    gap: 10px;
    margin-bottom: 18px;
    overflow-x: auto;
}

.filter {
    padding: 8px 16px;
    background: var(--light);
    border-radius: 7px;
    font-size: 13px;
    white-space: nowrap;
}

.filter.active,
.filter:hover {
    background: var(--accent);
    color: white;
}

/* =========================================================
   PRODUCTS
========================================================= */

.products {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 18px;
}

.product {
    background: var(--white);
    border: 1px solid var(--border);
    border-radius: 14px;
    overflow: hidden;
    transition: .25s;
    position: relative;
}

.product:hover {
    transform: translateY(-5px);
    box-shadow: var(--shadow-lg);
}

.product-image {
    height: 245px;
    background: var(--light);
    position: relative;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .4s;
}

.product:hover .product-image img {
    transform: scale(1.06);
}

.product-badge {
    position: absolute;
    top: 12px;
    left: 12px;
    background: var(--accent);
    color: white;
    padding: 5px 9px;
    border-radius: 5px;
    font-size: 10px;
    font-weight: 800;
    text-transform: uppercase;
}

.product-badge.sale {
    background: var(--green);
}

.wishlist {
    position: absolute;
    right: 12px;
    top: 12px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background: white;
    color: #6b7280;
    display: grid;
    place-items: center;
    box-shadow: var(--shadow);
}

.wishlist.active {
    color: var(--accent);
}

.product-info {
    padding: 16px;
}

.product-category {
    color: var(--secondary);
    font-size: 11px;
    text-transform: uppercase;
    font-weight: 700;
}

.product-title {
    font-size: 15px;
    font-weight: 700;
    margin: 5px 0 8px;

    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.rating {
    font-size: 12px;
    color: var(--yellow);
}

.rating span {
    color: var(--secondary);
}

.price-row {
    display: flex;
    align-items: center;
    gap: 9px;
    margin-top: 9px;
}

.price {
    font-size: 18px;
    font-weight: 800;
}

.old-price {
    color: var(--secondary);
    font-size: 12px;
    text-decoration: line-through;
}

.product-actions {
    display: flex;
    gap: 8px;
    margin-top: 13px;
}

.add-cart {
    flex: 1;
    height: 40px;
    border-radius: 7px;
    background: var(--primary);
    color: var(--white);
    font-weight: 700;
}

.add-cart:hover {
    background: var(--accent);
}

.quick-view {
    width: 40px;
    height: 40px;
    border: 1px solid var(--border);
    border-radius: 7px;
    background: var(--white);
}

/* =========================================================
   DEAL
========================================================= */

.deal {
    margin-top: 55px;
    border-radius: 18px;
    overflow: hidden;
    background: #111827;
    color: white;
    display: grid;
    grid-template-columns: 1fr 1fr;
}

.deal-image {
    min-height: 360px;
    background:
        url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85")
        center/cover;
}

.deal-content {
    padding: 45px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.deal-label {
    color: #ffb4b4;
    font-weight: 800;
    font-size: 12px;
    text-transform: uppercase;
}

.deal h2 {
    font-size: 34px;
    margin: 10px 0;
}

.deal p {
    color: #9ca3af;
    margin-bottom: 18px;
}

.deal-price {
    font-size: 34px;
    font-weight: 800;
}

.deal-price del {
    font-size: 17px;
    color: #6b7280;
    font-weight: 400;
    margin-left: 8px;
}

.timer {
    display: flex;
    gap: 8px;
    margin: 22px 0;
}

.timer-box {
    width: 62px;
    height: 62px;
    background: #1f2937;
    border-radius: 8px;
    display: grid;
    place-items: center;
    align-content: center;
}

.timer-box strong {
    font-size: 20px;
}

.timer-box span {
    font-size: 9px;
    color: #9ca3af;
    text-transform: uppercase;
}

/* =========================================================
   FEATURES
========================================================= */

.features {
    margin-top: 55px;
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 12px;
}

.feature {
    background: var(--white);
    border: 1px solid var(--border);
    padding: 22px;
    border-radius: 12px;
    display: flex;
    gap: 14px;
    align-items: center;
}

.feature i {
    font-size: 22px;
    color: var(--accent);
}

.feature h4 {
    font-size: 13px;
}

.feature p {
    color: var(--secondary);
    font-size: 11px;
}

/* =========================================================
   REVIEWS
========================================================= */

.reviews {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 18px;
}

.review {
    background: var(--white);
    border: 1px solid var(--border);
    border-radius: 13px;
    padding: 24px;
}

.review-stars {
    color: var(--yellow);
    margin-bottom: 13px;
}

.review p {
    font-size: 14px;
    color: var(--secondary);
    margin-bottom: 18px;
}

.reviewer {
    display: flex;
    align-items: center;
    gap: 10px;
}

.reviewer img {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    object-fit: cover;
}

.reviewer strong {
    display: block;
    font-size: 13px;
}

.reviewer small {
    color: var(--secondary);
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    margin-top: 55px;
    background: var(--accent);
    color: white;
    border-radius: 18px;
    padding: 40px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 30px;
}

.newsletter h2 {
    font-size: 26px;
}

.newsletter p {
    opacity: .8;
    font-size: 13px;
}

.newsletter-form {
    display: flex;
    min-width: 420px;
}

.newsletter-form input {
    flex: 1;
    border: 0;
    outline: none;
    padding: 14px 17px;
    border-radius: 7px 0 0 7px;
}

.newsletter-form button {
    background: #111827;
    color: white;
    padding: 0 22px;
    border-radius: 0 7px 7px 0;
    font-weight: 700;
}

/* =========================================================
   FOOTER
========================================================= */

footer {
    margin-top: 55px;
    background: #111827;
    color: white;
    padding: 50px 0 25px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 40px;
}

.footer-logo {
    font-size: 22px;
    font-weight: 800;
    margin-bottom: 12px;
}

.footer-logo span {
    color: var(--accent);
}

.footer-about {
    color: #9ca3af;
    font-size: 13px;
    max-width: 300px;
}

.footer h4 {
    margin-bottom: 14px;
}

.footer ul {
    list-style: none;
}

.footer li {
    margin-bottom: 8px;
}

.footer li a {
    color: #9ca3af;
    font-size: 13px;
}

.footer li a:hover {
    color: white;
}

.social {
    display: flex;
    gap: 8px;
    margin-top: 18px;
}

.social a {
    width: 35px;
    height: 35px;
    border-radius: 7px;
    background: #1f2937;
    display: grid;
    place-items: center;
}

.footer-bottom {
    border-top: 1px solid #374151;
    margin-top: 35px;
    padding-top: 20px;
    text-align: center;
    color: #6b7280;
    font-size: 12px;
}

/* =========================================================
   CART DRAWER
========================================================= */

.cart-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.45);
    z-index: 2000;
    opacity: 0;
    pointer-events: none;
    transition: .25s;
}

.cart-overlay.open {
    opacity: 1;
    pointer-events: auto;
}

.cart-drawer {
    position: fixed;
    top: 0;
    right: -420px;
    width: 400px;
    max-width: 100%;
    height: 100vh;
    background: var(--white);
    z-index: 2001;
    transition: .3s;
    display: flex;
    flex-direction: column;
}

.cart-drawer.open {
    right: 0;
}

.cart-header {
    height: 70px;
    padding: 0 20px;
    border-bottom: 1px solid var(--border);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.close-cart {
    width: 36px;
    height: 36px;
    border-radius: 7px;
    background: var(--light);
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 18px;
}

.cart-empty {
    text-align: center;
    padding: 70px 20px;
    color: var(--secondary);
}

.cart-empty i {
    font-size: 45px;
    margin-bottom: 15px;
}

.cart-item {
    display: flex;
    gap: 12px;
    padding: 12px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 70px;
    height: 70px;
    object-fit: cover;
    border-radius: 8px;
}

.cart-item-info {
    flex: 1;
}

.cart-item-info h4 {
    font-size: 13px;
}

.cart-item-info p {
    font-size: 13px;
    font-weight: 700;
    margin-top: 5px;
}

.remove-item {
    color: var(--secondary);
}

.cart-footer {
    border-top: 1px solid var(--border);
    padding: 20px;
}

.cart-total {
    display: flex;
    justify-content: space-between;
    font-weight: 800;
    margin-bottom: 15px;
}

.checkout-btn {
    width: 100%;
    height: 48px;
    background: var(--accent);
    color: white;
    border-radius: 8px;
    font-weight: 800;
}

/* =========================================================
   TOAST
========================================================= */

.toast {
    position: fixed;
    right: 22px;
    bottom: 22px;
    background: #111827;
    color: white;
    padding: 13px 18px;
    border-radius: 8px;
    z-index: 3000;
    transform: translateY(100px);
    opacity: 0;
    transition: .3s;
    font-size: 13px;
}

.toast.show {
    transform: translateY(0);
    opacity: 1;
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1100px) {

    .header-main {
        gap: 14px;
    }

    .category-row {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(3,1fr);
    }

    .hero-grid {
        grid-template-columns: 1fr;
    }

    .hero-side {
        grid-template-columns: 1fr 1fr;
        grid-template-rows: auto;
    }

    .features {
        grid-template-columns: repeat(2,1fr);
    }
}

@media(max-width:800px) {

    .top-bar {
        display: none;
    }

    .header-main {
        min-height: 65px;
    }

    .mobile-menu-btn {
        display: block;
    }

    .logo {
        font-size: 19px;
    }

    .logo-icon {
        width: 35px;
        height: 35px;
    }

    .search-area {
        position: absolute;
        top: 70px;
        left: 15px;
        right: 15px;
        max-width: none;
        height: 44px;
    }

    .search-area select {
        display: none;
    }

    .header-main {
        padding-bottom: 60px;
    }

    .nav {
        display: none;
    }

    .mobile-nav {
        display: none;
        border-top: 1px solid var(--border);
        padding: 10px 0;
    }

    .mobile-nav.open {
        display: block;
    }

    .mobile-nav a {
        display: block;
        padding: 12px 20px;
        font-size: 14px;
        font-weight: 600;
    }

    .header-action small {
        display: none;
    }

    .hero-main {
        min-height: 350px;
        padding: 35px 25px;
    }

    .hero h1 {
        font-size: 36px;
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-image {
        min-height: 250px;
    }

    .reviews {
        grid-template-columns: 1fr;
    }

    .newsletter {
        flex-direction: column;
        align-items: stretch;
    }

    .newsletter-form {
        min-width: 0;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }
}

@media(max-width:500px) {

    .container {
        padding: 0 14px;
    }

    .header-actions {
        gap: 0;
    }

    .header-action {
        min-width: 38px;
    }

    .hero-side {
        grid-template-columns: 1fr;
    }

    .hero h1 {
        font-size: 29px;
    }

    .hero-buttons {
        flex-direction: column;
    }

    .hero-buttons .btn {
        width: 100%;
    }

    .category-row {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: repeat(2,1fr);
        gap: 10px;
    }

    .product-image {
        height: 170px;
    }

    .product-info {
        padding: 12px;
    }

    .product-title {
        font-size: 13px;
    }

    .price {
        font-size: 16px;
    }

    .quick-view {
        display: none;
    }

    .deal-content {
        padding: 28px 20px;
    }

    .deal h2 {
        font-size: 27px;
    }

    .features {
        grid-template-columns: 1fr;
    }

    .newsletter {
        padding: 28px 20px;
    }

    .newsletter-form {
        flex-direction: column;
        gap: 8px;
    }

    .newsletter-form input,
    .newsletter-form button {
        height: 45px;
        border-radius: 7px;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}

</style>
</head>

<body>

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="top-bar">
    <div class="container top-bar-inner">
        <span>🚚 Free shipping on orders over $50</span>
        <span>24/7 Customer Support</span>
    </div>
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-main">

        <button class="mobile-menu-btn" id="mobileMenuBtn">
            <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fas fa-bag-shopping"></i>
            </div>
            Nexus<span>Shop</span>
        </a>

        <div class="search-area">

            <select id="searchCategory">
                <option value="">All</option>
                <option value="Smartphones">Phones</option>
                <option value="Laptops">Laptops</option>
                <option value="Clothing">Clothing</option>
                <option value="Gadgets">Gadgets</option>
                <option value="Footwear">Footwear</option>
                <option value="Accessories">Accessories</option>
            </select>

            <input
                type="search"
                id="searchInput"
                placeholder="Search for products, brands and more..."
            >

            <button class="search-btn" id="searchBtn">
                <i class="fas fa-search"></i>
            </button>

        </div>


        <div class="header-actions">

            <button class="header-action" id="themeBtn" title="Theme">
                <i class="far fa-moon"></i>
            </button>

            <button class="header-action">
                <i class="far fa-user"></i>
                <small>Account</small>
            </button>

            <button class="header-action" id="wishlistBtn">
                <i class="far fa-heart"></i>
                <span class="count" id="wishlistCount">0</span>
            </button>

            <button class="header-action" id="cartBtn">
                <i class="fas fa-shopping-cart"></i>
                <small>Cart</small>
                <span class="count" id="cartCount">0</span>
            </button>

        </div>

    </div>


    <nav class="nav">

        <div class="container nav-inner">

            <a href="#" class="active">
                <i class="fas fa-house"></i> Home
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
                <i class="fas fa-bolt"></i> Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </div>

    </nav>


    <div class="mobile-nav" id="mobileNav">

        <a href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">New Arrivals</a>
        <a href="#products">Best Sellers</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>

    </div>

</header>


<main>


<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

    <div class="container">

        <div class="hero-grid">

            <div class="hero-main">

                <div class="hero-content">

                    <div class="hero-label">
                        <i class="fas fa-sparkles"></i>
                        New Collection 2026
                    </div>

                    <h1>
                        Everything you love.
                        All in one place.
                    </h1>

                    <p>
                        Discover trending fashion, powerful technology,
                        accessories and everyday essentials at amazing prices.
                    </p>

                    <div class="hero-buttons">

                        <button class="btn btn-primary" id="shopNow">
                            Shop Now
                            <i class="fas fa-arrow-right"></i>
                        </button>

                        <button class="btn btn-white" id="dealNow">
                            View Deals
                        </button>

                    </div>

                </div>

            </div>


            <div class="hero-side">

                <div class="promo-card">

                    <div>
                        <h3>Smart Watches</h3>
                        <p>Starting from $199</p>

                        <button class="btn btn-white">
                            Shop Now
                        </button>
                    </div>

                </div>


                <div class="promo-card">

                    <div>
                        <h3>Sports Shoes</h3>
                        <p>Up to 40% off</p>

                        <button class="btn btn-white">
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

<section class="section" id="categories">

    <div class="container">

        <div class="section-heading">

            <div>
                <h2>Shop by Category</h2>
                <p>Explore our most popular categories</p>
            </div>

            <a href="#" class="view-all">
                View all →
            </a>

        </div>


        <div class="category-row" id="categoryRow"></div>

    </div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section class="section" id="products">

    <div class="container">

        <div class="section-heading">

            <div>
                <h2>Trending Products</h2>
                <p>Popular products customers are loving right now</p>
            </div>

            <a href="#" class="view-all">
                View all →
            </a>

        </div>


        <div class="filter-bar">

            <button class="filter active" data-filter="All">
                All
            </button>

            <button class="filter" data-filter="Smartphones">
                Smartphones
            </button>

            <button class="filter" data-filter="Laptops">
                Laptops
            </button>

            <button class="filter" data-filter="Gadgets">
                Gadgets
            </button>

            <button class="filter" data-filter="Footwear">
                Footwear
            </button>

            <button class="filter" data-filter="Accessories">
                Accessories
            </button>

        </div>


        <div class="products" id="productsGrid"></div>

    </div>

</section>


<!-- =========================================================
     DEAL
========================================================= -->

<section class="container" id="deals">

    <div class="deal">

        <div class="deal-image"></div>

        <div class="deal-content">

            <span class="deal-label">
                ⚡ Limited Time Offer
            </span>

            <h2>MacBook Air M2</h2>

            <p>
                Lightweight. Powerful. Beautiful.
                Get the MacBook Air M2 before this deal ends.
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
                    <span>Mins</span>
                </div>

                <div class="timer-box">
                    <strong id="seconds">00</strong>
                    <span>Secs</span>
                </div>

            </div>

            <button class="btn btn-primary" id="dealCart">
                <i class="fas fa-cart-plus"></i>
                Add Deal to Cart
            </button>

        </div>

    </div>

</section>


<!-- =========================================================
     FEATURES
========================================================= -->

<section class="container">

    <div class="features">

        <div class="feature">
            <i class="fas fa-truck-fast"></i>
            <div>
                <h4>Free Shipping</h4>
                <p>On orders over $50</p>
            </div>
        </div>

        <div class="feature">
            <i class="fas fa-rotate-left"></i>
            <div>
                <h4>Easy Returns</h4>
                <p>30 day return policy</p>
            </div>
        </div>

        <div class="feature">
            <i class="fas fa-shield-halved"></i>
            <div>
                <h4>Secure Payment</h4>
                <p>100% secure checkout</p>
            </div>
        </div>

        <div class="feature">
            <i class="fas fa-headset"></i>
            <div>
                <h4>24/7 Support</h4>
                <p>We're always here</p>
            </div>
        </div>

    </div>

</section>


<!-- =========================================================
     REVIEWS
========================================================= -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-heading">

            <div>
                <h2>What Customers Say</h2>
                <p>Thousands of happy shoppers</p>
            </div>

        </div>


        <div class="reviews">

            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "The ordering process was extremely smooth.
                    My product arrived earlier than expected."
                </p>

                <div class="reviewer">

                    <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Ava Martin</strong>
                        <small>Verified Buyer</small>
                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "Excellent prices and a very good selection.
                    Definitely coming back for my next purchase."
                </p>

                <div class="reviewer">

                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Michael Lee</strong>
                        <small>Frequent Shopper</small>
                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "Great quality, beautiful packaging and fast
                    delivery. Highly recommended."
                </p>

                <div class="reviewer">

                    <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Sophia Chen</strong>
                        <small>Verified Buyer</small>
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
            <h2>Get the best deals first.</h2>
            <p>
                Subscribe and receive exclusive offers and new arrivals.
            </p>
        </div>

        <form class="newsletter-form" id="newsletterForm">

            <input
                type="email"
                id="email"
                placeholder="Enter your email"
                required
            >

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
                    Your modern destination for technology,
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


            <div>

                <h4>Shop</h4>

                <ul>
                    <li><a href="#">All Products</a></li>
                    <li><a href="#">New Arrivals</a></li>
                    <li><a href="#">Best Sellers</a></li>
                    <li><a href="#">Deals</a></li>
                </ul>

            </div>


            <div>

                <h4>Help</h4>

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
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                </ul>

            </div>

        </div>


        <div class="footer-bottom">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>


<!-- =========================================================
     CART DRAWER
========================================================= -->

<div class="cart-overlay" id="cartOverlay"></div>

<div class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>
            Your Cart
            (<span id="cartTitleCount">0</span>)
        </h3>

        <button class="close-cart" id="closeCart">
            <i class="fas fa-xmark"></i>
        </button>

    </div>


    <div class="cart-items" id="cartItems">

        <div class="cart-empty">

            <i class="fas fa-cart-shopping"></i>

            <h3>Your cart is empty</h3>

            <p>Add products to get started.</p>

        </div>

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>Total</span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button class="checkout-btn" id="checkoutBtn">
            Proceed to Checkout
        </button>

    </div>

</div>


<!-- TOAST -->

<div class="toast" id="toast"></div>


<script>

/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [
    {
        name: "Smartphones",
        icon: "fa-mobile-screen-button",
        count: 24
    },
    {
        name: "Laptops",
        icon: "fa-laptop",
        count: 18
    },
    {
        name: "Clothing",
        icon: "fa-shirt",
        count: 42
    },
    {
        name: "Gadgets",
        icon: "fa-headphones",
        count: 31
    },
    {
        name: "Footwear",
        icon: "fa-shoe-prints",
        count: 27
    },
    {
        name: "Accessories",
        icon: "fa-watch",
        count: 39
    }
];


const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        category: "Smartphones",
        img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        badge: "",
        category: "Laptops",
        img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",
        category: "Accessories",
        img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "",
        category: "Footwear",
        img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "New",
        category: "Gadgets",
        img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 6,
        title: "Premium Perfume",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "",
        category: "Accessories",
        img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        category: "Accessories",
        img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "",
        category: "Gadgets",
        img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
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

function renderCategories() {

    categoryRow.innerHTML = "";

    CATEGORIES.forEach(category => {

        const element = document.createElement("button");

        element.className = "category";

        element.innerHTML = `
            <div class="category-icon">
                <i class="fas ${category.icon}"></i>
            </div>

            <h4>${category.name}</h4>

            <small>${category.count} items</small>
        `;

        element.onclick = () => {

            document.getElementById("searchInput").value =
                category.name;

            filterProducts(category.name);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        };

        categoryRow.appendChild(element);

    });

}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(list) {

    productsGrid.innerHTML = "";

    if (!list.length) {

        productsGrid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:60px;
                color:var(--secondary);
            ">
                <i class="fas fa-box-open"
                   style="font-size:40px;margin-bottom:15px">
                </i>

                <h3>No products found</h3>

                <p>Try another search.</p>
            </div>
        `;

        return;
    }


    list.forEach(product => {

        const card =
            document.createElement("article");

        card.className = "product";

        const isWishlisted =
            wishlist.includes(product.id);

        const badge =
            product.badge
                ? `
                    <span class="product-badge
                    ${product.badge === "Sale" ? "sale" : ""}">
                        ${product.badge}
                    </span>
                  `
                : "";


        card.innerHTML = `

            <div class="product-image">

                <img
                    src="${product.img}"
                    alt="${product.title}"
                    loading="lazy"
                >

                ${badge}

                <button
                    class="wishlist ${isWishlisted ? "active" : ""}"
                    data-id="${product.id}"
                >
                    <i class="${isWishlisted
                        ? "fas"
                        : "far"} fa-heart">
                    </i>
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
                    <span>(${product.reviews})</span>
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
                        data-id="${product.id}"
                    >
                        <i class="fas fa-cart-plus"></i>
                        Add to Cart
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

function attachProductEvents() {

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

function addToCart(id) {

    const product =
        PRODUCTS.find(p => p.id === id);

    if (!product) return;

    const existing =
        cart.find(item => item.id === id);

    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            ...product,
            quantity: 1
        });

    }

    updateCart();

    showToast(
        `${product.title} added to cart`
    );

}


function updateCart() {

    const totalItems =
        cart.reduce(
            (sum,item) => sum + item.quantity,
            0
        );

    cartCount.textContent = totalItems;

    cartTitleCount.textContent = totalItems;


    if (!cart.length) {

        cartItems.innerHTML = `
            <div class="cart-empty">

                <i class="fas fa-cart-shopping"></i>

                <h3>Your cart is empty</h3>

                <p>Add products to get started.</p>

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

            <img src="${item.img}">

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
                data-id="${item.id}"
            >
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

function toggleWishlist(id) {

    const index =
        wishlist.indexOf(id);

    const product =
        PRODUCTS.find(p => p.id === id);


    if (index === -1) {

        wishlist.push(id);

        showToast(
            `${product.title} added to wishlist`
        );

    } else {

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
   FILTER
========================================================= */

function filterProducts(query) {

    const search =
        query.toLowerCase().trim();

    const category =
        document.getElementById(
            "searchCategory"
        ).value;


    const filtered =
        PRODUCTS.filter(product => {

            const matchesSearch =
                !search ||
                product.title
                    .toLowerCase()
                    .includes(search) ||
                product.category
                    .toLowerCase()
                    .includes(search);

            const matchesCategory =
                !category ||
                product.category === category;

            return matchesSearch &&
                   matchesCategory;

        });


    renderProducts(filtered);

}


function getCurrentProducts() {

    const search =
        document
            .getElementById("searchInput")
            .value
            .toLowerCase()
            .trim();

    if (!search) return PRODUCTS;

    return PRODUCTS.filter(product =>
        product.title
            .toLowerCase()
            .includes(search) ||
        product.category
            .toLowerCase()
            .includes(search)
    );

}


/* =========================================================
   SEARCH
========================================================= */

document
    .getElementById("searchBtn")
    .onclick = () => {

        filterProducts(
            document
                .getElementById("searchInput")
                .value
        );

    };


document
    .getElementById("searchInput")
    .addEventListener(
        "input",
        e => filterProducts(e.target.value)
    );


document
    .getElementById("searchInput")
    .addEventListener(
        "keydown",
        e => {

            if (e.key === "Enter") {

                filterProducts(e.target.value);

            }

        }
    );


/* =========================================================
   FILTER BUTTONS
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

            if (filter === "All") {

                renderProducts(PRODUCTS);

            } else {

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

function openCart() {

    cartDrawer.classList.add("open");

    cartOverlay.classList.add("open");

}


function closeCart() {

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
   DEAL
========================================================= */

document
    .getElementById("dealCart")
    .onclick = () => {

        addToCart(2);

        openCart();

    };


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


/* =========================================================
   TIMER
========================================================= */

const dealEnd =
    new Date(
        Date.now() + 24 * 60 * 60 * 1000
    );


function updateTimer() {

    const diff =
        dealEnd - new Date();

    if (diff <= 0) return;


    const days =
        Math.floor(
            diff / (1000*60*60*24)
        );

    const hours =
        Math.floor(
            (diff / (1000*60*60)) % 24
        );

    const minutes =
        Math.floor(
            (diff / (1000*60)) % 60
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
            document
                .querySelector("#themeBtn i");

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

        if (!email) return;

        showToast(
            "🎉 Thanks for subscribing!"
        );

        e.target.reset();

    };


/* =========================================================
   TOAST
========================================================= */

let toastTimer;

function showToast(message) {

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

        if (!cart.length) {

            showToast(
                "Your cart is empty"
            );

            return;

        }

        showToast(
            "Checkout page coming soon!"
        );

    };


/* =========================================================
   INIT
========================================================= */

document.getElementById("year")
    .textContent =
    new Date().getFullYear();

renderCategories();

renderProducts(PRODUCTS);

updateCart();


</script>

</body>
</html>
