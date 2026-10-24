<?xml version="1.0" encoding="utf-8"?>
<!--
  WANGXXXL · 日更 RSS 的浏览器预览样式
  Adapted from rss.style "simple-rss.xslt" (https://github.com/fileformat/rss.style)
  MIT License, Copyright (c) 2024-2026 Andrew Marcuse.
  Changes: Chinese text, dark theme matching wangxxxl.com, banner to /subscribe and X,
  inline copy button (no external scripts or CSS), empty-feed message.
-->
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:atom="http://www.w3.org/2005/Atom">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
<html lang="zh-CN">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title><xsl:value-of select="/rss/channel/title"/> · RSS 订阅</title>
		<style>
			:root { color-scheme: dark; }
			* { box-sizing: border-box; }
			body { margin: 0; background: #0a0a0c; color: #fafafa; font: 16px/1.7 Inter, -apple-system, "PingFang SC", "Noto Sans CJK SC", "Microsoft YaHei", sans-serif; }
			.wrap { max-width: 760px; margin: 0 auto; padding: 24px 20px 64px; }
			a { color: #60a5fa; }
			.banner { display: block; padding: 18px 20px; border-radius: 18px; background: linear-gradient(135deg, #1e3a8a, #2563eb); color: #fff; text-decoration: none; }
			.banner b { display: block; font-size: 18px; }
			.banner span { font-size: 14px; opacity: .9; }
			.topnav { position: sticky; top: 0; z-index: 10; background: rgba(10,10,12,.86); -webkit-backdrop-filter: saturate(180%) blur(14px); backdrop-filter: saturate(180%) blur(14px); border-bottom: 1px solid rgba(255,255,255,.08); }
			.topnav-in { max-width: 760px; margin: 0 auto; padding: 6px 20px; display: flex; flex-wrap: wrap; align-items: center; justify-content: space-between; gap: 0 12px; }
			.home { display: inline-flex; align-items: center; gap: 10px; min-height: 48px; color: #fafafa; text-decoration: none; font-weight: 700; font-size: 16px; white-space: nowrap; }
			.home img { width: 26px; height: 28px; display: block; }
			.links { display: flex; gap: 4px; }
			.links a { display: inline-flex; align-items: center; justify-content: center; min-height: 40px; padding: 0 12px; border-radius: 10px; color: rgba(235,235,245,.78); text-decoration: none; font-size: 14px; font-weight: 600; white-space: nowrap; }
			.links a:hover, .links a:focus-visible { background: rgba(255,255,255,.08); color: #fafafa; }
			.links a.on { color: #fafafa; background: rgba(255,255,255,.1); }
			@media (max-width: 560px) {
				.topnav-in { padding: 4px 16px 8px; }
				.links { width: 100%; }
				.links a { flex: 1; padding: 0 6px; background: rgba(255,255,255,.05); }
			}
			.brand a { color: inherit; text-decoration: none; display: inline-flex; align-items: center; min-height: 40px; }
			.brand a:hover, .brand a:focus-visible { color: #fafafa; text-decoration: underline; text-underline-offset: 3px; }
			.brand { display: flex; align-items: center; gap: 10px; margin: 20px 0 2px; font-weight: 700; font-size: 15px; color: rgba(235,235,245,.7); }
			h1 { font-size: 30px; line-height: 1.3; margin: 0 0 8px; }
			.muted { color: rgba(235,235,245,.68); font-size: 15px; }
			.box { margin: 22px 0; padding: 18px; border-radius: 18px; background: #16161a; border: 1px solid rgba(255,255,255,.1); }
			.feed { display: flex; gap: 8px; margin-top: 10px; }
			.feed code { flex: 1; min-width: 0; overflow-x: auto; white-space: nowrap; padding: 10px 12px; border-radius: 12px; background: #0f0f12; border: 1px solid rgba(255,255,255,.1); font-size: 14px; }
			.feed button { flex: none; min-height: 44px; padding: 0 16px; border: 0; border-radius: 12px; background: #fafafa; color: #0a0a0c; font-weight: 700; font-size: 14px; }
			@media (max-width: 420px) { .feed { flex-wrap: wrap; } .feed code { flex-basis: 100%; white-space: normal; word-break: break-all; overflow-x: visible; } .feed button { flex: 1; } }
			.actions { display: flex; flex-wrap: wrap; gap: 10px; margin-top: 14px; }
			.btn { display: inline-flex; align-items: center; min-height: 44px; padding: 0 18px; border-radius: 999px; text-decoration: none; font-weight: 600; font-size: 15px; border: 1px solid rgba(255,255,255,.18); color: #fafafa; }
			.btn.primary { background: #fafafa; color: #0a0a0c; border-color: #fafafa; }
			h2 { font-size: 20px; margin: 32px 0 8px; }
			.item { padding: 14px 0; border-bottom: 1px solid rgba(255,255,255,.08); }
			.item a { display: inline-block; padding: 6px 0; font-weight: 600; font-size: 17px; text-decoration: none; color: #fafafa; }
			.item small { display: block; color: rgba(235,235,245,.5); }
			.item p { margin: 4px 0 0; color: rgba(235,235,245,.68); font-size: 14px; }
			footer { margin-top: 40px; font-size: 12px; color: rgba(235,235,245,.42); }
			footer a { color: inherit; }
			footer a.copy { display: inline-flex; align-items: center; min-height: 44px; padding: 0 8px; margin: 0 -8px; border-radius: 8px; text-decoration: none; }
			footer a.copy:hover, footer a.copy:focus-visible { color: rgba(235,235,245,.8); text-decoration: underline; text-underline-offset: 3px; }
		</style>
	</head>
	<body>
		<nav class="topnav" aria-label="网站导航">
			<div class="topnav-in">
				<a class="home" href="/" aria-label="WANGXXXL 首页"><img src="/brand/logo-mark-dark.svg" alt="" width="26" height="28" />WANGXXXL</a>
				<div class="links">
					<a href="/start/">快速开始</a>
					<a href="/daily/">日更</a>
					<a href="/subscribe">订阅更新</a>
				</div>
			</div>
		</nav>
		<div class="wrap">
			<a class="banner" href="/subscribe">
				<b>这是给 RSS 阅读器用的订阅地址</b>
				<span>不知道怎么用？点这里查看订阅方式（关注 X、加微信或用阅读器）→</span>
			</a>
			<div class="brand"><a href="/">WANGXXXL</a></div>
			<h1><xsl:value-of select="/rss/channel/title"/></h1>
			<p class="muted"><xsl:value-of select="/rss/channel/description"/></p>
			<div class="box">
				<div>把下面的地址粘贴到 RSS 阅读器（如 Inoreader、Feedly、NetNewsWire）的"添加订阅"里：</div>
				<div class="feed">
					<code id="feedurl">https://wangxxxl.com/feed.xml</code>
					<button type="button" id="copybtn">复制</button>
				</div>
				<div class="actions">
					<a class="btn primary" href="https://x.com/IMWANGXXXL" target="_blank" rel="noopener noreferrer">关注 X @IMWANGXXXL</a>
					<a class="btn">
						<xsl:attribute name="href"><xsl:value-of select="/rss/channel/link"/></xsl:attribute>
						回到网站看日更</a>
				</div>
			</div>
			<h2>最近更新</h2>
			<xsl:if test="count(/rss/channel/item) = 0">
				<p class="muted">日更即将开始，新内容会出现在这里。</p>
			</xsl:if>
			<xsl:for-each select="/rss/channel/item">
				<div class="item">
					<a>
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</a>
					<small><xsl:value-of select="pubDate"/></small>
					<p><xsl:value-of select="description"/></p>
				</div>
			</xsl:for-each>
			<script>
				document.getElementById('copybtn').addEventListener('click', function () {
					var b = this, el = document.getElementById('feedurl'), t = el.textContent;
					function sel() { var r = document.createRange(); r.selectNodeContents(el); var s = window.getSelection(); s.removeAllRanges(); s.addRange(r); b.textContent = '已选中，请复制'; }
					if (navigator.clipboard) navigator.clipboard.writeText(t).then(function () { b.textContent = '已复制'; }, sel); else sel();
				});
			</script>
			<!-- MIT notice for rss.style is kept in the header comment of this file and in README.md; it is intentionally not rendered on the page. -->
			<footer><a class="copy" href="https://x.com/IMWANGXXXL" target="_blank" rel="noopener noreferrer" aria-label="© WANGXXXL，在 X 上打开 @IMWANGXXXL">© WANGXXXL</a></footer>
		</div>
	</body>
</html>
	</xsl:template>
</xsl:stylesheet>
