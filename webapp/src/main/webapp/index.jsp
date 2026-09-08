<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yash Academy - Complete DevOps & Cloud Mastery | AWS, Azure, GCP | Free YouTube Tutorials</title>
    <meta name="description" content="🚀 Master DevOps, AWS, Azure, GCP, Docker, Kubernetes, Jenkins, GitLab CI/CD with real-time projects. 100% FREE YouTube tutorials for beginners. Subscribe now!">
    <meta name="keywords" content="DevOps, AWS, Azure, GCP, Docker, Kubernetes, Jenkins, GitLab, CI/CD, YouTube Channel, Free Tutorials, Real Projects, Cloud Computing">
    <meta name="author" content="Yash Academy - Your DevOps Learning Partner">
    <meta property="og:title" content="Yash Academy - Complete DevOps & Cloud Mastery">
    <meta property="og:description" content="Master DevOps & Cloud with FREE YouTube tutorials. Real-time projects, industry expertise, 100% practical learning!">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.youtube.com/@Yashacademy0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        :root {
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --primary-light: #3b82f6;
            --accent: #dc2626;
            --accent-light: #ef4444;
            --youtube-red: #ff0000;
            --success: #16a34a;
            --warning: #f59e0b;
            --white: #ffffff;
            --gray-50: #f9fafb;
            --gray-100: #f3f4f6;
            --gray-200: #e5e7eb;
            --gray-300: #d1d5db;
            --gray-400: #9ca3af;
            --gray-500: #6b7280;
            --gray-600: #4b5563;
            --gray-700: #374151;
            --gray-800: #1f2937;
            --gray-900: #111827;
            --aws-orange: #ff9900;
            --azure-blue: #0078d4;
            --gcp-blue: #4285f4;
            
            --shadow-sm: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
            --shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06);
            --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            --shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
            --shadow-2xl: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
            
            --gradient-primary: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
            --gradient-youtube: linear-gradient(135deg, #ff0000 0%, #cc0000 100%);
            --gradient-hero: linear-gradient(135deg, #1e40af 0%, #3b82f6 50%, #06b6d4 100%);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', 'Segoe UI', Arial, sans-serif;
            line-height: 1.6;
            color: var(--gray-800);
            background: var(--white);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header */
        .header {
            background: var(--white);
            box-shadow: var(--shadow-lg);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            animation: slideDown 0.8s ease-out;
        }

        @keyframes slideDown {
            from { transform: translateY(-100%); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 0;
        }

        .nav__brand {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .brand-logo {
            width: 50px;
            height: 50px;
            background: var(--gradient-youtube);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--white);
            font-size: 1.5rem;
            font-weight: 800;
        }

        .brand-text h2 {
            font-size: 1.8rem;
            font-weight: 800;
            color: var(--gray-900);
            margin: 0;
        }

        .brand-text p {
            font-size: 0.8rem;
            color: var(--gray-600);
            margin: 0;
        }

        .nav__menu {
            display: flex;
            list-style: none;
            gap: 2rem;
            align-items: center;
        }

        .nav__link {
            text-decoration: none;
            color: var(--gray-700);
            font-weight: 500;
            font-size: 0.95rem;
            transition: all 0.3s ease;
            position: relative;
            padding: 0.5rem 0;
        }

        .nav__link:hover {
            color: var(--primary);
        }

        .nav__social {
            display: flex;
            gap: 0.75rem;
            align-items: center;
        }

        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 42px;
            height: 42px;
            border-radius: 12px;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 1.1rem;
            position: relative;
        }

        .social-link.youtube {
            background: var(--gradient-youtube);
            color: var(--white);
        }

        .social-link.linkedin {
            background: #0077b5;
            color: var(--white);
        }

        .social-link.github {
            background: var(--gray-800);
            color: var(--white);
        }

        .social-link.medium {
            background: #000000;
            color: var(--white);
        }

        .social-link:hover {
            transform: translateY(-2px) scale(1.05);
            box-shadow: var(--shadow-lg);
        }

        /* Hero Section */
        .hero {
            background: var(--gradient-hero);
            color: var(--white);
            padding: 8rem 0 6rem;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none"><polygon fill="rgba(255,255,255,0.1)" points="1000,0 1000,80 0,100 0,0"/></svg>') repeat-x;
            background-size: 1000px 100px;
            animation: wave 15s linear infinite;
        }

        @keyframes wave {
            0% { background-position-x: 0; }
            100% { background-position-x: 1000px; }
        }

        .hero__content {
            position: relative;
            z-index: 2;
            animation: fadeInUp 1s ease-out;
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .hero__badge {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 0.75rem 1.5rem;
            border-radius: 50px;
            margin-bottom: 2rem;
            font-weight: 600;
            font-size: 0.95rem;
        }

        .hero__title {
            font-size: 3.5rem;
            font-weight: 900;
            margin-bottom: 1.5rem;
            line-height: 1.1;
            letter-spacing: -0.02em;
        }

        .hero__subtitle {
            font-size: 1.3rem;
            margin-bottom: 3rem;
            opacity: 0.95;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            font-weight: 400;
            line-height: 1.5;
        }

        .hero__cta {
            display: flex;
            gap: 1.5rem;
            justify-content: center;
            flex-wrap: wrap;
            margin-bottom: 4rem;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.75rem;
            padding: 1rem 2rem;
            border: none;
            border-radius: 12px;
            font-size: 1rem;
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
            transition: all 0.3s ease;
            font-family: inherit;
            position: relative;
            overflow: hidden;
        }

        .btn-youtube {
            background: var(--gradient-youtube);
            color: var(--white);
            box-shadow: var(--shadow-lg);
        }

        .btn-youtube:hover {
            background: #cc0000;
            transform: translateY(-2px);
            box-shadow: var(--shadow-xl);
        }

        .btn-primary {
            background: var(--white);
            color: var(--primary);
            box-shadow: var(--shadow-lg);
        }

        .btn-primary:hover {
            background: var(--gray-50);
            transform: translateY(-2px);
            box-shadow: var(--shadow-xl);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.2);
            color: var(--white);
            border: 2px solid rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(10px);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
        }

        /* Hero Stats */
        .hero__stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            max-width: 800px;
            margin: 0 auto;
        }

        .stat-item {
            text-align: center;
        }

        .stat-number {
            font-size: 2.5rem;
            font-weight: 800;
            display: block;
            margin-bottom: 0.5rem;
        }

        .stat-label {
            font-size: 0.95rem;
            opacity: 0.9;
        }

        /* Main Content */
        .main {
            background: var(--white);
        }

        .section {
            padding: 5rem 0;
        }

        .section__header {
            text-align: center;
            margin-bottom: 4rem;
        }

        .section__title {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--gray-900);
            margin-bottom: 1rem;
            letter-spacing: -0.02em;
        }

        .section__subtitle {
            font-size: 1.1rem;
            color: var(--gray-600);
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.6;
        }

        /* YouTube Channel Section */
        .youtube-section {
            background: var(--gray-50);
        }

        .channel-hero {
            background: var(--gradient-youtube);
            color: var(--white);
            padding: 4rem 0;
            border-radius: 20px;
            text-align: center;
            margin-bottom: 4rem;
            position: relative;
            overflow: hidden;
        }

        .channel-hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 20" preserveAspectRatio="none"><polygon fill="rgba(255,255,255,0.1)" points="0,20 100,0 100,20"/></svg>') repeat-x;
            background-size: 100px 20px;
        }

        .channel-content {
            position: relative;
            z-index: 2;
        }

        .channel-title {
            font-size: 2.5rem;
            font-weight: 800;
            margin-bottom: 1rem;
        }

        .channel-description {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            opacity: 0.95;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
        }

        /* DevOps Workflow Image */
        .workflow-section {
            background: var(--white);
            padding: 5rem 0;
        }

        .workflow-image {
            max-width: 100%;
            height: auto;
            border-radius: 16px;
            box-shadow: var(--shadow-xl);
            margin: 2rem 0;
        }

        /* Multi-Cloud Section */
        .multicloud-section {
            background: var(--gray-50);
            padding: 5rem 0;
        }

        .multicloud-image {
            max-width: 100%;
            height: auto;
            border-radius: 16px;
            box-shadow: var(--shadow-xl);
            margin: 2rem 0;
        }

        /* Cloud Platforms */
        .cloud-platforms {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .cloud-card {
            background: var(--white);
            border-radius: 16px;
            padding: 2rem;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .cloud-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-xl);
        }

        .cloud-card.aws:hover {
            border-color: var(--aws-orange);
        }

        .cloud-card.azure:hover {
            border-color: var(--azure-blue);
        }

        .cloud-card.gcp:hover {
            border-color: var(--gcp-blue);
        }

        .cloud-icon {
            font-size: 4rem;
            margin-bottom: 1.5rem;
        }

        .cloud-icon.aws { color: var(--aws-orange); }
        .cloud-icon.azure { color: var(--azure-blue); }
        .cloud-icon.gcp { color: var(--gcp-blue); }

        .cloud-title {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
            color: var(--gray-900);
        }

        .cloud-description {
            color: var(--gray-600);
            line-height: 1.6;
            margin-bottom: 1.5rem;
        }

        .cloud-topics {
            list-style: none;
            text-align: left;
        }

        .cloud-topics li {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
            color: var(--gray-700);
        }

        .cloud-topics li::before {
            content: '✓';
            color: var(--success);
            font-weight: bold;
        }

        /* Technologies Grid */
        .technologies-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            margin-top: 3rem;
        }

        .tech-item {
            background: var(--white);
            border-radius: 12px;
            padding: 1.5rem;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            border: 1px solid var(--gray-200);
        }

        .tech-item:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
            border-color: var(--primary);
        }

        .tech-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: var(--primary);
        }

        .tech-name {
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--gray-900);
            margin-bottom: 0.5rem;
        }

        .tech-category {
            font-size: 0.85rem;
            color: var(--gray-600);
        }

        /* Course Features */
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .feature-card {
            background: var(--white);
            border-radius: 16px;
            padding: 2rem;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            border-left: 4px solid var(--primary);
        }

        .feature-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
        }

        .feature-icon {
            font-size: 3rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }

        .feature-title {
            font-size: 1.3rem;
            font-weight: 700;
            color: var(--gray-900);
            margin-bottom: 1rem;
        }

        .feature-description {
            color: var(--gray-600);
            line-height: 1.6;
        }

        /* Contact Section */
        .contact {
            background: var(--gradient-hero);
            color: var(--white);
        }

        .contact-form {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 3rem;
            box-shadow: var(--shadow-2xl);
            color: var(--gray-800);
            max-width: 600px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
            color: var(--gray-700);
        }

        .form-control {
            width: 100%;
            padding: 1rem;
            border: 2px solid var(--gray-200);
            border-radius: 8px;
            font-size: 1rem;
            font-family: inherit;
            transition: all 0.3s ease;
            background: var(--white);
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
        }

        .btn-submit {
            width: 100%;
            background: var(--gradient-primary);
            color: var(--white);
            padding: 1rem 2rem;
            border: none;
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: var(--shadow-lg);
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-xl);
        }

        .message {
            text-align: center;
            margin-top: 1.5rem;
            padding: 1rem;
            border-radius: 8px;
            font-weight: 600;
            display: none;
        }

        .message.success {
            background: rgba(22, 163, 74, 0.1);
            color: var(--success);
            border: 1px solid var(--success);
        }

        .message.error {
            background: rgba(239, 68, 68, 0.1);
            color: var(--accent);
            border: 1px solid var(--accent);
        }

        /* Footer */
        .footer {
            background: var(--gray-900);
            color: var(--white);
            padding: 3rem 0 2rem;
        }

        .footer__content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .footer__section h3 {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 1rem;
            color: var(--white);
        }

        .footer__text {
            color: var(--gray-300);
            line-height: 1.6;
            margin-bottom: 1rem;
        }

        .footer__social {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }

        .footer__social .social-link {
            width: 45px;
            height: 45px;
            border-radius: 12px;
        }

        .footer__bottom {
            border-top: 1px solid var(--gray-800);
            padding-top: 2rem;
            text-align: center;
            color: var(--gray-400);
        }

        /* Floating YouTube Button */
        .floating-youtube {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--gradient-youtube);
            color: var(--white);
            border: none;
            border-radius: 50%;
            width: 65px;
            height: 65px;
            font-size: 1.5rem;
            cursor: pointer;
            box-shadow: var(--shadow-xl);
            z-index: 1000;
            transition: all 0.3s ease;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        .floating-youtube:hover {
            background: #cc0000;
            transform: scale(1.1);
            animation: none;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav__menu {
                display: none;
            }

            .hero {
                padding: 6rem 0 4rem;
            }

            .hero__title {
                font-size: 2.5rem;
            }

            .hero__cta {
                flex-direction: column;
                align-items: center;
            }

            .btn {
                width: 100%;
                max-width: 300px;
                justify-content: center;
            }

            .section__title {
                font-size: 2rem;
            }

            .channel-title {
                font-size: 2rem;
            }

            .contact-form {
                padding: 2rem;
                margin: 0 1rem;
            }

            .container {
                padding: 0 15px;
            }

            .hero__stats {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .hero__stats {
                grid-template-columns: 1fr;
            }

            .hero__title {
                font-size: 2rem;
            }

            .section {
                padding: 3rem 0;
            }
        }

        /* Animations */
        .fade-in {
            opacity: 0;
            transform: translateY(20px);
            transition: all 0.6s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <nav class="nav container">
            <div class="nav__brand">
                <div class="brand-logo">YA</div>
                <div class="brand-text">
                    <h2>Yash Academy</h2>
                    <p>DevOps & Cloud Expert</p>
                </div>
            </div>
            <ul class="nav__menu">
                <li><a href="#home" class="nav__link">Home</a></li>
                <li><a href="#youtube" class="nav__link">YouTube Channel</a></li>
                <li><a href="#courses" class="nav__link">Free Courses</a></li>
                <li><a href="#technologies" class="nav__link">Technologies</a></li>
                <li><a href="#contact" class="nav__link">Get Started</a></li>
            </ul>
            <div class="nav__social">
                <a href="https://www.youtube.com/@Yashacademy0" target="_blank" class="social-link youtube" title="YouTube Channel">
                    <i class="fab fa-youtube"></i>
                </a>
                <a href="https://www.linkedin.com/in/yaswanth-arumulla/" target="_blank" class="social-link linkedin" title="LinkedIn">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="https://github.com/arumullayaswanth" target="_blank" class="social-link github" title="GitHub">
                    <i class="fab fa-github"></i>
                </a>
                <a href="https://medium.com/@yaswanth.arumulla" target="_blank" class="social-link medium" title="Medium">
                    <i class="fab fa-medium"></i>
                </a>
            </div>
        </nav>
    </header>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="container">
            <div class="hero__content">
                <div class="hero__badge">
                    <i class="fab fa-youtube"></i>
                    100% FREE DevOps & Cloud Tutorials
                </div>
                <h1 class="hero__title">Master DevOps & Multi-Cloud<br>with Real-Time Projects</h1>
                <p class="hero__subtitle">
                    🚀 Complete hands-on learning journey covering <strong>AWS, Azure, GCP, Docker, Kubernetes, Jenkins, GitLab CI/CD, and Monitoring Tools</strong>. 
                    Perfect for beginners starting their DevOps career with end-to-end real-time projects!
                </p>
                <div class="hero__cta">
                    <a href="https://www.youtube.com/@Yashacademy0" target="_blank" class="btn btn-youtube">
                        <i class="fab fa-youtube"></i>
                        Subscribe Now - FREE!
                    </a>
                    <a href="#courses" class="btn btn-primary">
                        <i class="fas fa-play-circle"></i>
                        Start Learning
                    </a>
                    <a href="#contact" class="btn btn-secondary">
                        <i class="fas fa-envelope"></i>
                        Join Community
                    </a>
                </div>
                <div class="hero__stats">
                    <div class="stat-item">
                        <span class="stat-number">100+</span>
                        <span class="stat-label">Free Video Tutorials</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">15+</span>
                        <span class="stat-label">Real-Time Projects</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">3</span>
                        <span class="stat-label">Cloud Platforms</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">24/7</span>
                        <span class="stat-label">Community Support</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Main Content -->
    <main class="main">
        <!-- YouTube Channel Section -->
        <section id="youtube" class="section youtube-section">
            <div class="container">
                <div class="channel-hero">
                    <div class="channel-content">
                        <h2 class="channel-title">🎯 Your DevOps Learning Hub</h2>
                        <p class="channel-description">
                            Subscribe to my YouTube channel for comprehensive tutorials covering DevOps fundamentals to advanced real-time projects. 
                            Perfect for beginners who want to build a solid foundation in cloud computing and DevOps practices.
                        </p>
                        <a href="https://www.youtube.com/@Yashacademy0" target="_blank" class="btn btn-primary">
                            <i class="fab fa-youtube"></i>
                            Subscribe & Get Started
                        </a>
                    </div>
                </div>

                <div class="section__header">
                    <h2 class="section__title">🌟 Why Choose Yash Academy?</h2>
                    <p class="section__subtitle">
                        I created this channel specifically for people starting their DevOps journey. Every tutorial is designed with beginners in mind, 
                        progressing step-by-step to advanced real-world scenarios.
                    </p>
                </div>

                <div class="features-grid">
                    <div class="feature-card fade-in">
                        <div class="feature-icon">🎓</div>
                        <h3 class="feature-title">Beginner-Friendly Approach</h3>
                        <p class="feature-description">
                            Every topic starts from basics. No prior knowledge required. I explain each concept clearly with practical examples 
                            so you can follow along easily.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">🛠️</div>
                        <h3 class="feature-title">Real-Time Projects</h3>
                        <p class="feature-description">
                            Learn by doing! Every tutorial includes hands-on projects that mirror real industry scenarios. 
                            Build your portfolio while learning.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">🔄</div>
                        <h3 class="feature-title">End-to-End Coverage</h3>
                        <p class="feature-description">
                            From setting up your first server to deploying applications in production. 
                            Complete DevOps lifecycle covered in detail.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">💬</div>
                        <h3 class="feature-title">Community Support</h3>
                        <p class="feature-description">
                            Join our growing community of learners. Get your questions answered, share your progress, 
                            and connect with fellow DevOps enthusiasts.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">🆓</div>
                        <h3 class="feature-title">100% Free Content</h3>
                        <p class="feature-description">
                            All tutorials are completely free. My mission is to make quality DevOps education accessible 
                            to everyone, regardless of background.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">📈</div>
                        <h3 class="feature-title">Career-Focused</h3>
                        <p class="feature-description">
                            Learn skills that employers actually want. Every project and tutorial is designed to help you 
                            land your first DevOps role or advance your career.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- DevOps Workflow Section -->
        <section class="workflow-section">
            <div class="container">
                <div class="section__header">
                    <h2 class="section__title">🔄 Complete DevOps Workflow You'll Master</h2>
                    <p class="section__subtitle">
                        Learn the entire DevOps pipeline from development to production deployment with hands-on experience
                    </p>
                </div>
                <div style="text-align: center;">
                    <img src="https://images.surferseo.art/24ad599e-2536-4c73-adc9-1c4b61a4dd5d.png" 
                         alt="Professional DevOps Workflow - Development to Production Pipeline" 
                         class="workflow-image">
                </div>
            </div>
        </section>

        <!-- Multi-Cloud Section -->
        <section class="multicloud-section">
            <div class="container">
                <div class="section__header">
                    <h2 class="section__title">☁️ Multi-Cloud Mastery: AWS, Azure & GCP</h2>
                    <p class="section__subtitle">
                        Master all three major cloud platforms with comprehensive tutorials and real-world projects
                    </p>
                </div>
                
                <div style="text-align: center;">
                    <img src="https://images.surferseo.art/5bcf8c1b-70df-4c14-8e0f-afcd12ff7f4e.png" 
                         alt="Multi-Cloud Architecture - AWS, Azure, GCP Integration" 
                         class="multicloud-image">
                </div>

                <div class="cloud-platforms">
                    <div class="cloud-card aws fade-in">
                        <div class="cloud-icon aws">
                            <i class="fab fa-aws"></i>
                        </div>
                        <h3 class="cloud-title">Amazon Web Services</h3>
                        <p class="cloud-description">
                            Master the world's leading cloud platform with comprehensive tutorials covering core services and advanced architectures.
                        </p>
                        <ul class="cloud-topics">
                            <li>EC2, S3, VPC, IAM fundamentals</li>
                            <li>EKS for Kubernetes orchestration</li>
                            <li>Lambda serverless computing</li>
                            <li>CloudFormation Infrastructure as Code</li>
                            <li>Real-time monitoring with CloudWatch</li>
                            <li>Production deployment strategies</li>
                        </ul>
                    </div>

                    <div class="cloud-card azure fade-in">
                        <div class="cloud-icon azure">
                            <i class="fab fa-microsoft"></i>
                        </div>
                        <h3 class="cloud-title">Microsoft Azure</h3>
                        <p class="cloud-description">
                            Explore Microsoft's powerful cloud ecosystem with hands-on projects and enterprise-grade solutions.
                        </p>
                        <ul class="cloud-topics">
                            <li>Azure Virtual Machines & Storage</li>
                            <li>AKS (Azure Kubernetes Service)</li>
                            <li>Azure DevOps pipelines</li>
                            <li>ARM templates & Bicep</li>
                            <li>Azure Monitor & Application Insights</li>
                            <li>Hybrid cloud scenarios</li>
                        </ul>
                    </div>

                    <div class="cloud-card gcp fade-in">
                        <div class="cloud-icon gcp">
                            <i class="fab fa-google"></i>
                        </div>
                        <h3 class="cloud-title">Google Cloud Platform</h3>
                        <p class="cloud-description">
                            Leverage Google's innovative cloud services and cutting-edge technologies for modern applications.
                        </p>
                        <ul class="cloud-topics">
                            <li>Compute Engine & Cloud Storage</li>
                            <li>GKE (Google Kubernetes Engine)</li>
                            <li>Cloud Build CI/CD pipelines</li>
                            <li>Deployment Manager</li>
                            <li>Stackdriver monitoring</li>
                            <li>BigData & ML integration</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- Free Courses Section -->
        <section id="courses" class="section">
            <div class="container">
                <div class="section__header">
                    <h2 class="section__title">📚 Complete Free Course Curriculum</h2>
                    <p class="section__subtitle">
                        Structured learning path from beginner to advanced with hands-on projects and real-world scenarios
                    </p>
                </div>

                <div class="features-grid">
                    <div class="feature-card fade-in">
                        <div class="feature-icon">🐳</div>
                        <h3 class="feature-title">Docker Mastery</h3>
                        <p class="feature-description">
                            <strong>15+ Videos</strong><br>
                            Container fundamentals, Docker Compose, multi-stage builds, security best practices, 
                            and production deployments with real applications.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">⚙️</div>
                        <h3 class="feature-title">Kubernetes Deep Dive</h3>
                        <p class="feature-description">
                            <strong>20+ Videos</strong><br>
                            Pods, Services, Deployments, ConfigMaps, Secrets, Ingress, Helm charts, 
                            and complete application orchestration from scratch.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">🔄</div>
                        <h3 class="feature-title">CI/CD Pipelines</h3>
                        <p class="feature-description">
                            <strong>12+ Videos</strong><br>
                            Jenkins automation, GitLab CI/CD, GitHub Actions, pipeline as code, 
                            automated testing, and deployment strategies.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">☁️</div>
                        <h3 class="feature-title">Multi-Cloud Projects</h3>
                        <p class="feature-description">
                            <strong>25+ Videos</strong><br>
                            AWS, Azure, and GCP implementations, cross-cloud deployments, 
                            cost optimization, and hybrid cloud architectures.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">📊</div>
                        <h3 class="feature-title">Monitoring & Observability</h3>
                        <p class="feature-description">
                            <strong>10+ Videos</strong><br>
                            Prometheus, Grafana, ELK Stack, application monitoring, 
                            alerting strategies, and performance optimization.
                        </p>
                    </div>

                    <div class="feature-card fade-in">
                        <div class="feature-icon">🏗️</div>
                        <h3 class="feature-title">Infrastructure as Code</h3>
                        <p class="feature-description">
                            <strong>18+ Videos</strong><br>
                            Terraform mastery, Ansible automation, CloudFormation, 
                            ARM templates, and infrastructure best practices.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Technologies Section -->
        <section id="technologies" class="section">
            <div class="container">
                <div class="section__header">
                    <h2 class="section__title">🛠️ Technologies You'll Master</h2>
                    <p class="section__subtitle">
                        Comprehensive coverage of all essential DevOps and cloud technologies with hands-on tutorials
                    </p>
                </div>

                <div class="technologies-grid">
                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fab fa-docker"></i>
                        </div>
                        <h3 class="tech-name">Docker</h3>
                        <p class="tech-category">Containerization</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fas fa-dharmachakra"></i>
                        </div>
                        <h3 class="tech-name">Kubernetes</h3>
                        <p class="tech-category">Orchestration</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fab fa-jenkins"></i>
                        </div>
                        <h3 class="tech-name">Jenkins</h3>
                        <p class="tech-category">CI/CD</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fab fa-gitlab"></i>
                        </div>
                        <h3 class="tech-name">GitLab CI/CD</h3>
                        <p class="tech-category">DevOps Platform</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fab fa-aws"></i>
                        </div>
                        <h3 class="tech-name">AWS</h3>
                        <p class="tech-category">Cloud Platform</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fab fa-microsoft"></i>
                        </div>
                        <h3 class="tech-name">Azure</h3>
                        <p class="tech-category">Cloud Platform</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fab fa-google"></i>
                        </div>
                        <h3 class="tech-name">GCP</h3>
                        <p class="tech-category">Cloud Platform</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fas fa-cubes"></i>
                        </div>
                        <h3 class="tech-name">Terraform</h3>
                        <p class="tech-category">Infrastructure as Code</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fas fa-cogs"></i>
                        </div>
                        <h3 class="tech-name">Ansible</h3>
                        <p class="tech-category">Configuration Management</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <h3 class="tech-name">Prometheus</h3>
                        <p class="tech-category">Monitoring</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fas fa-chart-bar"></i>
                        </div>
                        <h3 class="tech-name">Grafana</h3>
                        <p class="tech-category">Visualization</p>
                    </div>

                    <div class="tech-item fade-in">
                        <div class="tech-icon">
                            <i class="fas fa-search"></i>
                        </div>
                        <h3 class="tech-name">ELK Stack</h3>
                        <p class="tech-category">Logging</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="section contact">
            <div class="container">
                <div class="section__header">
                    <h2 class="section__title">🚀 Start Your DevOps Journey Today!</h2>
                    <p class="section__subtitle">
                        Join our community of learners and get personalized guidance on your DevOps career path
                    </p>
                </div>

                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-group">
                            <label for="name" class="form-label">Full Name *</label>
                            <input type="text" id="name" name="name" class="form-control" placeholder="Your full name" required>
                        </div>

                        <div class="form-group">
                            <label for="email" class="form-label">Email Address *</label>
                            <input type="email" id="email" name="email" class="form-control" placeholder="your@email.com" required>
                        </div>

                        <div class="form-group">
                            <label for="experience" class="form-label">Experience Level *</label>
                            <select id="experience" name="experience" class="form-control" required>
                                <option value="">Select your level</option>
                                <option value="complete-beginner">Complete Beginner (No IT experience)</option>
                                <option value="some-it">Some IT Background</option>
                                <option value="developer">Developer wanting to learn DevOps</option>
                                <option value="sysadmin">System Administrator</option>
                                <option value="experienced">Experienced in DevOps</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="interest" class="form-label">Primary Interest *</label>
                            <select id="interest" name="interest" class="form-control" required>
                                <option value="">What interests you most?</option>
                                <option value="docker-kubernetes">Docker & Kubernetes</option>
                                <option value="aws-cloud">AWS Cloud</option>
                                <option value="azure-cloud">Azure Cloud</option>
                                <option value="gcp-cloud">Google Cloud Platform</option>
                                <option value="cicd-pipelines">CI/CD Pipelines</option>
                                <option value="monitoring">Monitoring & Observability</option>
                                <option value="everything">Everything - Complete DevOps</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="goal" class="form-label">Your Goal</label>
                            <select id="goal" name="goal" class="form-control">
                                <option value="">What's your main goal? (Optional)</option>
                                <option value="career-change">Career change to DevOps</option>
                                <option value="skill-upgrade">Upgrade current skills</option>
                                <option value="certification">Prepare for certifications</option>
                                <option value="personal-projects">Personal learning projects</option>
                                <option value="job-preparation">Prepare for DevOps interviews</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="message" class="form-label">Message</label>
                            <textarea id="message" name="message" class="form-control" rows="4" 
                                      placeholder="Any specific questions or topics you'd like me to cover? (Optional)"></textarea>
                        </div>

                        <button type="submit" class="btn-submit">
                            <i class="fas fa-rocket"></i>
                            Get Started & Join Community
                        </button>

                        <div id="formMessage" class="message"></div>
                    </form>

                    <div style="text-align: center; margin-top: 2rem; padding-top: 2rem; border-top: 1px solid var(--gray-200);">
                        <p style="color: var(--gray-600); margin-bottom: 1rem;">
                            <strong>📱 Connect with me on all platforms:</strong>
                        </p>
                        <div class="footer__social">
                            <a href="https://www.youtube.com/@Yashacademy0" target="_blank" class="social-link youtube" title="YouTube Channel">
                                <i class="fab fa-youtube"></i>
                            </a>
                            <a href="https://www.linkedin.com/in/yaswanth-arumulla/" target="_blank" class="social-link linkedin" title="LinkedIn">
                                <i class="fab fa-linkedin"></i>
                            </a>
                            <a href="https://github.com/arumullayaswanth" target="_blank" class="social-link github" title="GitHub">
                                <i class="fab fa-github"></i>
                            </a>
                            <a href="https://medium.com/@yaswanth.arumulla" target="_blank" class="social-link medium" title="Medium">
                                <i class="fab fa-medium"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer__content">
                <div class="footer__section">
                    <h3>🎓 Yash Academy</h3>
                    <p class="footer__text">
                        Empowering beginners to master DevOps and cloud technologies through comprehensive, 
                        free YouTube tutorials and real-world projects. Your journey to a successful DevOps career starts here!
                    </p>
                    <div class="footer__social">
                        <a href="https://www.youtube.com/@Yashacademy0" target="_blank" class="social-link youtube" title="YouTube">
                            <i class="fab fa-youtube"></i>
                        </a>
                        <a href="https://www.linkedin.com/in/yaswanth-arumulla/" target="_blank" class="social-link linkedin" title="LinkedIn">
                            <i class="fab fa-linkedin"></i>
                        </a>
                        <a href="https://github.com/arumullayaswanth" target="_blank" class="social-link github" title="GitHub">
                            <i class="fab fa-github"></i>
                        </a>
                        <a href="https://medium.com/@yaswanth.arumulla" target="_blank" class="social-link medium" title="Medium">
                            <i class="fab fa-medium"></i>
                        </a>
                    </div>
                </div>

                <div class="footer__section">
                    <h3>🎯 Learning Paths</h3>
                    <p class="footer__text">
                        • Complete Beginner to DevOps Expert<br>
                        • AWS, Azure, GCP Mastery<br>
                        • Docker & Kubernetes Deep Dive<br>
                        • CI/CD Pipeline Implementation<br>
                        • Real-time Project Portfolio<br>
                        • Career Guidance & Interview Prep
                    </p>
                </div>

                <div class="footer__section">
                    <h3>🛠️ Technologies Covered</h3>
                    <p class="footer__text">
                        <strong>Cloud Platforms:</strong> AWS, Azure, GCP<br>
                        <strong>Containers:</strong> Docker, Kubernetes<br>
                        <strong>CI/CD:</strong> Jenkins, GitLab, GitHub Actions<br>
                        <strong>Infrastructure:</strong> Terraform, Ansible<br>
                        <strong>Monitoring:</strong> Prometheus, Grafana, ELK<br>
                        <strong>And much more!</strong>
                    </p>
                </div>

                <div class="footer__section">
                    <h3>💡 Why Choose Us?</h3>
                    <p class="footer__text">
                        ✅ 100% Free Content<br>
                        ✅ Beginner-Friendly Approach<br>
                        ✅ Real-World Projects<br>
                        ✅ Step-by-Step Tutorials<br>
                        ✅ Active Community Support<br>
                        ✅ Regular Content Updates
                    </p>
                </div>
            </div>

            <div class="footer__bottom">
                <p>&copy; 2024 Yash Academy. All rights reserved. | Made with ❤️ for DevOps learners worldwide</p>
                <p style="margin-top: 0.5rem;">
                    🚀 <strong>Subscribe to our YouTube channel for free DevOps tutorials!</strong>
                </p>
            </div>
        </div>
    </footer>

    <!-- Floating YouTube Button -->
    <button class="floating-youtube" onclick="openYouTube()" title="Subscribe to YouTube Channel">
        <i class="fab fa-youtube"></i>
    </button>

    <script>
        // Open YouTube channel
        function openYouTube() {
            window.open('https://www.youtube.com/@Yashacademy0', '_blank');
        }

        // Main initialization
        document.addEventListener('DOMContentLoaded', function() {
            // Smooth scrolling for navigation links
            const navLinks = document.querySelectorAll('a[href^="#"]');
            navLinks.forEach(link => {
                link.addEventListener('click', function(e) {
                    e.preventDefault();
                    const targetId = this.getAttribute('href');
                    const targetElement = document.querySelector(targetId);
                    
                    if (targetElement) {
                        const headerHeight = document.querySelector('.header').offsetHeight;
                        const targetPosition = targetElement.offsetTop - headerHeight;
                        
                        window.scrollTo({
                            top: targetPosition,
                            behavior: 'smooth'
                        });
                    }
                });
            });

            // Fade in animation on scroll
            const observerOptions = {
                threshold: 0.1,
                rootMargin: '0px 0px -50px 0px'
            };

            const observer = new IntersectionObserver(function(entries) {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('visible');
                    }
                });
            }, observerOptions);

            document.querySelectorAll('.fade-in').forEach(el => {
                observer.observe(el);
            });

            // Contact form handling
            const contactForm = document.getElementById('contactForm');
            const messageDiv = document.getElementById('formMessage');

            contactForm.addEventListener('submit', function(e) {
                e.preventDefault();

                const formData = new FormData(this);
                const name = formData.get('name').trim();
                const email = formData.get('email').trim();
                const experience = formData.get('experience');
                const interest = formData.get('interest');
                const goal = formData.get('goal');
                const message = formData.get('message').trim();

                // Show success message
                let successMessage = '🎉 Thank you, ' + name + '! Welcome to the Yash Academy community!<br><br>';
                
                if (experience === 'complete-beginner') {
                    successMessage += '🎯 Perfect! I have designed my tutorials specifically for complete beginners. Start with my DevOps Fundamentals playlist.<br><br>';
                } else {
                    successMessage += '🚀 Great! Based on your ' + experience + ' background, you will find my advanced tutorials very helpful.<br><br>';
                }

                if (interest) {
                    const interestMap = {
                        'docker-kubernetes': 'Docker & Kubernetes',
                        'aws-cloud': 'AWS Cloud',
                        'azure-cloud': 'Azure Cloud',
                        'gcp-cloud': 'Google Cloud Platform',
                        'cicd-pipelines': 'CI/CD Pipelines',
                        'monitoring': 'Monitoring & Observability',
                        'everything': 'Complete DevOps'
                    };
                    successMessage += '📚 I will prioritize creating more content on <strong>' + interestMap[interest] + '</strong> based on your interest!<br><br>';
                }

                successMessage += '📺 <strong>Next Steps:</strong><br>' +
                    '1. Subscribe to my YouTube channel for new tutorials<br>' +
                    '2. Check out my GitHub for project source code<br>' +
                    '3. Connect with me on LinkedIn for career guidance<br>' +
                    '4. Follow my Medium blog for in-depth articles<br><br>' +
                    '🎯 I will be creating more content based on community feedback. Thank you for joining!';

                showMessage(successMessage, 'success');
                
                // Reset form
                this.reset();

                // Redirect to YouTube after 5 seconds
                setTimeout(function() {
                    window.open('https://www.youtube.com/@Yashacademy0', '_blank');
                }, 5000);
            });

            function showMessage(text, type) {
                messageDiv.innerHTML = text;
                messageDiv.className = 'message ' + type;
                messageDiv.style.display = 'block';
                
                // Scroll to message
                messageDiv.scrollIntoView({ behavior: 'smooth', block: 'center' });

                // Auto hide after 10 seconds
                setTimeout(function() {
                    messageDiv.style.display = 'none';
                }, 10000);
            }

            // Header scroll effect
            let lastScrollTop = 0;
            const header = document.querySelector('.header');
            
            window.addEventListener('scroll', function() {
                const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
                
                if (scrollTop > lastScrollTop && scrollTop > 100) {
                    header.style.transform = 'translateY(-100%)';
                } else {
                    header.style.transform = 'translateY(0)';
                }
                
                lastScrollTop = scrollTop;
            });

            // All external links
            const externalButtons = document.querySelectorAll('a[href*="youtube.com"], a[href*="linkedin.com"], a[href*="github.com"], a[href*="medium.com"]');
            externalButtons.forEach(function(button) {
                button.addEventListener('click', function(e) {
                    // Let the default behavior happen (opening in new tab)
                    console.log('User clicked: ' + button.href);
                });
            });
        });
    </script>
</body>
</html>
