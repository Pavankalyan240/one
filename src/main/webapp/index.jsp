```css
/* =========================================
   NEW PREMIUM BACKGROUND THEME
========================================= */

:root {
    --primary: #6366F1;
    --primary-dark: #4F46E5;
    --primary-light: #EEF2FF;

    --secondary: #111827;
    --secondary-light: #1F2937;

    --accent: #F59E0B;
    --danger: #EF4444;
    --success: #10B981;

    --bg: #F5F7FF;
    --surface: rgba(255, 255, 255, 0.92);
    --surface-hover: #F1F3FF;

    --text: #111827;
    --text-secondary: #64748B;
    --border: rgba(99, 102, 241, 0.12);

    --shadow: 0 12px 35px rgba(79, 70, 229, 0.08);
    --shadow-hover: 0 20px 45px rgba(79, 70, 229, 0.16);

    --radius: 18px;
}

/* =========================================
   BODY BACKGROUND
========================================= */

body {
    font-family: "Inter", sans-serif;
    color: var(--text);
    transition: .3s ease;

    /* Completely new page background */
    background:
        radial-gradient(
            circle at 10% 10%,
            rgba(99, 102, 241, 0.16),
            transparent 28%
        ),
        radial-gradient(
            circle at 90% 20%,
            rgba(139, 92, 246, 0.14),
            transparent 30%
        ),
        radial-gradient(
            circle at 50% 90%,
            rgba(59, 130, 246, 0.12),
            transparent 35%
        ),
        linear-gradient(
            135deg,
            #F8FAFF 0%,
            #F1F4FF 45%,
            #F8F5FF 100%
        );

    background-attachment: fixed;
    background-size: cover;
}

/* Soft background decoration */
body::before,
body::after {
    content: "";
    position: fixed;
    border-radius: 50%;
    pointer-events: none;
    z-index: -1;
    filter: blur(70px);
}

body::before {
    width: 300px;
    height: 300px;
    top: 15%;
    left: -120px;
    background: rgba(99, 102, 241, 0.10);
}

body::after {
    width: 350px;
    height: 350px;
    right: -150px;
    bottom: 5%;
    background: rgba(168, 85, 247, 0.10);
}

/* =========================================
   HEADER
========================================= */

header {
    background: rgba(255, 255, 255, 0.88);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);
    position: sticky;
    top: 0;
    z-index: 1000;
    border-bottom: 1px solid rgba(99, 102, 241, 0.12);
}

/* =========================================
   SEARCH
========================================= */

.search-box input {
    background: rgba(255, 255, 255, 0.75);
    border: 1px solid rgba(99, 102, 241, 0.15);
}

.search-box input:focus {
    border-color: var(--primary);
    box-shadow:
        0 0 0 3px rgba(99, 102, 241, 0.12),
        0 8px 25px rgba(99, 102, 241, 0.08);
}

/* =========================================
   CARDS
========================================= */

.category,
.product-card,
.feature,
.review {
    background: rgba(255, 255, 255, 0.88);
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);
    border: 1px solid rgba(99, 102, 241, 0.10);
    box-shadow: 0 8px 25px rgba(30, 41, 59, 0.04);
}

.category:hover,
.product-card:hover {
    border-color: rgba(99, 102, 241, 0.30);
    box-shadow: 0 20px 45px rgba(79, 70, 229, 0.12);
}

/* =========================================
   PRODUCT IMAGE
========================================= */

.product-image {
    background:
        linear-gradient(
            145deg,
            #EEF2FF,
            #F8FAFF
        );
}

/* =========================================
   HERO
========================================= */

.hero-box {
    background:
        radial-gradient(
            circle at 80% 15%,
            rgba(129, 140, 248, 0.50),
            transparent 28%
        ),
        radial-gradient(
            circle at 20% 90%,
            rgba(168, 85, 247, 0.35),
            transparent 30%
        ),
        linear-gradient(
            120deg,
            #111827 0%,
            #312E81 48%,
            #4C1D95 100%
        );

    box-shadow:
        0 25px 60px rgba(49, 46, 129, 0.20);
}

/* =========================================
   HERO LABEL
========================================= */

.hero-label {
    background: rgba(129, 140, 248, 0.15);
    border: 1px solid rgba(165, 180, 252, 0.35);
    color: #C7D2FE;
}

/* =========================================
   DEAL SECTION
========================================= */

.deal {
    background:
        radial-gradient(
            circle at 90% 15%,
            rgba(129, 140, 248, 0.45),
            transparent 27%
        ),
        radial-gradient(
            circle at 10% 100%,
            rgba(168, 85, 247, 0.30),
            transparent 30%
        ),
        linear-gradient(
            110deg,
            #111827,
            #312E81,
            #4C1D95
        );

    box-shadow:
        0 20px 50px rgba(49, 46, 129, 0.18);
}

/* =========================================
   CATEGORY ICONS
========================================= */

.category-icon,
.feature-icon {
    background: linear-gradient(
        135deg,
        #EEF2FF,
        #EDE9FE
    );

    color: #4F46E5;
}

/* =========================================
   FILTER BUTTONS
========================================= */

.filter-btn:hover,
.filter-btn.active {
    background: linear-gradient(
        135deg,
        #6366F1,
        #7C3AED
    );

    border-color: transparent;
}

/* =========================================
   ADD CART
========================================= */

.add-cart {
    background: #EEF2FF;
    color: #4F46E5;
}

.add-cart:hover {
    background: linear-gradient(
        135deg,
        #6366F1,
        #7C3AED
    );

    color: white;
}

/* =========================================
   NEWSLETTER
========================================= */

.newsletter {
    background:
        radial-gradient(
            circle at 90% 20%,
            rgba(99, 102, 241, 0.18),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #EEF2FF,
            #F5F3FF
        );

    border: 1px solid rgba(99, 102, 241, 0.10);
}

/* =========================================
   DARK MODE
========================================= */

body.dark {
    --bg: #080B18;
    --surface: rgba(17, 24, 39, 0.90);
    --surface-hover: #1E293B;

    --text: #F8FAFC;
    --text-secondary: #94A3B8;
    --border: rgba(129, 140, 248, 0.16);

    --secondary: #F8FAFC;
    --secondary-light: #CBD5E1;

    --shadow: 0 12px 35px rgba(0, 0, 0, .30);
    --shadow-hover: 0 20px 45px rgba(0, 0, 0, .45);

    background:
        radial-gradient(
            circle at 10% 10%,
            rgba(99, 102, 241, 0.18),
            transparent 28%
        ),
        radial-gradient(
            circle at 90% 20%,
            rgba(139, 92, 246, 0.15),
            transparent 30%
        ),
        radial-gradient(
            circle at 50% 90%,
            rgba(59, 130, 246, 0.10),
            transparent 35%
        ),
        linear-gradient(
            135deg,
            #070A13,
            #0B1020 50%,
            #100B20
        );

    background-attachment: fixed;
}

/* Dark mode glass cards */

body.dark .category,
body.dark .product-card,
body.dark .feature,
body.dark .review {
    background: rgba(15, 23, 42, 0.82);
    border-color: rgba(129, 140, 248, 0.12);
}

body.dark header {
    background: rgba(8, 11, 24, 0.88);
}

body.dark .search-box input {
    background: rgba(15, 23, 42, 0.75);
}

body.dark .product-image {
    background:
        linear-gradient(
            145deg,
            #111827,
            #1E1B4B
        );
}

body.dark .newsletter {
    background:
        radial-gradient(
            circle at 90% 20%,
            rgba(99, 102, 241, 0.20),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #111827,
            #1E1B4B
        );
}

/* =========================================
   SCROLLBAR
========================================= */

::-webkit-scrollbar {
    width: 9px;
}

::-webkit-scrollbar-track {
    background: transparent;
}

::-webkit-scrollbar-thumb {
    background: linear-gradient(
        #6366F1,
        #7C3AED
    );
    border-radius: 20px;
}

::-webkit-scrollbar-thumb:hover {
    background: #4F46E5;
}
```
