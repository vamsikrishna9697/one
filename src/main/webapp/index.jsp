<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>AURA — Luxury & Lifestyle</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&family=Cormorant+Garamond:ital,wght@0,600;0,700;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== LUXURY ROOT VARIABLES ========== */
        :root {
            --bg: #f9f8f6;
            --bg-card: #ffffff;
            --primary: #111111;
            --primary-light: #2b2b2b;
            --gold: #c5a059;
            --gold-light: #f3ebd8;
            --gold-dark: #9e7d3b;
            --muted: #777777;
            --muted-light: #cccccc;
            --surface: #f1efeb;
            --success: #386641;
            --radius: 12px;
            --radius-sm: 8px;
            --shadow: 0 10px 30px rgba(0, 0, 0, 0.04);
            --shadow-hover: 0 20px 40px rgba(0, 0, 0, 0.08);
            --transition: 0.3s cubic-bezier(0.25, 1, 0.5, 1);
            --container: 1320px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Outfit', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 32px;
        }

        /* ========== UTILITIES ========== */
        .muted { color: var(--muted); }
        .text-center { text-align: center; }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 999px;
            font-weight: 500;
            font-size: 14px;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            transition: var(--transition);
            border: 1px solid transparent;
        }
        .btn-primary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-primary:hover {
            background: var(--gold);
            border-color: var(--gold);
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(197, 160, 89, 0.3);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(17, 17, 17, 0.2);
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            transform: translateY(-2px);
        }
        .btn-gold {
            background: var(--gold);
            color: #fff;
            border-color: var(--gold);
        }
        .btn-gold:hover {
            background: var(--gold-dark);
            border-color: var(--gold-dark);
            transform: translateY(-2px);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(249, 248, 246, 0.88);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 18px 0;
        }

        .brand {
            font-family: 'Cormorant Garamond', serif;
            font-weight: 700;
            font-size: 32px;
            letter-spacing: 3px;
            color: var(--primary);
        }
        .brand span {
            color: var(--gold);
        }

        nav.main-nav ul {
            display: flex;
            gap: 32px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            font-weight: 500;
            font-size: 14px;
            letter-spacing: 0.5px;
            color: var(--muted);
            transition: var(--transition);
            text-transform: uppercase;
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            color: var(--primary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 16px;
        }
        .icon-btn {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 16px;
            color: var(--primary);
            background: var(--surface);
            transition: var(--transition);
            position: relative;
        }
        .icon-btn:hover {
            background: var(--gold-light);
            color: var(--gold-dark);
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--gold);
            color: #fff;
            font-size: 10px;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 999px;
            padding: 0 16px 0 20px;
            transition: var(--transition);
            border: 1px solid transparent;
            width: 240px;
        }
        .search-wrap:focus-within {
            border-color: var(--gold);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(197, 160, 89, 0.1);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 13px;
        }
        .search-wrap button {
            color: var(--muted);
        }

        .mobile-toggle {
            display: none;
            font-size: 20px;
            color: var(--primary);
        }

        /* Mobile Drawer */
        #mobileMenu {
            display: none;
            background: #fff;
            border-bottom: 1px solid rgba(0,0,0,0.05);
            padding: 24px 32px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        #mobileMenu ul li a {
            font-size: 16px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* ========== HERO ========== */
        .hero {
            padding: 40px 0 80px;
        }
        .hero-grid {
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 40px;
            align-items: center;
            background: #f1ede4;
            border-radius: 24px;
            padding: 60px;
            overflow: relative;
        }
        .hero-content .subtitle {
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 3px;
            color: var(--gold-dark);
            font-weight: 600;
            margin-bottom: 16px;
            display: block;
        }
        .hero-content h1 {
            font-family: 'Cormorant Garamond', serif;
            font-size: 60px;
            font-weight: 700;
            line-height: 1.05;
            margin-bottom: 24px;
            color: var(--primary);
        }
        .hero-content p {
            color: var(--muted);
            font-size: 16px;
            margin-bottom: 36px;
            max-width: 480px;
        }
        .hero-actions {
            display: flex;
            gap: 16px;
        }
        .hero-image-wrap {
            position: relative;
            border-radius: 16px;
            overflow: hidden;
            aspect-ratio: 4/5;
            box-shadow: var(--shadow-hover);
        }
        .hero-image-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* ========== SECTION GENERAL ========== */
        .section {
            padding: 80px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-family: 'Cormorant Garamond', serif;
            font-size: 42px;
            font-weight: 700;
            letter-spacing: 0.5px;
        }
        .section-header p {
            color: var(--muted);
            font-size: 15px;
            margin-top: 4px;
        }
        .view-all {
            font-weight: 500;
            font-size: 14px;
            letter-spacing: 1px;
            text-transform: uppercase;
            border-bottom: 1px solid var(--primary);
            padding-bottom: 2px;
            transition: var(--transition);
        }
        .view-all:hover {
            color: var(--gold);
            border-color: var(--gold);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .cat-card {
            position: relative;
            border-radius: var(--radius);
            overflow: hidden;
            aspect-ratio: 3/4;
            cursor: pointer;
            box-shadow: var(--shadow);
            transition: var(--transition);
        }
        .cat-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .cat-card:hover img {
            transform: scale(1.06);
        }
        .cat-card .overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.7) 0%, transparent 60%);
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 32px;
            color: #fff;
        }
        .cat-card h3 {
            font-family: 'Cormorant Garamond', serif;
            font-size: 26px;
            font-weight: 600;
            margin-bottom: 4px;
        }
        .cat-card span {
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 2px;
            opacity: 0.8;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
        }
        .product-card .img-wrap {
            position: relative;
            background: var(--surface);
            aspect-ratio: 4/5;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.05);
        }
        .product-card .badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--primary);
            color: #fff;
            padding: 6px 12px;
            font-size: 10px;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            font-weight: 600;
        }
        .product-card .wish-btn {
            position: absolute;
            top: 16px;
            right: 16px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: #fff;
            display: grid;
            place-items: center;
            color: var(--primary);
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: var(--transition);
        }
        .product-card .wish-btn:hover {
            background: var(--gold);
            color: #fff;
        }
        .product-card .body {
            padding: 24px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            gap: 16px;
        }
        .product-card .tag {
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            color: var(--muted);
        }
        .product-card h4 {
            font-size: 18px;
            font-weight: 500;
            color: var(--primary);
        }
        .product-card .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .product-card .price {
            font-size: 18px;
            font-weight: 600;
            color: var(--primary);
        }
        .product-card .add-btn {
            background: var(--surface);
            color: var(--primary);
            padding: 10px 20px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: var(--transition);
        }
        .product-card .add-btn:hover {
            background: var(--primary);
            color: #fff;
        }

        /* ========== EDITORIAL BANNER ========== */
        .editorial-banner {
            background: var(--primary);
            color: #fff;
            border-radius: 24px;
            padding: 80px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
        }
        .editorial-banner h2 {
            font-family: 'Cormorant Garamond', serif;
            font-size: 48px;
            margin-bottom: 20px;
            line-height: 1.1;
        }
        .editorial-banner p {
            color: rgba(255,255,255,0.7);
            margin-bottom: 32px;
            font-size: 16px;
        }

        /* ========== FOOTER ========== */
        footer {
            background: #fff;
            padding: 80px 0 30px;
            border-top: 1px solid rgba(0,0,0,0.05);
            margin-top: 80px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 60px;
        }
        .footer-col h5 {
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 20px;
            font-weight: 600;
        }
        .footer-col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }
        .footer-col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-col ul li a:hover {
            color: var(--primary);
        }
        .footer-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-top: 30px;
            border-top: 1px solid rgba(0,0,0,0.05);
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== RESPONSIVE DESIGN ========== */
        @media(max-width: 1024px) {
            .hero-grid, .editorial-banner {
                grid-template-columns: 1fr;
                padding: 40px;
            }
            .categories-grid, .products-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }
        @media(max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .search-wrap { display: none; }
            .categories-grid, .products-grid {
                grid-template-columns: 1fr;
            }
            .hero-content h1 {
                font-size: 40px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <a href="#" class="brand">AURA<span>.</span></a>
            
            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active">Collection</a></li>
                    <li><a href="#">Objects</a></li>
                    <li><a href="#">Atelier</a></li>
                    <li><a href="#">Journal</a></li>
                </ul>
            </nav>

            <div class="header-actions">
                <div class="search-wrap">
                    <input type="text" placeholder="Search creations..." id="searchInput">
                    <button><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
                <button class="icon-btn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
                <div class="cart-wrap">
                    <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fa-solid fa-bag-shopping"></i><span class="cart-count">2</span></button>
                </div>
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open Menu"><i class="fa-solid fa-bars"></i></button>
            </div>
        </div>
        <div id="mobileMenu">
            <ul>
                <li><a href="#">Collection</a></li>
                <li><a href="#">Objects</a></li>
                <li><a href="#">Atelier</a></li>
                <li><a href="#">Journal</a></li>
            </ul>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero container">
        <div class="hero-grid">
            <div class="hero-content">
                <span class="subtitle">Autumn / Winter '26</span>
                <h1>Sculpted minimalism for modern spaces.</h1>
                <p>Discover an exclusive curation of thoughtfully engineered objects, artisan homeware, and timeless essentials crafted for the discerning eye.</p>
                <div class="hero-actions">
                    <a href="#shop" class="btn btn-primary">Explore Curation</a>
                    <a href="#" class="btn btn-outline">Read The Atelier</a>
                </div>
            </div>
            <div class="hero-image-wrap">
                <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?auto=format&fit=crop&w=1000&q=80" alt="Luxury Minimalist Interior">
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="container section">
        <div class="section-header">
            <div>
                <h2>Curated Categories</h2>
                <p>Designed for aesthetic longevity</p>
            </div>
            <a href="#" class="view-all">Browse All</a>
        </div>
        <div class="categories-grid">
            <div class="cat-card">
                <img src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=600&q=80" alt="Living">
                <div class="overlay">
                    <span>01 / Living</span>
                    <h3>Furniture & Seating</h3>
                </div>
            </div>
            <div class="cat-card">
                <img src="https://images.unsplash.com/photo-1513519245088-0e12902e5a38?auto=format&fit=crop&w=600&q=80" alt="Lighting">
                <div class="overlay">
                    <span>02 / Atmosphere</span>
                    <h3>Architectural Lighting</h3>
                </div>
            </div>
            <div class="cat-card">
                <img src="https://images.unsplash.com/photo-1615529162924-f8605388461d?auto=format&fit=crop&w=600&q=80" alt="Objects">
                <div class="overlay">
                    <span>03 / Detail</span>
                    <h3>Handcrafted Objects</h3>
                </div>
            </div>
            <div class="cat-card">
                <img src="https://images.unsplash.com/photo-1540555700478-4be289fbecef?auto=format&fit=crop&w=600&q=80" alt="Textiles">
                <div class="overlay">
                    <span>04 / Tactile</span>
                    <h3>Organic Textiles</h3>
                </div>
            </div>
        </div>
    </section>

    <!-- Featured Products Section -->
    <section class="container section" id="shop">
        <div class="section-header">
            <div>
                <h2>Signature Masterpieces</h2>
                <p>Limited editions handcrafted globally</p>
            </div>
            <a href="#" class="view-all">View Collection</a>
        </div>
        <div class="products-grid">
            <!-- Product 1 -->
            <div class="product-card">
                <div class="img-wrap">
                    <span class="badge">New</span>
                    <button class="wish-btn"><i class="fa-regular fa-heart"></i></button>
                    <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=600&q=80" alt="Ceramic Vessel">
                </div>
                <div class="body">
                    <div>
                        <span class="tag">Ceramics</span>
                        <h4>Kanso Terracotta Vessel</h4>
                    </div>
                    <div class="price-row">
                        <span class="price">$340</span>
                        <button class="add-btn">Add to Bag</button>
                    </div>
                </div>
            </div>
            <!-- Product 2 -->
            <div class="product-card">
                <div class="img-wrap">
                    <button class="wish-btn"><i class="fa-regular fa-heart"></i></button>
                    <img src="https://images.unsplash.com/photo-1538688525198-9b88f6f53126?auto=format&fit=crop&w=600&q=80" alt="Minimal Chair">
                </div>
                <div class="body">
                    <div>
                        <span class="tag">Seating</span>
                        <h4>Linea Oak Lounge Chair</h4>
                    </div>
                    <div class="price-row">
                        <span class="price">$1,250</span>
                        <button class="add-btn">Add to Bag</button>
                    </div>
                </div>
            </div>
            <!-- Product 3 -->
            <div class="product-card">
                <div class="img-wrap">
                    <span class="badge">Exclusive</span>
                    <button class="wish-btn"><i class="fa-regular fa-heart"></i></button>
                    <img src="https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?auto=format&fit=crop&w=600&q=80" alt="Brass Lamp">
                </div>
                <div class="body">
                    <div>
                        <span class="tag">Lighting</span>
                        <h4>Aura Brushed Brass Lamp</h4>
                    </div>
                    <div class="price-row">
                        <span class="price">$480</span>
                        <button class="add-btn">Add to Bag</button>
                    </div>
                </div>
            </div>
            <!-- Product 4 -->
            <div class="product-card">
                <div class="img-wrap">
                    <button class="wish-btn"><i class="fa-regular fa-heart"></i></button>
                    <img src="https://images.unsplash.com/photo-1584100936595-c0654b55a2e2?auto=format&fit=crop&w=600&q=80" alt="Wool Throw">
                </div>
                <div class="body">
                    <div>
                        <span class="tag">Textiles</span>
                        <h4>Merino Wool Throw Blanket</h4>
                    </div>
                    <div class="price-row">
                        <span class="price">$290</span>
                        <button class="add-btn">Add to Bag</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Editorial Feature Banner -->
    <section class="container section">
        <div class="editorial-banner">
            <div>
                <h2>The Art of Slow Living</h2>
                <p>We partner with independent ateliers and master craftsmen who honor material integrity and timeless utility over fast consumer trends.</p>
                <a href="#" class="btn btn-gold">Read Our Manifesto</a>
            </div>
            <div>
                <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=800&q=80" alt="Craftsmanship" style="border-radius: 12px; aspect-ratio: 16/10; object-fit: cover;">
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <div class="brand" style="margin-bottom: 16px;">AURA<span>.</span></div>
                    <p class="muted" style="max-width: 280px; font-size: 14px;">Curating understated elegance and functional luxury for thoughtful living spaces.</p>
                </div>
                <div class="footer-col">
                    <h5>Curation</h5>
                    <ul>
                        <li><a href="#">Furniture</a></li>
                        <li><a href="#">Lighting</a></li>
                        <li><a href="#">Objects</a></li>
                        <li><a href="#">Textiles</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Atelier</h5>
                    <ul>
                        <li><a href="#">Our Story</a></li>
                        <li><a href="#">Craftsmen</a></li>
                        <li><a href="#">Sustainability</a></li>
                        <li><a href="#">Press</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Concierge</h5>
                    <ul>
                        <li><a href="#">Client Services</a></li>
                        <li><a href="#">Shipping & Returns</a></li>
                        <li><a href="#">Private Viewing</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 AURA Living Inc. All rights reserved.</p>
                <p>Privacy Policy &bull; Terms of Service</p>
            </div>
        </div>
    </footer>

    <!-- Basic Interactive Script -->
    <script>
        // Toggle mobile drawer navigation
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        
        mobileToggle.addEventListener('click', () => {
            if(mobileMenu.style.display === 'block') {
                mobileMenu.style.display = 'none';
            } else {
                mobileMenu.style.display = 'block';
            }
        });

        // Add to bag feedback simulation
        const addButtons = document.querySelectorAll('.add-btn');
        const cartCount = document.querySelector('.cart-count');
        let count = 2;

        addButtons.forEach(btn => {
            btn.addEventListener('click', (e) => {
                count++;
                cartCount.textContent = count;
                const originalText = btn.textContent;
                btn.textContent = 'Added';
                btn.style.background = 'var(--gold)';
                btn.style.color = '#fff';
                setTimeout(() => {
                    btn.textContent = originalText;
                    btn.style.background = '';
                    btn.style.color = '';
                }, 1500);
            });
        });
    </script>
</body>
</html>
