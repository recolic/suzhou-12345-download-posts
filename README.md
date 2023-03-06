# suzhou-12345-download-posts

Script to download all posts from www.12345.suzhou.com.cn 寒山闻钟

苏州寒山闻钟论坛爬虫, 主要功能: 无需登陆即可搜索贴文

## requires

fish, curl, json2table

## usage

1. read `suzhou-12345-webapi.fish` to learn how is it working.
2. set your areaCode, set your desired pagesize & pagecount, run it to download all posts. Visit <https://www.12345.suzhou.com.cn/hswzbbs/hswz?moduleCode=2> to get the total post count.
3. Use `grep` to perform searching, use the ID to get the post URL.

The final URL looks like this: <https://www.12345.suzhou.com.cn/hswzbbs/post-details?postId=100106619&moduleCode=2>
