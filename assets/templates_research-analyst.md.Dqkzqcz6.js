import{_ as s,o as n,c as t,ai as e}from"./chunks/framework.BBSijY9B.js";const h=JSON.parse('{"title":"模板：调研分析员","description":"围绕一个问题系统收集公开资料，区分事实与推断，交付带来源的报告。","frontmatter":{"related":["/start/brief-tasks-clearly","/templates/team-content-studio"],"template":"research-analyst","title":"模板：调研分析员","description":"围绕一个问题系统收集公开资料，区分事实与推断，交付带来源的报告。","section":"templates","order":6,"role":"调研分析员","type":"单 Bot 模板","tags":["模板","调研","分析"],"sources":["https://cursor.com/docs/grok-bot/work","https://docs.x.ai/grok-bot/skills-routines-and-automations"],"wordCount":142,"readingTime":1,"head":[["meta",{"property":"og:type","content":"article"}],["meta",{"property":"og:title","content":"模板：调研分析员 | WANGXXXL"}],["meta",{"property":"og:description","content":"围绕一个问题系统收集公开资料，区分事实与推断，交付带来源的报告。"}],["meta",{"property":"og:url","content":"https://wangxxxl.com/templates/research-analyst"}],["meta",{"property":"og:image","content":"https://wangxxxl.com/og/templates-research-analyst-368c580800.png"}],["meta",{"property":"og:image:alt","content":"模板：调研分析员 · WANGXXXL · wangxxxl.com"}],["meta",{"name":"twitter:title","content":"模板：调研分析员 | WANGXXXL"}],["meta",{"name":"twitter:description","content":"围绕一个问题系统收集公开资料，区分事实与推断，交付带来源的报告。"}],["meta",{"name":"twitter:image","content":"https://wangxxxl.com/og/templates-research-analyst-368c580800.png"}],["meta",{"name":"twitter:image:alt","content":"模板：调研分析员 · WANGXXXL · wangxxxl.com"}],["link",{"rel":"canonical","href":"https://wangxxxl.com/templates/research-analyst"}]]},"headers":[],"relativePath":"templates/research-analyst.md","filePath":"templates/research-analyst.md","lastUpdated":1792485206000}'),p={name:"templates/research-analyst.md"};function l(o,a,i,r,c,d){return n(),t("div",null,[...a[0]||(a[0]=[e(`<h1 id="模板-调研分析员" tabindex="-1">模板：调研分析员 <a class="header-anchor" href="#模板-调研分析员" aria-label="Permalink to &quot;模板：调研分析员&quot;">​</a></h1><ul><li><strong>角色</strong>：调研分析员</li><li><strong>类型</strong>：单 Bot 模板</li><li><strong>需要的连接</strong>：无硬性要求（使用浏览器）；可选网盘存放报告</li><li><strong>适合谁</strong>：需要做市场、竞品、政策、技术选型调研的人</li></ul><h2 id="提示词" tabindex="-1">提示词 <a class="header-anchor" href="#提示词" aria-label="Permalink to &quot;提示词&quot;">​</a></h2><div class="language-text vp-adaptive-theme"><button title="Copy Code" class="copy"></button><span class="lang">text</span><pre class="shiki shiki-themes github-light github-dark vp-code" tabindex="0"><code><span class="line"><span>你的岗位是&quot;调研分析员&quot;。请记住以下工作方法：</span></span>
<span class="line"><span></span></span>
<span class="line"><span>【接到题目后】</span></span>
<span class="line"><span>先用 3-5 句话复述你理解的调研目标、范围和交付物，等我确认再开始。</span></span>
<span class="line"><span></span></span>
<span class="line"><span>【收集】</span></span>
<span class="line"><span>- 优先使用一手来源：官方网站、官方文档、公告、权威机构报告。</span></span>
<span class="line"><span>- 二手来源（媒体报道、博客）需注明，并尽量追溯到原始出处。</span></span>
<span class="line"><span>- 每条信息记录来源链接和发布日期。</span></span>
<span class="line"><span></span></span>
<span class="line"><span>【报告结构】</span></span>
<span class="line"><span>1. 一句话结论</span></span>
<span class="line"><span>2. 关键发现（每条注明来源）</span></span>
<span class="line"><span>3. 对比表（如适用）</span></span>
<span class="line"><span>4. 我的推断（明确标注为推断，并写出依据）</span></span>
<span class="line"><span>5. 未能核实的问题</span></span>
<span class="line"><span>6. 参考来源列表</span></span>
<span class="line"><span></span></span>
<span class="line"><span>【边界】</span></span>
<span class="line"><span>- 不注册账号、不填写表单、不联系任何人。</span></span>
<span class="line"><span>- 找不到可靠来源时如实说明，不编造数字和引用。</span></span>
<span class="line"><span>- 报告存为 /workspace/调研/主题_日期.md，并发在对话里。</span></span></code></pre></div><h2 id="用法示例" tabindex="-1">用法示例 <a class="header-anchor" href="#用法示例" aria-label="Permalink to &quot;用法示例&quot;">​</a></h2><div class="language-text vp-adaptive-theme"><button title="Copy Code" class="copy"></button><span class="lang">text</span><pre class="shiki shiki-themes github-light github-dark vp-code" tabindex="0"><code><span class="line"><span>调研题目：适合 10 人以内团队的在线文档工具。比较 4 款主流产品的协作功能、权限管理、</span></span>
<span class="line"><span>导出能力和公开的价格信息。下周二前交付。</span></span></code></pre></div><h2 id="如何定制" tabindex="-1">如何定制 <a class="header-anchor" href="#如何定制" aria-label="Permalink to &quot;如何定制&quot;">​</a></h2><ul><li><strong>深度</strong>：在题目后加&quot;快速版（30 分钟内）&quot;或&quot;深度版&quot;，控制投入和用量。</li><li><strong>格式</strong>：需要给领导看的，加一句&quot;另外做一页 PPT 摘要&quot;。</li><li><strong>持续跟踪</strong>：把调研方法存成技能，配合例程每月更新一次。</li></ul>`,8)])])}const g=s(p,[["render",l]]);export{h as __pageData,g as default};
