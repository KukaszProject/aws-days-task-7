FROM nginx:1.17-alpine

RUN printf '<!DOCTYPE html>\n\
<html><head><meta charset="utf-8"><title>Security Gate</title>\n\
<style>\n\
body{margin:0;min-height:100vh;display:flex;align-items:center;justify-content:center;\n\
background:linear-gradient(135deg,#1a1a2e,#16213e);font-family:system-ui,sans-serif;color:#fff}\n\
.card{text-align:center;padding:3rem;border-radius:12px;\n\
background:rgba(255,59,48,0.15);border:2px solid #ff3b30;box-shadow:0 0 40px rgba(255,59,48,0.3)}\n\
h1{font-size:2.5rem;margin:0 0 .5rem}\n\
.icon{font-size:4rem;margin-bottom:1rem}\n\
p{color:#ccc;font-size:1.1rem;margin:.5rem 0}\n\
</style></head><body>\n\
<div class="card">\n\
<div class="icon">&#9888;</div>\n\
<h1>SECURITY GATE FAILED</h1>\n\
<p>Critical vulnerabilities detected &mdash; deployment should have been blocked.</p>\n\
<p>Your Dockerfile is corrupted. Restore a clean Dockerfile and redeploy.</p>\n\
</div></body></html>' > /usr/share/nginx/html/index.html

EXPOSE 80
