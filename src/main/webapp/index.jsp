<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop - Emerald Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        /* =========================================
           THEME
        ========================================= */
        :root {
            --primary: #10B981;
            --primary-dark: #059669;
            --primary-light: #D1FAE5;

            --secondary: #0F172A;
            --secondary-light: #1E293B;

            --accent: #F59E0B;
            --danger: #EF4444;
            --success: #22C55E;

            --bg: #F8FAFC;
            --surface: #FFFFFF;
            --surface-hover: #F1F5F9;

            --text: #0F172A;
            --text-secondary: #64748B;
            --border: #E2E8F0;

            --shadow: 0 10px 30px rgba(15, 23, 42, 0.08);
            --shadow-hover: 0 18px 40px rgba(15, 23, 42, 0.14);

            --radius: 18px;
        }

        body.dark {
            --bg: #07111F;
            --surface: #0F1B2D;
            --surface-hover: #162438;

            --text: #F8FAFC;
            --text-secondary: #94A3B8;
            --border: #23334A;

            --secondary: #F8FAFC;
            --secondary-light: #CBD5E1;

            --shadow: 0 10px 30px rgba(0,0,0,.25);
            --shadow-hover: 0 18px 40px rgba(0,0,0,.35);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background: var(--bg);
            color: var(--text);
            transition: .3s ease;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            width: min(1180px, 92%);
            margin: auto;
        }

        /* =========================================
           TOP BAR
        ========================================= */
        .topbar {
            background: var(--secondary);
            color: white;
            padding: 9px 0;
            font-size: 13px;
        }

        .topbar-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .topbar-left,
        .topbar-right {
            display: flex;
            gap: 22px;
            align-items: center;
        }

        .topbar i {
            color: var(--primary);
            margin-right: 5px;
        }

        /* =========================================
           HEADER
        ========================================= */
        header {
            background: var(--surface);
            position: sticky;
            top: 0;
            z-index: 1000;
            border-bottom: 1px solid var(--border);
        }

        .header-main {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 23px;
            font-weight: 800;
            min-width: 170px;
        }

        .logo-icon {
            width: 42px;
            height: 42px;
            border-radius: 13px;
            background: var(--primary);
            color: white;
            display: grid;
            place-items: center;
            font-size: 19px;
        }

        .logo span {
            color: var(--primary);
        }

        /* Search */
        .search-box {
            flex: 1;
            position: relative;
        }

        .search-box input {
            width: 100%;
            height: 46px;
            border: 1px solid var(--border);
            background: var(--bg);
            border-radius: 13px;
            padding: 0 48px 0 18px;
            color: var(--text);
            outline: none;
            transition: .2s;
        }

        .search-box input:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px var(--primary-light);
        }

        .search-box i {
            position: absolute;
            right: 17px;
            top: 15px;
            color: var(--text-secondary);
        }

        /* Header Actions */
        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .action-btn {
            width: 43px;
            height: 43px;
            border: 1px solid var(--border);
            background: var(--surface);
            border-radius: 12px;
            color: var(--text);
            position: relative;
            transition: .2s;
        }

        .action-btn:hover {
            background: var(--primary-light);
            color: var(--primary-dark);
            border-color: var(--primary);
        }

        .count {
            position: absolute;
            right: -4px;
            top: -5px;
            min-width: 18px;
            height: 18px;
            padding: 0 5px;
            border-radius: 20px;
            background: var(--primary);
            color: white;
            font-size: 10px;
            display: grid;
            place-items: center;
            font-weight: 700;
        }

        .menu-btn {
            display: none;
        }

        /* =========================================
           NAV
        ========================================= */
        .nav {
            border-top: 1px solid var(--border);
        }

        .nav-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            min-height: 47px;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .nav-links a {
            font-size: 14px;
            font-weight: 600;
            color: var(--text-secondary);
            transition: .2s;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .nav-sale {
            color: var(--danger) !important;
        }

        /* =========================================
           HERO
        ========================================= */
        .hero {
            padding: 35px 0;
        }

        .hero-box {
            min-height: 475px;
            border-radius: 28px;
            overflow: hidden;
            position: relative;
            background:
                radial-gradient(circle at 80% 20%, rgba(16,185,129,.4), transparent 30%),
                linear-gradient(120deg, #0F172A 0%, #132A2C 55%, #064E3B 100%);
            color: white;
            display: grid;
            grid-template-columns: 1.05fr .95fr;
            align-items: center;
            padding: 65px;
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(16,185,129,.16);
            border: 1px solid rgba(16,185,129,.4);
            color: #6EE7B7;
            padding: 8px 13px;
            border-radius: 30px;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: clamp(38px, 5vw, 65px);
            line-height: 1.05;
            max-width: 600px;
            margin-bottom: 20px;
            letter-spacing: -2px;
        }

        .hero h1 span {
            color: #34D399;
        }

        .hero p {
            color: #CBD5E1;
            max-width: 510px;
            line-height: 1.8;
            font-size: 15px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: none;
            min-height: 46px;
            padding: 0 20px;
            border-radius: 12px;
            font-weight: 700;
            transition: .25s;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            gap: 9px;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }

        .btn-white {
            background: white;
            color: var(--secondary);
        }

        .btn-white:hover {
            transform: translateY(-2px);
        }

        .hero-product {
            position: relative;
            height: 100%;
            display: grid;
            place-items: center;
        }

        .hero-product img {
            width: min(440px, 100%);
            max-height: 390px;
            object-fit: contain;
            filter: drop-shadow(0 30px 35px rgba(0,0,0,.35));
            transform: rotate(-5deg);
        }

        .hero-price {
            position: absolute;
            right: 5%;
            bottom: 10%;
            background: white;
            color: var(--text);
            padding: 15px 20px;
            border-radius: 16px;
            box-shadow: var(--shadow);
        }

        .hero-price small {
            display: block;
            color: var(--text-secondary);
            font-size: 11px;
        }

        .hero-price strong {
            font-size: 25px;
        }

        /* =========================================
           SECTION
        ========================================= */
        section {
            padding: 45px 0;
        }

        .section-heading {
            display: flex;
            justify-content: space-between;
            align-items: end;
            margin-bottom: 25px;
        }

        .section-heading h2 {
            font-size: 27px;
            letter-spacing: -.8px;
        }

        .section-heading p {
            color: var(--text-secondary);
            font-size: 14px;
            margin-top: 6px;
        }

        .view-all {
            color: var(--primary);
            font-weight: 700;
            font-size: 14px;
        }

        /* =========================================
           CATEGORIES
        ========================================= */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 22px 10px;
            border-radius: 17px;
            text-align: center;
            transition: .25s;
        }

        .category:hover {
            border-color: var(--primary);
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 55px;
            height: 55px;
            margin: auto auto 12px;
            background: var(--primary-light);
            color: var(--primary-dark);
            display: grid;
            place-items: center;
            border-radius: 17px;
            font-size: 20px;
        }

        .category strong {
            display: block;
            font-size: 13px;
        }

        .category small {
            display: block;
            margin-top: 5px;
            color: var(--text-secondary);
            font-size: 11px;
        }

        /* =========================================
           FILTER
        ========================================= */
        .shop-toolbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            margin-bottom: 25px;
        }

        .filters {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .filter-btn {
            border: 1px solid var(--border);
            background: var(--surface);
            color: var(--text-secondary);
            border-radius: 30px;
            padding: 9px 15px;
            font-size: 12px;
            font-weight: 600;
        }

        .filter-btn.active,
        .filter-btn:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        .sort {
            border: 1px solid var(--border);
            background: var(--surface);
            color: var(--text);
            border-radius: 10px;
            padding: 10px 12px;
            outline: none;
        }

        /* =========================================
           PRODUCTS
        ========================================= */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 18px;
            overflow: hidden;
            transition: .25s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
        }

        .product-image {
            height: 220px;
            background: var(--surface-hover);
            position: relative;
            display: grid;
            place-items: center;
            overflow: hidden;
        }

        .product-image img {
            width: 85%;
            height: 85%;
            object-fit: contain;
            transition: .3s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.07);
        }

        .badge {
            position: absolute;
            left: 12px;
            top: 12px;
            background: var(--primary);
            color: white;
            padding: 5px 9px;
            border-radius: 7px;
            font-size: 10px;
            font-weight: 800;
        }

        .badge.sale {
            background: var(--danger);
        }

        .wishlist {
            position: absolute;
            right: 12px;
            top: 12px;
            width: 34px;
            height: 34px;
            border: none;
            background: var(--surface);
            color: var(--text-secondary);
            border-radius: 50%;
            box-shadow: 0 4px 15px rgba(0,0,0,.08);
        }

        .wishlist.active {
            color: var(--danger);
        }

        .product-info {
            padding: 16px;
        }

        .product-category {
            font-size: 10px;
            color: var(--primary);
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: .5px;
        }

        .product-title {
            font-size: 14px;
            margin: 7px 0;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 11px;
            margin-bottom: 13px;
        }

        .stars {
            color: var(--accent);
        }

        .rating span {
            color: var(--text-secondary);
        }

        .product-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price strong {
            font-size: 19px;
        }

        .old-price {
            color: var(--text-secondary);
            text-decoration: line-through;
            font-size: 11px;
            margin-left: 4px;
        }

        .add-cart {
            width: 38px;
            height: 38px;
            border: none;
            border-radius: 11px;
            background: var(--primary-light);
            color: var(--primary-dark);
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--primary);
            color: white;
        }

        /* =========================================
           DEAL
        ========================================= */
        .deal {
            background:
                radial-gradient(circle at 90% 20%, rgba(16,185,129,.35), transparent 25%),
                linear-gradient(110deg, #0F172A, #064E3B);
            border-radius: 25px;
            color: white;
            padding: 45px;
            display: grid;
            grid-template-columns: 1fr auto;
            align-items: center;
            gap: 30px;
            overflow: hidden;
        }

        .deal-label {
            color: #6EE7B7;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        .deal h2 {
            font-size: 32px;
            margin-bottom: 8px;
        }

        .deal p {
            color: #CBD5E1;
            font-size: 13px;
        }

        .timer {
            display: flex;
            gap: 8px;
            margin-top: 22px;
        }

        .time-box {
            width: 55px;
            height: 55px;
            background: rgba(255,255,255,.1);
            border: 1px solid rgba(255,255,255,.15);
            border-radius: 12px;
            display: grid;
            place-items: center;
        }

        .time-box strong {
            font-size: 18px;
        }

        .time-box small {
            font-size: 8px;
            color: #CBD5E1;
        }

        .deal-product {
            text-align: center;
        }

        .deal-product img {
            width: 230px;
            height: 190px;
            object-fit: contain;
            filter: drop-shadow(0 20px 20px rgba(0,0,0,.35));
        }

        /* =========================================
           FEATURES
        ========================================= */
        .features {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        .feature {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 22px;
            border-radius: 17px;
            display: flex;
            gap: 14px;
            align-items: center;
        }

        .feature-icon {
            width: 45px;
            height: 45px;
            flex-shrink: 0;
            display: grid;
            place-items: center;
            border-radius: 13px;
            background: var(--primary-light);
            color: var(--primary-dark);
        }

        .feature strong {
            display: block;
            font-size: 13px;
            margin-bottom: 4px;
        }

        .feature span {
            font-size: 11px;
            color: var(--text-secondary);
        }

        /* =========================================
           REVIEWS
        ========================================= */
        .reviews {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .review {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 24px;
            border-radius: 18px;
        }

        .review-stars {
            color: var(--accent);
            font-size: 12px;
            margin-bottom: 13px;
        }

        .review p {
            font-size: 13px;
            line-height: 1.7;
            color: var(--text-secondary);
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 20px;
        }

        .avatar {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: var(--primary-light);
            color: var(--primary-dark);
            display: grid;
            place-items: center;
            font-weight: 800;
            font-size: 13px;
        }

        .review-user strong {
            font-size: 12px;
        }

        .review-user small {
            display: block;
            color: var(--text-secondary);
            margin-top: 2px;
            font-size: 10px;
        }

        /* =========================================
           NEWSLETTER
        ========================================= */
        .newsletter {
            background: var(--primary-light);
            border-radius: 25px;
            padding: 45px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 25px;
        }

        body.dark .newsletter {
            background: #073B32;
        }

        .newsletter h2 {
            margin-bottom: 8px;
        }

        .newsletter p {
            color: var(--text-secondary);
            font-size: 13px;
        }

        .newsletter-form {
            display: flex;
            width: min(440px, 100%);
            background: var(--surface);
            padding: 5px;
            border-radius: 12px;
            border: 1px solid var(--border);
        }

        .newsletter-form input {
            flex: 1;
            border: none;
            background: transparent;
            outline: none;
            color: var(--text);
            padding: 0 12px;
        }

        /* =========================================
           FOOTER
        ========================================= */
        footer {
            margin-top: 45px;
            background: var(--secondary);
            color: white;
            padding: 55px 0 20px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr repeat(3, 1fr);
            gap: 40px;
            padding-bottom: 40px;
        }

        .footer-brand p {
            color: #94A3B8;
            font-size: 13px;
            line-height: 1.7;
            max-width: 320px;
            margin-top: 15px;
        }

        footer h3 {
            font-size: 14px;
            margin-bottom: 17px;
        }

        footer ul {
            list-style: none;
        }

        footer li {
            margin-bottom: 10px;
        }

        footer li a {
            color: #94A3B8;
            font-size: 12px;
        }

        footer li a:hover {
            color: #34D399;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255,255,255,.1);
            padding-top: 20px;
            display: flex;
            justify-content: space-between;
            color: #64748B;
            font-size: 11px;
        }

        .socials {
            display: flex;
            gap: 8px;
        }

        .socials a {
            width: 32px;
            height: 32px;
            border: 1px solid rgba(255,255,255,.1);
            border-radius: 8px;
            display: grid;
            place-items: center;
        }

        .socials a:hover {
            background: var(--primary);
        }

        /* =========================================
           CART DRAWER
        ========================================= */
        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.5);
            z-index: 1999;
            opacity: 0;
            visibility: hidden;
            transition: .3s;
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            right: -430px;
            top: 0;
            height: 100vh;
            width: min(430px, 100%);
            background: var(--surface);
            z-index: 2000;
            transition: .35s;
            display: flex;
            flex-direction: column;
            box-shadow: -15px 0 50px rgba(0,0,0,.15);
        }

        .cart-drawer.open {
            right: 0;
        }

        .cart-header {
            padding: 20px;
            border-bottom: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-header h2 {
            font-size: 18px;
        }

        .close-cart {
            border: none;
            background: var(--surface-hover);
            color: var(--text);
            width: 35px;
            height: 35px;
            border-radius: 9px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 15px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            padding: 12px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 75px;
            height: 75px;
            background: var(--surface-hover);
            border-radius: 11px;
            object-fit: contain;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info strong {
            font-size: 13px;
        }

        .cart-item-info p {
            color: var(--text-secondary);
            font-size: 11px;
            margin-top: 5px;
        }

        .cart-item-info b {
            color: var(--primary-dark);
            font-size: 14px;
            display: block;
            margin-top: 7px;
        }

        .remove-item {
            border: none;
            background: none;
            color: var(--danger);
            font-size: 12px;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .cart-total strong:last-child {
            color: var(--primary);
            font-size: 21px;
        }

        .checkout {
            width: 100%;
        }

        .empty-cart {
            text-align: center;
            padding: 70px 20px;
            color: var(--text-secondary);
        }

        .empty-cart i {
            font-size: 40px;
            margin-bottom: 15px;
            color: var(--primary);
        }

        /* =========================================
           TOAST
        ========================================= */
        .toast {
            position: fixed;
            right: 20px;
            bottom: 20px;
            background: var(--secondary);
            color: white;
            padding: 13px 18px;
            border-radius: 12px;
            font-size: 12px;
            z-index: 3000;
            transform: translateY(100px);
            opacity: 0;
            transition: .3s;
            box-shadow: var(--shadow);
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================================
           RESPONSIVE
        ========================================= */
        @media(max-width: 1000px) {
            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .features {
                grid-template-columns: repeat(2, 1fr);
            }

            .hero-box {
                padding: 45px;
            }
        }

        @media(max-width: 760px) {
            .topbar {
                display: none;
            }

            .header-main {
                min-height: 65px;
                gap: 8px;
            }

            .logo {
                min-width: auto;
                font-size: 18px;
            }

            .logo-icon {
                width: 36px;
                height: 36px;
            }

            .header-actions .account {
                display: none;
            }

            .search-box {
                order: 5;
                flex-basis: 100%;
            }

            .header-main {
                flex-wrap: wrap;
                padding: 10px 0;
            }

            .nav {
                display: none;
            }

            .nav.mobile-open {
                display: block;
            }

            .nav-content {
                padding: 10px 0;
            }

            .nav-links {
                flex-direction: column;
                gap: 16px;
            }

            .menu-btn {
                display: block;
            }

            .hero {
                padding-top: 20px;
            }

            .hero-box {
                grid-template-columns: 1fr;
                padding: 35px 25px;
                min-height: auto;
            }

            .hero-product {
                min-height: 260px;
            }

            .hero-product img {
                width: 280px;
            }

            .hero h1 {
                font-size: 40px;
            }

            .hero-price {
                right: 5%;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .product-image {
                height: 170px;
            }

            .section-heading {
                align-items: start;
            }

            .shop-toolbar {
                flex-direction: column;
                align-items: stretch;
            }

            .filters {
                overflow-x: auto;
                flex-wrap: nowrap;
                padding-bottom: 5px;
            }

            .filter-btn {
                white-space: nowrap;
            }

            .sort {
                width: 100%;
            }

            .deal {
                grid-template-columns: 1fr;
                padding: 30px 25px;
            }

            .deal-product img {
                width: 200px;
            }

            .reviews {
                grid-template-columns: 1fr;
            }

            .newsletter {
                flex-direction: column;
                align-items: stretch;
                padding: 30px 25px;
            }

            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-brand {
                grid-column: 1/-1;
            }

            .footer-bottom {
                flex-direction: column;
                gap: 15px;
            }
        }

        @media(max-width: 450px) {
            .products {
                grid-template-columns: 1fr 1fr;
            }

            .product-image {
                height: 145px;
            }

            .product-info {
                padding: 12px;
            }

            .product-title {
                font-size: 12px;
            }

            .price strong {
                font-size: 16px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .features {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

            .hero h1 {
                font-size: 34px;
            }
        }
    </style>
</head>

<body>

<!-- =========================================
     TOP BAR
========================================= -->
<div class="topbar">
    <div class="container topbar-content">
        <div class="topbar-left">
            <span><i class="fa-solid fa-truck"></i> Free shipping over $50</span>
            <span><i class="fa-solid fa-shield-halved"></i> Secure payments</span>
        </div>

        <div class="topbar-right">
            <span>Help Center</span>
            <span>Track Order</span>
        </div>
    </div>
</div>

<!-- =========================================
     HEADER
========================================= -->
<header>

    <div class="container header-main">

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>
            Nexus<span>Shop</span>
        </a>

        <div class="search-box">
            <input
                type="text"
                id="searchInput"
                placeholder="Search products, categories..."
            >
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>

        <div class="header-actions">

            <button class="action-btn" id="themeBtn" title="Toggle theme">
                <i class="fa-solid fa-moon"></i>
            </button>

            <button class="action-btn account" title="Account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="action-btn" id="wishlistBtn" title="Wishlist">
                <i class="fa-regular fa-heart"></i>
                <span class="count" id="wishlistCount">0</span>
            </button>

            <button class="action-btn" id="cartBtn" title="Cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="count" id="cartCount">0</span>
            </button>

            <button class="action-btn menu-btn" id="menuBtn">
                <i class="fa-solid fa-bars"></i>
            </button>

        </div>
    </div>

    <nav class="nav" id="nav">
        <div class="container nav-content">
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#products">Shop</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#reviews">Reviews</a></li>
                <li><a href="#newsletter">Contact</a></li>
                <li><a href="#deals" class="nav-sale">🔥 Flash Sale</a></li>
            </ul>
        </div>
    </nav>

</header>

<!-- =========================================
     HERO
========================================= -->
<main>

<section class="hero">
    <div class="container">

        <div class="hero-box">

            <div class="hero-content">

                <div class="hero-label">
                    <i class="fa-solid fa-bolt"></i>
                    NEW SEASON COLLECTION
                </div>

                <h1>
                    Shop smarter.<br>
                    Live <span>better.</span>
                </h1>

                <p>
                    Discover premium technology, fashion, accessories
                    and everyday essentials — all in one place.
                    Quality products. Better prices. Faster delivery.
                </p>

                <div class="hero-buttons">
                    <button class="btn btn-primary" id="shopBtn">
                        Shop Collection
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-white" id="dealBtn">
                        View Deals
                    </button>
                </div>

            </div>

            <div class="hero-product">

                <img
                    src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=85"
                    alt="Featured smartphone"
                >

                <div class="hero-price">
                    <small>Starting from</small>
                    <strong>$699</strong>
                </div>

            </div>

        </div>

    </div>
</section>

<!-- =========================================
     CATEGORIES
========================================= -->
<section id="categories">
    <div class="container">

        <div class="section-heading">
            <div>
                <h2>Shop by category</h2>
                <p>Find exactly what you're looking for</p>
            </div>

            <a href="#products" class="view-all">
                View all →
            </a>
        </div>

        <div class="categories" id="categoriesList"></div>

    </div>
</section>

<!-- =========================================
     PRODUCTS
========================================= -->
<section id="products">
    <div class="container">

        <div class="section-heading">
            <div>
                <h2>Popular right now</h2>
                <p>Hand-picked products our customers love</p>
            </div>
        </div>

        <div class="shop-toolbar">

            <div class="filters" id="filters"></div>

            <select class="sort" id="sortSelect">
                <option value="default">Sort: Featured</option>
                <option value="low">Price: Low to High</option>
                <option value="high">Price: High to Low</option>
                <option value="rating">Top Rated</option>
            </select>

        </div>

        <div class="products" id="productsList"></div>

    </div>
</section>

<!-- =========================================
     DEAL
========================================= -->
<section id="deals">
    <div class="container">

        <div class="deal">

            <div>
                <div class="deal-label">
                    <i class="fa-solid fa-bolt"></i>
                    Limited Time Offer
                </div>

                <h2>Big Tech. Small Price.</h2>

                <p>
                    Grab our featured laptop before the deal disappears.
                </p>

                <div class="timer">

                    <div class="time-box">
                        <strong id="hours">24</strong>
                        <small>HOURS</small>
                    </div>

                    <div class="time-box">
                        <strong id="minutes">00</strong>
                        <small>MIN</small>
                    </div>

                    <div class="time-box">
                        <strong id="seconds">00</strong>
                        <small>SEC</small>
                    </div>

                </div>

                <button
                    class="btn btn-primary"
                    style="margin-top:22px"
                    id="dealCartBtn"
                >
                    Grab Deal
                    <i class="fa-solid fa-cart-plus"></i>
                </button>

            </div>

            <div class="deal-product">
                <img
                    src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=85"
                    alt="MacBook"
                >
            </div>

        </div>

    </div>
</section>

<!-- =========================================
     FEATURES
========================================= -->
<section>
    <div class="container">

        <div class="features">

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>
                <div>
                    <strong>Fast Delivery</strong>
                    <span>Quick & reliable shipping</span>
                </div>
            </div>

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>
                <div>
                    <strong>Secure Payment</strong>
                    <span>100% protected checkout</span>
                </div>
            </div>

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>
                <div>
                    <strong>Easy Returns</strong>
                    <span>30-day return policy</span>
                </div>
            </div>

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>
                <div>
                    <strong>24/7 Support</strong>
                    <span>We're here to help</span>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- =========================================
     REVIEWS
========================================= -->
<section id="reviews">
    <div class="container">

        <div class="section-heading">
            <div>
                <h2>What customers say</h2>
                <p>Real experiences from NexusShop customers</p>
            </div>
        </div>

        <div class="reviews">

            <div class="review">
                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "The entire shopping experience was smooth.
                    My phone arrived earlier than expected and the
                    packaging was excellent."
                </p>

                <div class="review-user">
                    <div class="avatar">RK</div>
                    <div>
                        <strong>Rahul Kumar</strong>
                        <small>Verified Buyer</small>
                    </div>
                </div>
            </div>

            <div class="review">
                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "Great prices and a very clean website.
                    I found exactly what I needed in just a few minutes."
                </p>

                <div class="review-user">
                    <div class="avatar">AS</div>
                    <div>
                        <strong>Ananya Sharma</strong>
                        <small>Verified Buyer</small>
                    </div>
                </div>
            </div>

            <div class="review">
                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "Customer support was fantastic. My issue was
                    resolved quickly and my replacement arrived safely."
                </p>

                <div class="review-user">
                    <div class="avatar">VM</div>
                    <div>
                        <strong>Vikram Mehta</strong>
                        <small>Verified Buyer</small>
                    </div>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- =========================================
     NEWSLETTER
========================================= -->
<section id="newsletter">
    <div class="container">

        <div class="newsletter">

            <div>
                <h2>Get the best deals first.</h2>
                <p>
                    Subscribe for new arrivals, exclusive offers and discounts.
                </p>
            </div>

            <form class="newsletter-form" id="newsletterForm">
                <input
                    type="email"
                    placeholder="Enter your email"
                    required
                >

                <button class="btn btn-primary">
                    Subscribe
                </button>
            </form>

        </div>

    </div>
</section>

</main>

<!-- =========================================
     FOOTER
========================================= -->
<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <div class="logo">
                    <div class="logo-icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>
                    Nexus<span>Shop</span>
                </div>

                <p>
                    Your modern destination for technology,
                    fashion, gadgets and everyday essentials.
                </p>

                <div class="socials" style="margin-top:18px">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>

            </div>

            <div>
                <h3>Shop</h3>
                <ul>
                    <li><a href="#products">All Products</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#">New Arrivals</a></li>
                </ul>
            </div>

            <div>
                <h3>Support</h3>
                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Track Order</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>

            <div>
                <h3>Company</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                </ul>
            </div>

        </div>

        <div class="footer-bottom">
            <span>© <span id="year"></span> NexusShop. All rights reserved.</span>

            <span>
                Made for better shopping.
            </span>
        </div>

    </div>

</footer>

<!-- =========================================
     CART
========================================= -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">
        <h2>
            Your Cart
            <span id="cartHeaderCount"></span>
        </h2>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>
    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="cart-total">
            <strong>Total</strong>
            <strong id="cartTotal">$0</strong>
        </div>

        <button class="btn btn-primary checkout" id="checkoutBtn">
            Proceed to Checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>

<div class="toast" id="toast"></div>

<script>
    /* =========================================
       DATA
    ========================================= */

    const categories = [
        {
            name: "Smartphones",
            count: 24,
            icon: "fa-mobile-screen-button"
        },
        {
            name: "Laptops",
            count: 18,
            icon: "fa-laptop"
        },
        {
            name: "Clothing",
            count: 42,
            icon: "fa-shirt"
        },
        {
            name: "Gadgets",
            count: 31,
            icon: "fa-headphones"
        },
        {
            name: "Footwear",
            count: 27,
            icon: "fa-shoe-prints"
        },
        {
            name: "Accessories",
            count: 39,
            icon: "fa-watch"
        }
    ];

    const products = [
        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            category: "Smartphones",
            image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 2,
            title: 'MacBook Pro 14"',
            price: 1999,
            oldPrice: null,
            rating: 4,
            reviews: 86,
            badge: null,
            category: "Laptops",
            image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            oldPrice: null,
            rating: 4,
            reviews: 53,
            badge: null,
            category: "Footwear",
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            oldPrice: null,
            rating: 5,
            reviews: 42,
            badge: "New",
            category: "Gadgets",
            image: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 6,
            title: "Premium Perfume",
            price: 120,
            oldPrice: null,
            rating: 5,
            reviews: 189,
            badge: null,
            category: "Accessories",
            image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
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
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            oldPrice: null,
            rating: 5,
            reviews: 156,
            badge: null,
            category: "Gadgets",
            image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
        }
    ];

    let cart = [];
    let wishlist = [];
    let currentCategory = "All";

    /* =========================================
       ELEMENTS
    ========================================= */

    const productsList = document.getElementById("productsList");
    const categoriesList = document.getElementById("categoriesList");
    const filters = document.getElementById("filters");

    const searchInput = document.getElementById("searchInput");
    const sortSelect = document.getElementById("sortSelect");

    const cartDrawer = document.getElementById("cartDrawer");
    const overlay = document.getElementById("overlay");
    const cartItems = document.getElementById("cartItems");

    const cartCount = document.getElementById("cartCount");
    const wishlistCount = document.getElementById("wishlistCount");
    const cartTotal = document.getElementById("cartTotal");
    const cartHeaderCount = document.getElementById("cartHeaderCount");

    const toast = document.getElementById("toast");

    /* =========================================
       CATEGORIES
    ========================================= */

    function renderCategories() {

        categoriesList.innerHTML = categories.map(category => `
            <div
                class="category"
                onclick="selectCategory('${category.name}')"
            >
                <div class="category-icon">
                    <i class="fa-solid ${category.icon}"></i>
                </div>

                <strong>${category.name}</strong>
                <small>${category.count} products</small>
            </div>
        `).join("");
    }

    /* =========================================
       FILTERS
    ========================================= */

    function renderFilters() {

        const names = ["All", ...categories.map(c => c.name)];

        filters.innerHTML = names.map(name => `
            <button
                class="filter-btn ${name === currentCategory ? "active" : ""}"
                onclick="selectCategory('${name}')"
            >
                ${name}
            </button>
        `).join("");
    }

    /* =========================================
       PRODUCTS
    ========================================= */

    function renderProducts(list = products) {

        if (!list.length) {

            productsList.innerHTML = `
                <div style="
                    grid-column:1/-1;
                    text-align:center;
                    padding:70px 20px;
                    color:var(--text-secondary);
                ">
                    <i
                        class="fa-solid fa-magnifying-glass"
                        style="font-size:35px;color:var(--primary);margin-bottom:15px"
                    ></i>

                    <h3>No products found</h3>

                    <p style="margin-top:8px">
                        Try another search or category.
                    </p>
                </div>
            `;

            return;
        }

        productsList.innerHTML = list.map(product => {

            const wished = wishlist.includes(product.id);

            const stars = "★".repeat(product.rating) +
                          "☆".repeat(5 - product.rating);

            return `
                <article class="product-card">

                    <div class="product-image">

                        ${
                            product.badge
                            ?
                            `<span class="badge ${product.badge === "Sale" ? "sale" : ""}">
                                ${product.badge}
                            </span>`
                            :
                            ""
                        }

                        <button
                            class="wishlist ${wished ? "active" : ""}"
                            onclick="toggleWishlist(${product.id})"
                            title="Wishlist"
                        >
                            <i class="${wished ? "fa-solid" : "fa-regular"} fa-heart"></i>
                        </button>

                        <img
                            src="${product.image}"
                            alt="${product.title}"
                            loading="lazy"
                        >

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            ${product.category}
                        </div>

                        <h3 class="product-title">
                            ${product.title}
                        </h3>

                        <div class="rating">
                            <span class="stars">${stars}</span>
                            <span>(${product.reviews})</span>
                        </div>

                        <div class="product-bottom">

                            <div class="price">

                                <strong>
                                    $${product.price.toLocaleString()}
                                </strong>

                                ${
                                    product.oldPrice
                                    ?
                                    `<span class="old-price">
                                        $${product.oldPrice.toLocaleString()}
                                    </span>`
                                    :
                                    ""
                                }

                            </div>

                            <button
                                class="add-cart"
                                onclick="addToCart(${product.id})"
                                title="Add to cart"
                            >
                                <i class="fa-solid fa-plus"></i>
                            </button>

                        </div>

                    </div>

                </article>
            `;
        }).join("");
    }

    /* =========================================
       CATEGORY
    ========================================= */

    function selectCategory(category) {

        currentCategory = category;

        renderFilters();

        let filtered = products;

        if (category !== "All") {
            filtered = products.filter(
                product => product.category === category
            );
        }

        const query = searchInput.value.toLowerCase().trim();

        if (query) {
            filtered = filtered.filter(product =>
                product.title.toLowerCase().includes(query) ||
                product.category.toLowerCase().includes(query)
            );
        }

        renderProducts(filtered);

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });
    }

    /* =========================================
       SEARCH
    ========================================= */

    searchInput.addEventListener("input", filterProducts);

    function filterProducts() {

        let filtered = products;

        if (currentCategory !== "All") {
            filtered = filtered.filter(
                product => product.category === currentCategory
            );
        }

        const query = searchInput.value.toLowerCase().trim();

        if (query) {

            filtered = filtered.filter(product =>
                product.title.toLowerCase().includes(query) ||
                product.category.toLowerCase().includes(query)
            );
        }

        applySort(filtered);
    }

    /* =========================================
       SORT
    ========================================= */

    sortSelect.addEventListener("change", filterProducts);

    function applySort(list) {

        let sorted = [...list];

        if (sortSelect.value === "low") {
            sorted.sort((a,b) => a.price - b.price);
        }

        if (sortSelect.value === "high") {
            sorted.sort((a,b) => b.price - a.price);
        }

        if (sortSelect.value === "rating") {
            sorted.sort((a,b) => b.rating - a.rating);
        }

        renderProducts(sorted);
    }

    /* =========================================
       CART
    ========================================= */

    function addToCart(id) {

        const product = products.find(p => p.id === id);

        const existing = cart.find(item => item.id === id);

        if (existing) {
            existing.quantity++;
        } else {
            cart.push({
                ...product,
                quantity: 1
            });
        }

        updateCart();

        showToast(`${product.title} added to cart`);
    }

    function removeFromCart(id) {

        cart = cart.filter(item => item.id !== id);

        updateCart();
    }

    function updateCart() {

        const quantity = cart.reduce(
            (total, item) => total + item.quantity,
            0
        );

        const total = cart.reduce(
            (sum, item) => sum + item.price * item.quantity,
            0
        );

        cartCount.textContent = quantity;
        cartHeaderCount.textContent = quantity
            ? `(${quantity})`
            : "";

        cartTotal.textContent =
            "$" + total.toLocaleString();

        if (!cart.length) {

            cartItems.innerHTML = `
                <div class="empty-cart">

                    <i class="fa-solid fa-bag-shopping"></i>

                    <h3>Your cart is empty</h3>

                    <p style="margin-top:8px">
                        Add something you love!
                    </p>

                </div>
            `;

            return;
        }

        cartItems.innerHTML = cart.map(item => `

            <div class="cart-item">

                <img
                    src="${item.image}"
                    alt="${item.title}"
                >

                <div class="cart-item-info">

                    <strong>${item.title}</strong>

                    <p>
                        Qty: ${item.quantity}
                    </p>

                    <b>
                        $${(
                            item.price * item.quantity
                        ).toLocaleString()}
                    </b>

                </div>

                <button
                    class="remove-item"
                    onclick="removeFromCart(${item.id})"
                >
                    <i class="fa-solid fa-trash"></i>
                </button>

            </div>

        `).join("");
    }

    /* =========================================
       CART OPEN / CLOSE
    ========================================= */

    document.getElementById("cartBtn")
        .addEventListener("click", openCart);

    document.getElementById("closeCart")
        .addEventListener("click", closeCart);

    overlay.addEventListener("click", closeCart);

    function openCart() {
        cartDrawer.classList.add("open");
        overlay.classList.add("show");
        document.body.style.overflow = "hidden";
    }

    function closeCart() {
        cartDrawer.classList.remove("open");
        overlay.classList.remove("show");
        document.body.style.overflow = "";
    }

    /* =========================================
       WISHLIST
    ========================================= */

    function toggleWishlist(id) {

        const product = products.find(p => p.id === id);

        if (wishlist.includes(id)) {

            wishlist = wishlist.filter(
                item => item !== id
            );

            showToast(`${product.title} removed from wishlist`);

        } else {

            wishlist.push(id);

            showToast(`${product.title} added to wishlist`);
        }

        wishlistCount.textContent = wishlist.length;

        filterProducts();
    }

    document.getElementById("wishlistBtn")
        .addEventListener("click", () => {

            const wishedProducts = products.filter(
                product => wishlist.includes(product.id)
            );

            if (!wishlist.length) {
                showToast("Your wishlist is empty");
                return;
            }

            renderProducts(wishedProducts);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });
        });

    /* =========================================
       THEME
    ========================================= */

    const themeBtn = document.getElementById("themeBtn");

    themeBtn.addEventListener("click", () => {

        document.body.classList.toggle("dark");

        const dark = document.body.classList.contains("dark");

        themeBtn.innerHTML = dark
            ? '<i class="fa-solid fa-sun"></i>'
            : '<i class="fa-solid fa-moon"></i>';

        localStorage.setItem("nexusTheme", dark ? "dark" : "light");
    });

    if (localStorage.getItem("nexusTheme") === "dark") {

        document.body.classList.add("dark");

        themeBtn.innerHTML =
            '<i class="fa-solid fa-sun"></i>';
    }

    /* =========================================
       MOBILE MENU
    ========================================= */

    document.getElementById("menuBtn")
        .addEventListener("click", () => {

            const nav = document.getElementById("nav");

            nav.classList.toggle("mobile-open");

            document.getElementById("menuBtn").innerHTML =
                nav.classList.contains("mobile-open")
                ?
                '<i class="fa-solid fa-xmark"></i>'
                :
                '<i class="fa-solid fa-bars"></i>';
        });

    /* =========================================
       HERO BUTTONS
    ========================================= */

    document.getElementById("shopBtn")
        .addEventListener("click", () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });
        });

    document.getElementById("dealBtn")
        .addEventListener("click", () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });
        });

    /* =========================================
       DEAL CART
    ========================================= */

    document.getElementById("dealCartBtn")
        .addEventListener("click", () => {

            addToCart(2);
            openCart();
        });

    /* =========================================
       CHECKOUT
    ========================================= */

    document.getElementById("checkoutBtn")
        .addEventListener("click", () => {

            if (!cart.length) {
                showToast("Your cart is empty");
                return;
            }

            showToast("Checkout coming soon!");

        });

    /* =========================================
       NEWSLETTER
    ========================================= */

    document.getElementById("newsletterForm")
        .addEventListener("submit", function(e) {

            e.preventDefault();

            showToast("Thanks! You're subscribed.");

            this.reset();
        });

    /* =========================================
       TOAST
    ========================================= */

    let toastTimer;

    function showToast(message) {

        toast.textContent = message;

        toast.classList.add("show");

        clearTimeout(toastTimer);

        toastTimer = setTimeout(() => {
            toast.classList.remove("show");
        }, 2500);
    }

    /* =========================================
       COUNTDOWN
    ========================================= */

    let dealEnd = Date.now() + (24 * 60 * 60 * 1000);

    function updateTimer() {

        let difference = dealEnd - Date.now();

        if (difference <= 0) {
            dealEnd = Date.now() + (24 * 60 * 60 * 1000);
            difference = dealEnd - Date.now();
        }

        const hours = Math.floor(
            difference / (1000 * 60 * 60)
        );

        const minutes = Math.floor(
            (difference / (1000 * 60)) % 60
        );

        const seconds = Math.floor(
            (difference / 1000) % 60
        );

        document.getElementById("hours").textContent =
            String(hours).padStart(2, "0");

        document.getElementById("minutes").textContent =
            String(minutes).padStart(2, "0");

        document.getElementById("seconds").textContent =
            String(seconds).padStart(2, "0");
    }

    setInterval(updateTimer, 1000);

    /* =========================================
       YEAR
    ========================================= */

    document.getElementById("year").textContent =
        new Date().getFullYear();

    /* =========================================
       INITIALIZE
    ========================================= */

    renderCategories();
    renderFilters();
    renderProducts();
    updateCart();

</script>

</body>
</html>
