/* styles.css - design moderno e responsivo */
:root{
  --bg:#0b0b0f;
  --card:#0f1720;
  --muted:#9aa4b2;
  --accent:#ff8a00;
  --accent-2:#f6c94d;
  --glass: rgba(255,255,255,0.04);
  --radius:12px;
  --container:1100px;
  font-family: 'Inter', system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
  color-scheme: dark;
}

*{box-sizing:border-box}
html,body{height:100%}
body{
  margin:0;
  background: linear-gradient(180deg,#05050a 0%, #071026 100%);
  color:#e6eef6;
  -webkit-font-smoothing:antialiased;
  -moz-osx-font-smoothing:grayscale;
  line-height:1.45;
  font-size:16px;
}

.container{max-width:var(--container);margin:0 auto;padding:24px}

.site-header{
  position:sticky;top:0;z-index:60;background:linear-gradient(180deg, rgba(10,10,14,0.6), rgba(10,10,14,0.3));
  backdrop-filter: blur(6px);border-bottom:1px solid rgba(255,255,255,0.03);
}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:12px}
.logo{display:flex;align-items:center;gap:10px;text-decoration:none;color:inherit}
.logo-img{width:56px;height:56px}
.brand{font-weight:700;font-size:18px;letter-spacing:0.4px}

.main-nav{display:flex;align-items:center;gap:14px}
.main-nav a{color:var(--muted);text-decoration:none;padding:8px 10px;border-radius:8px}
.main-nav a:hover{color:#fff;background:rgba(255,255,255,0.02)}
.menu-toggle{display:none;background:none;border:none;color:inherit;font-size:22px;padding:8px}

/* Hero */
.hero{padding:40px 0}
.hero-inner{display:flex;gap:28px;align-items:center;justify-content:space-between}
.hero-text{flex:1;max-width:640px}
.hero h1{font-size:42px;margin:0 0 12px}
.lead{color:var(--muted);font-size:18px;margin-bottom:14px}
.accent{color:var(--accent);font-weight:800}

.hero-ctas{display:flex;gap:12px;margin-bottom:18px}
.btn{background:transparent;border:1px solid rgba(255,255,255,0.06);padding:10px 16px;border-radius:10px;color:inherit;text-decoration:none;cursor:pointer}
.btn:hover{transform:translateY(-2px)}
.btn-primary{background:linear-gradient(90deg,var(--accent),var(--accent-2));border:none;color:#0b0b0f;font-weight:700}
.btn-outline{border:1px solid rgba(255,255,255,0.12)}

/* Hero art */
.hero-art{width:420px;display:flex;flex-direction:column;gap:14px;align-items:flex-end}
.card{background:var(--card);padding:18px;border-radius:14px;box-shadow:0 6px 20px rgba(0,0,0,0.6);width:260px}
.slot-preview .slot-reel{display:flex;gap:6px;justify-content:center;align-items:center;font-size:28px}
.tiger-svg{width:96px;display:block;margin:0 auto}

/* Features */
.about{padding-top:10px}
.features-grid{display:flex;gap:18px;margin-top:14px}
.feature{background:var(--glass);padding:18px;border-radius:12px;flex:1}
.feature h3{margin-top:0;color:var(--accent-2)}

/* Demo slot */
.slot-demo{display:flex;align-items:center;gap:20px;background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));padding:18px;border-radius:12px}
.reel{display:flex;gap:10px;padding:12px;background:rgba(0,0,0,0.25);border-radius:10px}
.symbol{width:64px;height:64px;background:rgba(255,255,255,0.03);display:flex;align-items:center;justify-content:center;border-radius:8px;font-size:28px}
.controls{display:flex;flex-direction:column;gap:8px;align-items:flex-start}
.result{color:var(--muted)}

/* Testimonials */
.test-grid{display:flex;gap:12px;margin-top:12px}
.test-grid blockquote{background:var(--card);padding:16px;border-radius:10px;margin:0;color:var(--muted)}

/* Contact */
.contact-form{display:flex;flex-direction:column;gap:12px}
.form-row{display:flex;gap:10px}
.contact-form input, .contact-form textarea, .signup-form input{background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.04);padding:10px;border-radius:10px;color:inherit}
.small{font-size:12px;color:var(--muted)}

/* Footer */
.site-footer{padding:20px 0;margin-top:30px;border-top:1px solid rgba(255,255,255,0.03)}
.footer-inner{display:flex;justify-content:space-between;align-items:center;gap:12px;color:var(--muted)}

/* Modal */
.modal{position:fixed;inset:0;display:none;align-items:center;justify-content:center;background:rgba(0,0,0,0.6)}
.modal[aria-hidden="false"]{display:flex}
.modal-panel{background:linear-gradient(180deg,#0d1116,#08101a);padding:20px;border-radius:12px;min-width:320px;max-width:420px}
.modal-close{position:absolute;right:18px;top:18px;background:none;border:none;color:var(--muted);font-size:18px}

/* Games & promos */
.games-grid, .promo-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:16px}
.game-card, .promo{background:var(--card);padding:16px;border-radius:12px}
.game-thumb{font-size:40px}

/* Responsive */
@media (max-width:900px){
  .hero-inner{flex-direction:column-reverse;align-items:stretch}
  .hero-art{width:100%;align-items:center;flex-direction:row;justify-content:center}
  .main-nav{display:none}
  .menu-toggle{display:block}
  .features-grid{flex-direction:column}
  .test-grid{flex-direction:column}
}
