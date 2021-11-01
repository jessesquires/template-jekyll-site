---
layout: standalone
title: My Blog
---

{% for post in site.posts limit: site.feeds.limit %}
<article>
<h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
<h5><small>{{ post.date | date_to_long_string }}</small></h5>
<p>{{ post.excerpt }}</p>
</article>
{% endfor %}
