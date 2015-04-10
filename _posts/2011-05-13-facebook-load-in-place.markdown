---
layout: post
title: Facebook in-place loader
categories:
- Comments
- Pagination
featured_image: '2011/05/facebook-item-comment-load-in-place-closed.png'
---
{% image big 2011/05/facebook-item-comment-load-in-place-closed.png alt="Latest comments on a facebook post with a button above the comments to load older ones" %}

Facebook shows you the most recent comments on a post by default. They are sorted with the most recent at the bottom, with earlier comments removed and replaced with a button that tells you how many comments there are total. Clicking the button loads the older comments above the ones that are already showing:

{% image big 2011/05/facebook-item-comment-load-in-place-open.png alt="All comments visible on a Facebook post" %}

Facebook also loads new posts in place at the bottom of the feed. There is no button, it's triggered by scroll position. If it works, new posts just appear at the bottom, or if there's an error it shows below the last post:

{% image big 2011/05/facebook-load-in-place.png alt="All comments visible on a Facebook post" %}