
# To search 工业园区, set areaCode to 320571
# To search all region, set areaCode to empty
set areacode "320571"

set pagesize 1000 # set to 1000 when tested to be working
set pagecount 19 # 15*1238/1000 = 18.57 => 19
for page in (seq $pagecount)
    curl "https://www.12345.suzhou.com.cn/hswz-apis/bbs/post/list?currentPage=$page&pageSize=$pagesize&themeType=&moduleCode=2&postType=&orderType=&timeType=&areaCode=$areacode&quickSearch=" | json2table /data/rows/id,theme -p > downloaded-(math "($page-1)*$pagesize")-(math "($page)*$pagesize").log
    # cat /tmp/out | grep '公积金' >> /tmp/filtered.log
    # finalURL: https://www.12345.suzhou.com.cn/hswzbbs/post-details?postId=100106589&moduleCode=2
end

