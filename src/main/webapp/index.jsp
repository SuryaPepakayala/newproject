<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>NexusShop | Modern E-Commerce Experience</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-dark: #0b1120;
            --surface-dark: #111827;
            --surface-elevated: #1f2937;
            --primary-accent: #38bdf8;
            --primary-glow: #0ea5e9;
            --neon-blue: #00f0ff;
            --neon-purple: #b517f9;
            --gradient-1: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            --gradient-hero: radial-gradient(circle at 20% 30%, rgba(56,189,248,0.15), transparent 70%);
            --text-light: #f1f5f9;
            --text-muted: #94a3b8;
            --card-border: rgba(56, 189, 248, 0.2);
            --success-glow: #10b981;
            --warning: #f59e0b;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-dark);
            color: var(--text-light);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        h1, h2, h3, h4, .logo, .btn {
            font-family: 'Space Grotesk', sans-serif;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* glass morphism header */
        header {
            position: sticky;
            top: 0;
            z-index: 200;
            background: rgba(11, 17, 32, 0.85);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(56, 189, 248, 0.2);
            transition: all 0.3s ease;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 16px 0;
            gap: 24px;
            flex-wrap: wrap;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            background: linear-gradient(120deg, #fff, var(--primary-accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.5px;
            text-decoration: none;
        }

        .logo span {
            background: linear-gradient(135deg, var(--neon-blue), var(--neon-purple));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        nav ul {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        nav ul li a {
            text-decoration: none;
            font-weight: 500;
            color: var(--text-muted);
            transition: 0.2s;
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 0.95rem;
        }

        nav ul li a:hover, nav ul li a.active {
            color: var(--primary-accent);
            text-shadow: 0 0 4px rgba(56,189,248,0.5);
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            position: absolute;
            top: 38px;
            left: -20px;
            background: var(--surface-elevated);
            backdrop-filter: blur(12px);
            min-width: 220px;
            border-radius: 20px;
            padding: 12px 0;
            border: 1px solid var(--card-border);
            box-shadow: 0 20px 35px -12px rgba(0,0,0,0.5);
            opacity: 0;
            visibility: hidden;
            transition: 0.2s ease;
            z-index: 150;
        }

        .dropdown:hover .dropdown-content {
            opacity: 1;
            visibility: visible;
        }

        .dropdown-content a {
            padding: 10px 24px;
            display: block;
            color: var(--text-muted);
        }

        .dropdown-content a:hover {
            background: rgba(56,189,248,0.1);
            color: white;
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: var(--surface-dark);
            border-radius: 48px;
            padding: 8px 18px;
            border: 1px solid #2d3a4e;
            transition: 0.2s;
        }

        .search-bar:focus-within {
            border-color: var(--primary-accent);
            box-shadow: 0 0 8px rgba(56,189,248,0.3);
        }

        .search-bar input {
            background: transparent;
            border: none;
            color: white;
            width: 220px;
            outline: none;
        }

        .search-bar button {
            background: none;
            border: none;
            color: var(--text-muted);
            cursor: pointer;
        }

        .header-icons {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .header-icons a {
            color: var(--text-light);
            font-size: 1.2rem;
            position: relative;
            transition: 0.2s;
        }

        .header-icons a:hover {
            color: var(--primary-accent);
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--neon-blue);
            color: #0b1120;
            font-weight: bold;
            font-size: 10px;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 6px #38bdf8;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: white;
            cursor: pointer;
        }

        /* hero modern */
        .hero {
            min-height: 85vh;
            background: var(--gradient-1), var(--gradient-hero);
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            border-bottom: 1px solid rgba(56,189,248,0.2);
        }

        .hero::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?ixlib=rb-4.0.3&auto=format&fit=crop&w=1600&q=80') center/cover;
            opacity: 0.2;
            mix-blend-mode: overlay;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 700px;
            padding: 40px;
        }

        .hero h1 {
            font-size: 64px;
            background: linear-gradient(to right, #fff, #94a3f8);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 24px;
            line-height: 1.2;
        }

        .hero p {
            font-size: 1.2rem;
            color: #cbd5e1;
            margin-bottom: 32px;
        }

        .btn {
            display: inline-block;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 600;
            transition: all 0.25s;
            text-decoration: none;
            margin-right: 16px;
        }

        .btn-primary {
            background: linear-gradient(95deg, #0ea5e9, #3b82f6);
            color: white;
            box-shadow: 0 4px 14px rgba(14,165,233,0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px -5px #0ea5e9;
        }

        .btn-secondary {
            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(4px);
            border: 1px solid rgba(56,189,248,0.5);
            color: white;
        }

        .btn-secondary:hover {
            background: rgba(56,189,248,0.2);
            border-color: var(--primary-accent);
        }

        /* section titles */
        .section-title {
            text-align: center;
            margin: 70px 0 40px;
        }

        .section-title h2 {
            font-size: 2.5rem;
            background: linear-gradient(135deg, #e2e8f0, #60a5fa);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 12px;
        }

        .section-title p {
            color: var(--text-muted);
            max-width: 600px;
            margin: 0 auto;
        }

        /* category cards neon */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 24px;
            margin-bottom: 60px;
        }

        .category-card {
            background: var(--surface-dark);
            border-radius: 28px;
            padding: 28px 12px;
            text-align: center;
            transition: 0.3s;
            border: 1px solid var(--card-border);
            backdrop-filter: blur(4px);
        }

        .category-card:hover {
            transform: translateY(-8px);
            border-color: var(--primary-accent);
            box-shadow: 0 15px 30px -12px rgba(56,189,248,0.2);
        }

        .category-icon {
            font-size: 42px;
            background: linear-gradient(145deg, #38bdf8, #a855f7);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 16px;
        }

        .category-card h3 {
            font-size: 1.2rem;
            margin-bottom: 8px;
        }

        /* product grid glassmorphism */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
            margin-bottom: 70px;
        }

        .product-card {
            background: var(--surface-dark);
            border-radius: 28px;
            overflow: hidden;
            border: 1px solid var(--card-border);
            transition: 0.3s;
            position: relative;
            backdrop-filter: blur(2px);
        }

        .product-card:hover {
            transform: scale(1.02);
            border-color: var(--primary-accent);
            box-shadow: 0 20px 30px -15px rgba(0,0,0,0.5);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--neon-blue);
            color: #0f172a;
            font-weight: bold;
            padding: 4px 12px;
            border-radius: 40px;
            font-size: 0.7rem;
            z-index: 2;
        }

        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-card:hover .product-img {
            transform: scale(1.05);
        }

        .product-info {
            padding: 20px;
        }

        .price {
            font-weight: 700;
            font-size: 1.3rem;
            color: #38bdf8;
            margin: 8px 0;
        }

        .old-price {
            text-decoration: line-through;
            color: #64748b;
            font-size: 0.9rem;
            margin-left: 8px;
        }

        .rating {
            color: #fbbf24;
            margin-bottom: 16px;
            font-size: 0.85rem;
        }

        .add-to-cart {
            width: 100%;
            background: linear-gradient(90deg, #1e293b, #0f172a);
            border: 1px solid #334155;
            color: white;
            padding: 10px 0;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-to-cart:hover {
            background: var(--primary-accent);
            border-color: var(--primary-accent);
            color: #0b1120;
            box-shadow: 0 0 10px rgba(56,189,248,0.5);
        }

        /* deals flash sale */
        .deals {
            background: var(--surface-elevated);
            border-radius: 48px;
            margin: 40px auto;
            padding: 0;
            overflow: hidden;
            box-shadow: 0 25px 40px -12px black;
        }

        .deal-container {
            display: flex;
            flex-wrap: wrap;
        }

        .deal-img {
            width: 50%;
            object-fit: cover;
            min-height: 380px;
        }

        .deal-content {
            width: 50%;
            padding: 48px;
            background: linear-gradient(125deg, #111827, #0f172a);
        }

        .deal-timer {
            display: flex;
            gap: 16px;
            margin: 30px 0;
        }

        .timer-box {
            background: #0b1120;
            border-radius: 20px;
            padding: 12px 18px;
            text-align: center;
            border: 1px solid #38bdf8;
            min-width: 70px;
        }

        .timer-box span:first-child {
            font-size: 28px;
            font-weight: 800;
            font-family: monospace;
        }

        .deal-price {
            font-size: 32px;
            font-weight: 800;
            color: #38bdf8;
        }

        .deal-discount {
            background: #ef4444;
            padding: 4px 12px;
            border-radius: 40px;
            font-size: 0.8rem;
            margin-left: 12px;
        }

        /* testimonials */
        .testimonial-slider {
            display: flex;
            gap: 32px;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            padding: 20px 0 40px;
        }

        .testimonial-card {
            min-width: 340px;
            background: var(--surface-dark);
            border-radius: 32px;
            padding: 32px;
            border: 1px solid #2d3a4e;
            scroll-snap-align: start;
            transition: 0.2s;
        }

        .testimonial-card:hover {
            border-color: #38bdf8;
        }

        .user-avatar {
            width: 52px;
            height: 52px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #38bdf8;
        }

        /* newsletter neon */
        .newsletter {
            background: linear-gradient(145deg, #0f172a, #0a0f1c);
            border-radius: 64px;
            margin: 70px auto;
            padding: 64px 32px;
            text-align: center;
            border: 1px solid rgba(56,189,248,0.3);
        }

        .newsletter-form {
            display: flex;
            max-width: 520px;
            margin: 28px auto 0;
            gap: 12px;
        }

        .newsletter-form input {
            flex: 1;
            padding: 16px 24px;
            border-radius: 60px;
            border: none;
            background: #111827;
            color: white;
            border: 1px solid #334155;
        }

        .newsletter-form button {
            background: #0ea5e9;
            border: none;
            border-radius: 60px;
            padding: 0 28px;
            font-weight: bold;
            color: white;
            cursor: pointer;
        }

        /* footer */
        footer {
            background: #050a14;
            border-top: 1px solid #1e293b;
            padding: 56px 0 30px;
            margin-top: 40px;
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 48px;
        }

        .social-links a {
            background: #1e293b;
            display: inline-flex;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            align-items: center;
            justify-content: center;
            margin-right: 12px;
            color: white;
            transition: 0.2s;
        }

        .social-links a:hover {
            background: #38bdf8;
            transform: translateY(-3px);
        }

        @media (max-width: 1100px) {
            .categories { grid-template-columns: repeat(3,1fr); }
            .products { grid-template-columns: repeat(2,1fr); }
            .footer-container { grid-template-columns: repeat(2,1fr); }
        }

        @media (max-width: 780px) {
            .header-container { flex-wrap: wrap; }
            .search-bar { order: 3; width: 100%; margin-top: 8px; }
            .mobile-menu-btn { display: block; }
            nav { display: none; width: 100%; order: 4; }
            nav.active { display: block; }
            nav ul { flex-direction: column; gap: 16px; padding: 20px 0; }
            .dropdown-content { position: static; opacity: 1; visibility: visible; display: none; box-shadow: none; background: transparent; padding-left: 20px; }
            .dropdown.active .dropdown-content { display: block; }
            .hero h1 { font-size: 44px; }
            .deal-img, .deal-content { width: 100%; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: repeat(2,1fr); }
            .footer-container { grid-template-columns: 1fr; }
        }

        @keyframes pulse {
            0% { opacity: 0.7; }
            100% { opacity: 1; }
        }

        .cart-count.update {
            animation: pulse 0.3s ease;
        }

        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #1e293b;
        }
        ::-webkit-scrollbar-thumb {
            background: #38bdf8;
            border-radius: 10px;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-container">
        <a href="#" class="logo">Nexus<span>Shop</span></a>
        <nav id="mainNav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li class="dropdown">
                    <a href="#"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down"></i></a>
                    <div class="dropdown-content">
                        <a href="#"><i class="fas fa-mobile-alt"></i> Smartphones</a>
                        <a href="#"><i class="fas fa-laptop"></i> Laptops</a>
                        <a href="#"><i class="fas fa-tshirt"></i> Clothing</a>
                        <a href="#"><i class="fas fa-headphones"></i> Audio</a>
                        <a href="#"><i class="fas fa-shoe-prints"></i> Footwear</a>
                    </div>
                </li>
                <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#"><i class="fas fa-percent"></i> Deals</a></li>
                <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
            </ul>
        </nav>
        <div class="search-bar">
            <input type="text" placeholder="Search gadgets, fashion...">
            <button><i class="fas fa-search"></i></button>
        </div>
        <div class="header-icons">
            <a href="#"><i class="far fa-user"></i></a>
            <a href="#"><i class="far fa-heart"></i></a>
            <a href="#" id="cartIcon"><i class="fas fa-shopping-cart"></i><span class="cart-count" id="cartCount">3</span></a>
            <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
        </div>
    </div>
</header>

<section class="hero">
    <div class="container hero-content">
        <h1>Future of <br>Digital Shopping</h1>
        <p>Immerse yourself in next-gen tech & style. Up to 40% off on flash picks. Free shipping worldwide.</p>
        <div>
            <a href="#" class="btn btn-primary">Shop Now →</a>
            <a href="#" class="btn btn-secondary">Explore Deals</a>
        </div>
    </div>
</section>

<div class="container">
    <div class="section-title">
        <h2>Shop by Category</h2>
        <p>Explore curated collections</p>
    </div>
    <div class="categories">
        <div class="category-card"><div class="category-icon"><i class="fas fa-mobile-alt"></i></div><h3>Smartphones</h3><p>Flagship edition</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-laptop"></i></div><h3>Laptops</h3><p>Ultra performance</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-tshirt"></i></div><h3>Clothing</h3><p>Urban collection</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-headphones"></i></div><h3>Audio</h3><p>Immersive sound</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-shoe-prints"></i></div><h3>Footwear</h3><p>Limited drops</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-watch"></i></div><h3>Wearables</h3><p>Smart life</p></div>
    </div>
</div>

<div class="container">
    <div class="section-title">
        <h2>Trending Now</h2>
        <p>Bestsellers & new arrivals</p>
    </div>
    <div class="products" id="productsGrid">
        <!-- dynamic product injection but static for demo but fully functional -->
    </div>
</div>

<section class="container deals">
    <div class="deal-container">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" class="deal-img">
        <div class="deal-content">
            <h3>⚡ Flash Sale: MacBook Air M3</h3>
            <p>Supercharged performance, all-day battery life. Grab yours before it's gone.</p>
            <div class="deal-timer">
                <div class="timer-box"><span id="hours">00</span><span>Hours</span></div>
                <div class="timer-box"><span id="minutes">00</span><span>Mins</span></div>
                <div class="timer-box"><span id="seconds">00</span><span>Secs</span></div>
            </div>
            <div class="deal-price">$999 <span class="deal-old-price">$1,299</span><span class="deal-discount">-23%</span></div>
            <button class="btn btn-primary" style="margin-top: 20px;">Claim Deal →</button>
        </div>
    </div>
</section>

<div class="container testimonials">
    <div class="section-title">
        <h2>Trusted Voices</h2>
        <p>What our community says</p>
    </div>
    <div class="testimonial-slider">
        <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Slick UI and blazing fast delivery! The quality is unmatched. Will order again."</p><div class="user-info" style="display:flex; gap:14px; margin-top:16px;"><img src="https://randomuser.me/api/portraits/women/68.jpg" class="user-avatar"><div><div class="user-name">Amira Chen</div><div class="user-title">@fashionista</div></div></div></div>
        <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Flash sale deals are insane! I saved $300 on a laptop. Excellent customer support."</p><div class="user-info" style="display:flex; gap:14px; margin-top:16px;"><img src="https://randomuser.me/api/portraits/men/45.jpg" class="user-avatar"><div><div class="user-name">Marcus V.</div><div class="user-title">Tech reviewer</div></div></div></div>
        <div class="testimonial-card"><div class="rating">★★★★☆</div><p>"Best place for modern gadgets and streetwear. The packaging is premium."</p><div class="user-info" style="display:flex; gap:14px; margin-top:16px;"><img src="https://randomuser.me/api/portraits/women/33.jpg" class="user-avatar"><div><div class="user-name">Leila K.</div><div class="user-title">Verified buyer</div></div></div></div>
    </div>
</div>

<section class="container newsletter">
    <h2>Join the Nexus Club</h2>
    <p>Subscribe & get 15% off your next order + exclusive access to early drops.</p>
    <form class="newsletter-form" id="newsForm">
        <input type="email" placeholder="your@email.com" required>
        <button type="submit">Subscribe →</button>
    </form>
</section>

<footer>
    <div class="container footer-container">
        <div><h3>NexusShop</h3><p style="color:#94a3b8;">Curated future commerce. Explore premium tech, style, and innovation.</p><div class="social-links"><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-github"></i></a></div></div>
        <div><h3>Explore</h3><ul style="list-style:none;"><li>New Arrivals</li><li>Best Sellers</li><li>Gift Cards</li><li>Offers</li></ul></div>
        <div><h3>Support</h3><ul style="list-style:none;"><li>Help Center</li><li>Returns</li><li>Track Order</li><li>Contact</li></ul></div>
        <div><h3>Legal</h3><ul style="list-style:none;"><li>Privacy</li><li>Terms</li><li>Security</li></ul></div>
    </div>
    <div class="container footer-bottom" style="text-align:center; margin-top:40px; border-top:1px solid #1e293b; padding-top:24px;">© 2028 NexusShop — Elevate your digital lifestyle</div>
</footer>

<script>
    // Product data array for dynamic generation with updated UI
    const products = [
        { name: "iPhone 15 Pro Max", price: 1199, old: 1299, rating: 5, reviews: 214, img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=600&auto=format", badge: "New" },
        { name: "MacBook Pro M3", price: 1999, old: 0, rating: 4.5, reviews: 86, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&auto=format", badge: "" },
        { name: "Apple Watch Ultra 2", price: 749, old: 799, rating: 5, reviews: 312, img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=600&auto=format", badge: "-6%" },
        { name: "Nike Air Max 2024", price: 159, old: 199, rating: 4, reviews: 97, img: "https://images.unsplash.com/photo-1542272604-787c3835535d?w=600&auto=format", badge: "Hot" },
        { name: "Sony WH-1000XM6", price: 399, old: 499, rating: 5, reviews: 205, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=600&auto=format", badge: "-20%" },
        { name: "Chanel Bleu", price: 135, old: 165, rating: 4.5, reviews: 178, img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?w=600&auto=format", badge: "Limited" }
    ];

    function renderProducts() {
        const container = document.getElementById('productsGrid');
        if(!container) return;
        container.innerHTML = products.map(p => `
            <div class="product-card">
                ${p.badge ? `<span class="product-badge">${p.badge}</span>` : ''}
                <img src="${p.img}" class="product-img" alt="${p.name}">
                <div class="product-info">
                    <h3>${p.name}</h3>
                    <div class="price">$${p.price} ${p.old ? `<span class="old-price">$${p.old}</span>` : ''}</div>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''} (${p.reviews})</div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
        `).join('');
        attachCartEvents();
    }

    let cartItems = 3;
    const cartCountSpan = document.getElementById('cartCount');

    function attachCartEvents() {
        document.querySelectorAll('.add-to-cart').forEach(btn => {
            btn.removeEventListener('click', handleCartClick);
            btn.addEventListener('click', handleCartClick);
        });
    }

    function handleCartClick(e) {
        const btn = e.currentTarget;
        const originalText = btn.textContent;
        btn.textContent = "✓ Added!";
        btn.style.background = "linear-gradient(90deg, #10b981, #059669)";
        cartItems++;
        cartCountSpan.textContent = cartItems;
        cartCountSpan.classList.add('update');
        setTimeout(() => cartCountSpan.classList.remove('update'), 300);
        setTimeout(() => {
            btn.textContent = originalText;
            btn.style.background = "linear-gradient(90deg, #1e293b, #0f172a)";
        }, 1000);
    }

    // countdown
    function updateCountdown() {
        const now = new Date();
        const end = new Date();
        end.setHours(23, 59, 59, 999);
        let diff = end - now;
        if(diff < 0) diff = 0;
        const hrs = Math.floor(diff / (1000*60*60));
        const mins = Math.floor((diff % (3600000)) / 60000);
        const secs = Math.floor((diff % 60000) / 1000);
        document.getElementById('hours').innerText = String(hrs).padStart(2,'0');
        document.getElementById('minutes').innerText = String(mins).padStart(2,'0');
        document.getElementById('seconds').innerText = String(secs).padStart(2,'0');
    }
    setInterval(updateCountdown, 1000);
    updateCountdown();

    // mobile menu & dropdowns
    const mobileBtn = document.getElementById('mobileMenuBtn');
    const nav = document.getElementById('mainNav');
    mobileBtn.addEventListener('click', () => nav.classList.toggle('active'));
    const dropdowns = document.querySelectorAll('.dropdown');
    dropdowns.forEach(dd => {
        dd.addEventListener('click', (e) => {
            if(window.innerWidth <= 768) {
                e.preventDefault();
                dd.classList.toggle('active');
            }
        });
    });

    // newsletter alert
    const newsForm = document.getElementById('newsForm');
    if(newsForm) {
        newsForm.addEventListener('submit', (e) => {
            e.preventDefault();
            alert('🎉 Thanks! Your 15% coupon code: NEXUS15 (check email)');
            newsForm.reset();
        });
    }

    renderProducts();
</script>
</body>
</html>
