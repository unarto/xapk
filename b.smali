.class public Lb/h/k/b;
.super Ljava/lang/Object;
.source "ProxyTool.java"


# instance fields
.field public a:Lb/h/k/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/h/d/d;ILjava/lang/String;Landroid/content/Context;)V
    .registers 35
    .param p1, "current"    # Lb/h/d/d;
    .param p2, "port"    # I
    .param p3, "ss"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .line 36
    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "tls"

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".yaml"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 37
    .local v4, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 39
    .local v5, "filePharos":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 40
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 43
    :cond_2f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 46
    .local v6, "fos":Ljava/io/FileOutputStream;
    const-string v0, "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"
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_5f2

    move-object v7, v0

    .line 47
    .local v7, "en":Ljava/lang/String;
    const-string v8, ""

    move-object v9, v8

    .line 49
    .local v9, "ok":Ljava/lang/String;
    :try_start_3b
    invoke-static {}, Lpharos/Pharos;->corecode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lb/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_45

    move-object v9, v0

    .line 52
    goto :goto_46

    .line 50
    :catch_45
    move-exception v0

    .line 56
    :goto_46
    :try_start_46
    const-string v0, "udp: true\nipv6: false\nallow-lan: true\nnmode: Rule\nlog-level: silent\nsocks-port: 8080\nexternal-controller: 127.0.0.1:7070\n\ndns:\n  enable: true\n  listen: 127.0.0.1:1053\n  enhanced-mode: redir-host\n  nameserver:\n    - 1.1.1.1\n    - 8.8.8.8\n    - 223.5.5.5\n    - 223.6.6.6\n    - 9.9.9.9\n    - tls://13800000000.rubyfish.cn:853\n  \n  fallback:\n    - 1.1.1.1\n    - 8.8.8.8\n    - tls://dns.alidns.com:853\n    - tls://1.0.0.1:853\n    - tls://dns.google:853\n\n\nproxies:\n- { name: \"pharos\", type: socks5, server: \"127.0.0.1\", port: 9999, udp: true}\n[sstest]\n\n\n\n\n\n\n\n\nproxy-groups:\n\n\n\n  - { name: \"Proxy\", type: select, proxies: [\"pharos\"] }\n\n\n\nrules:\n# Apple\n- DOMAIN-SUFFIX,ip.cn,DIRECT\n- DOMAIN-SUFFIX,ipip.net,DIRECT\n- DOMAIN-SUFFIX,ip111.cn,DIRECT\n- DOMAIN-SUFFIX,googleapis.cn,Proxy\n- DOMAIN-SUFFIX,googleapis.com,Proxy\n- DOMAIN-SUFFIX,google.com,Proxy\n- DOMAIN-SUFFIX,app-measurement.com,Proxy\n\n- DOMAIN-SUFFIX,gameloft.com,Proxy\n- DOMAIN-SUFFIX,wshtgame.com,Proxy\n- DOMAIN-SUFFIX,apps.apple.com,Proxy\n- DOMAIN-SUFFIX,music.apple.com,DIRECT\n- DOMAIN-SUFFIX,icloud.com,DIRECT\n- DOMAIN-SUFFIX,icloud-content.com,DIRECT\n- DOMAIN-SUFFIX,me.com,DIRECT\n- DOMAIN-SUFFIX,mzstatic.com,DIRECT\n- DOMAIN-SUFFIX,akadns.net,DIRECT\n- DOMAIN-SUFFIX,aaplimg.com,DIRECT\n- DOMAIN-SUFFIX,cdn-apple.com,DIRECT\n- DOMAIN-SUFFIX,apple.com,DIRECT\n- DOMAIN-SUFFIX,apple-cloudkit.com,DIRECT\n- DOMAIN,hls.itunes.apple.com,Proxy\n- DOMAIN-SUFFIX,crashlytics.com,REJECT \n\n\n# \u81ea\u5b9a\u4e49\u89c4\u5219\n## \u60a8\u53ef\u4ee5\u5728\u6b64\u5904\u63d2\u5165\u60a8\u8865\u5145\u7684\u81ea\u5b9a\u4e49\u89c4\u5219\n\n# \u56fd\u5185\u7f51\u7ad9\n- DOMAIN-SUFFIX,cn,DIRECT\n- DOMAIN-KEYWORD,-cn,DIRECT\n\n- DOMAIN-SUFFIX,126.com,DIRECT\n- DOMAIN-SUFFIX,126.net,DIRECT\n- DOMAIN-SUFFIX,127.net,DIRECT\n- DOMAIN-SUFFIX,163.com,DIRECT\n- DOMAIN-SUFFIX,360buyimg.com,DIRECT\n- DOMAIN-SUFFIX,36kr.com,DIRECT\n- DOMAIN-SUFFIX,acfun.tv,DIRECT\n- DOMAIN-SUFFIX,air-matters.com,DIRECT\n- DOMAIN-SUFFIX,aixifan.com,DIRECT\n- DOMAIN-SUFFIX,akamaized.net,DIRECT\n- DOMAIN-KEYWORD,alicdn,DIRECT\n- DOMAIN-KEYWORD,alipay,DIRECT\n- DOMAIN-KEYWORD,taobao,DIRECT\n- DOMAIN-SUFFIX,amap.com,DIRECT\n- DOMAIN-SUFFIX,autonavi.com,DIRECT\n- DOMAIN-KEYWORD,baidu,DIRECT\n- DOMAIN-SUFFIX,baidu.com,DIRECT\n- DOMAIN-SUFFIX,bdimg.com,DIRECT\n- DOMAIN-SUFFIX,bdstatic.com,DIRECT\n- DOMAIN-SUFFIX,bilibili.com,DIRECT\n- DOMAIN-SUFFIX,caiyunapp.com,DIRECT\n- DOMAIN-SUFFIX,clouddn.com,DIRECT\n- DOMAIN-SUFFIX,cnbeta.com,DIRECT\n- DOMAIN-SUFFIX,cnbetacdn.com,DIRECT\n- DOMAIN-SUFFIX,cootekservice.com,DIRECT\n- DOMAIN-SUFFIX,csdn.net,DIRECT\n- DOMAIN-SUFFIX,ctrip.com,DIRECT\n- DOMAIN-SUFFIX,dgtle.com,DIRECT\n- DOMAIN-SUFFIX,dianping.com,DIRECT\n- DOMAIN-SUFFIX,ntp.org,DIRECT\n- DOMAIN-SUFFIX,douban.com,DIRECT\n- DOMAIN-SUFFIX,doubanio.com,DIRECT\n- DOMAIN-SUFFIX,duokan.com,DIRECT\n- DOMAIN-SUFFIX,easou.com,DIRECT\n- DOMAIN-SUFFIX,ele.me,DIRECT\n- DOMAIN-SUFFIX,feng.com,DIRECT\n- DOMAIN-SUFFIX,fir.im,DIRECT\n- DOMAIN-SUFFIX,frdic.com,DIRECT\n- DOMAIN-SUFFIX,g-cores.com,DIRECT\n- DOMAIN-SUFFIX,godic.net,DIRECT\n- DOMAIN-SUFFIX,gtimg.com,DIRECT\n- DOMAIN,cdn.hockeyapp.net,DIRECT\n- DOMAIN-SUFFIX,hongxiu.com,DIRECT\n- DOMAIN-SUFFIX,hxcdn.net,DIRECT\n- DOMAIN-SUFFIX,iciba.com,DIRECT\n- DOMAIN-SUFFIX,ifeng.com,DIRECT\n- DOMAIN-SUFFIX,ifengimg.com,DIRECT\n- DOMAIN-SUFFIX,ipip.net,DIRECT\n- DOMAIN-SUFFIX,iqiyi.com,DIRECT\n- DOMAIN-SUFFIX,jd.com,DIRECT\n- DOMAIN-SUFFIX,jianshu.com,DIRECT\n- DOMAIN-SUFFIX,knewone.com,DIRECT\n- DOMAIN-SUFFIX,le.com,DIRECT\n- DOMAIN-SUFFIX,lecloud.com,DIRECT\n- DOMAIN-SUFFIX,lemicp.com,DIRECT\n- DOMAIN-SUFFIX,licdn.com,DIRECT\n- DOMAIN-SUFFIX,linkedin.com,DIRECT\n- DOMAIN-SUFFIX,luoo.net,DIRECT\n- DOMAIN-SUFFIX,meituan.com,DIRECT\n- DOMAIN-SUFFIX,meituan.net,DIRECT\n- DOMAIN-SUFFIX,mi.com,DIRECT\n- DOMAIN-SUFFIX,miaopai.com,DIRECT\n- DOMAIN-SUFFIX,microsoft.com,DIRECT\n- DOMAIN-SUFFIX,microsoftonline.com,DIRECT\n- DOMAIN-SUFFIX,miui.com,DIRECT\n- DOMAIN-SUFFIX,miwifi.com,DIRECT\n- DOMAIN-SUFFIX,mob.com,DIRECT\n- DOMAIN-SUFFIX,netease.com,DIRECT\n- DOMAIN-SUFFIX,office.com,DIRECT\n- DOMAIN-SUFFIX,office365.com,DIRECT\n- DOMAIN-KEYWORD,officecdn,DIRECT\n- DOMAIN-SUFFIX,oschina.net,DIRECT\n- DOMAIN-SUFFIX,ppsimg.com,DIRECT\n- DOMAIN-SUFFIX,pstatp.com,DIRECT\n- DOMAIN-SUFFIX,qcloud.com,DIRECT\n- DOMAIN-SUFFIX,qdaily.com,DIRECT\n- DOMAIN-SUFFIX,qdmm.com,DIRECT\n- DOMAIN-SUFFIX,qhimg.com,DIRECT\n- DOMAIN-SUFFIX,qhres.com,DIRECT\n- DOMAIN-SUFFIX,qidian.com,DIRECT\n- DOMAIN-SUFFIX,qihucdn.com,DIRECT\n- DOMAIN-SUFFIX,qiniu.com,DIRECT\n- DOMAIN-SUFFIX,qiniucdn.com,DIRECT\n- DOMAIN-SUFFIX,qiyipic.com,DIRECT\n- DOMAIN-SUFFIX,qq.com,DIRECT\n- DOMAIN-SUFFIX,qqurl.com,DIRECT\n- DOMAIN-SUFFIX,rarbg.to,DIRECT\n- DOMAIN-SUFFIX,ruguoapp.com,DIRECT\n- DOMAIN-SUFFIX,segmentfault.com,DIRECT\n- DOMAIN-SUFFIX,sinaapp.com,DIRECT\n- DOMAIN-SUFFIX,smzdm.com,DIRECT\n- DOMAIN-SUFFIX,snapdrop.net,DIRECT\n- DOMAIN-SUFFIX,sogou.com,DIRECT\n- DOMAIN-SUFFIX,sogoucdn.com,DIRECT\n- DOMAIN-SUFFIX,sohu.com,DIRECT\n- DOMAIN-SUFFIX,soku.com,DIRECT\n- DOMAIN-SUFFIX,speedtest.net,Proxy\n- DOMAIN-SUFFIX,sspai.com,DIRECT\n- DOMAIN-SUFFIX,suning.com,DIRECT\n- DOMAIN-SUFFIX,taobao.com,DIRECT\n- DOMAIN-SUFFIX,tencent.com,DIRECT\n- DOMAIN-SUFFIX,tenpay.com,DIRECT\n- DOMAIN-SUFFIX,tianyancha.com,DIRECT\n- DOMAIN-SUFFIX,tmall.com,DIRECT\n- DOMAIN-SUFFIX,tudou.com,DIRECT\n- DOMAIN-SUFFIX,umetrip.com,DIRECT\n- DOMAIN-SUFFIX,upaiyun.com,DIRECT\n- DOMAIN-SUFFIX,upyun.com,DIRECT\n- DOMAIN-SUFFIX,veryzhun.com,DIRECT\n- DOMAIN-SUFFIX,weather.com,DIRECT\n- DOMAIN-SUFFIX,weibo.com,DIRECT\n- DOMAIN-SUFFIX,xiami.com,DIRECT\n- DOMAIN-SUFFIX,xiami.net,DIRECT\n- DOMAIN-SUFFIX,xiaomicp.com,DIRECT\n- DOMAIN-SUFFIX,ximalaya.com,DIRECT\n- DOMAIN-SUFFIX,xmcdn.com,DIRECT\n- DOMAIN-SUFFIX,xunlei.com,DIRECT\n- DOMAIN-SUFFIX,yhd.com,DIRECT\n- DOMAIN-SUFFIX,yihaodianimg.com,DIRECT\n- DOMAIN-SUFFIX,yinxiang.com,DIRECT\n- DOMAIN-SUFFIX,ykimg.com,DIRECT\n- DOMAIN-SUFFIX,youdao.com,DIRECT\n- DOMAIN-SUFFIX,youku.com,DIRECT\n- DOMAIN-SUFFIX,zealer.com,DIRECT\n- DOMAIN-SUFFIX,zhihu.com,DIRECT\n- DOMAIN-SUFFIX,zhimg.com,DIRECT\n- DOMAIN-SUFFIX,zimuzu.tv,DIRECT\n\n# \u6297 DNS \u6c61\u67d3\n- DOMAIN-KEYWORD,amazon,Proxy\n- DOMAIN-KEYWORD,google,Proxy\n- DOMAIN-KEYWORD,gmail,Proxy\n- DOMAIN-KEYWORD,youtube,Proxy\n- DOMAIN-KEYWORD,facebook,Proxy\n- DOMAIN-SUFFIX,fb.me,Proxy\n- DOMAIN-SUFFIX,fbcdn.net,Proxy\n- DOMAIN-KEYWORD,twitter,Proxy\n- DOMAIN-KEYWORD,instagram,Proxy\n- DOMAIN-KEYWORD,dropbox,Proxy\n- DOMAIN-SUFFIX,twimg.com,Proxy\n- DOMAIN-KEYWORD,blogspot,Proxy\n- DOMAIN-SUFFIX,youtu.be,Proxy\n- DOMAIN-KEYWORD,whatsapp,Proxy\n\n# \u5e38\u89c1\u5e7f\u544a\u57df\u540d\u5c4f\u853d\n#- DOMAIN-KEYWORD,admarvel,REJECT\n#- DOMAIN-KEYWORD,admaster,REJECT\n#- DOMAIN-KEYWORD,adsage,REJECT\n#- DOMAIN-KEYWORD,adsmogo,REJECT\n#- DOMAIN-KEYWORD,adsrvmedia,REJECT\n#- DOMAIN-KEYWORD,adwords,REJECT\n#- DOMAIN-KEYWORD,adservice,REJECT\n#- DOMAIN-KEYWORD,domob,REJECT\n#- DOMAIN-KEYWORD,duomeng,REJECT\n#- DOMAIN-KEYWORD,dwtrack,REJECT\n#- DOMAIN-KEYWORD,guanggao,REJECT\n#- DOMAIN-KEYWORD,lianmeng,REJECT\n#- DOMAIN-SUFFIX,mmstat.com,REJECT\n#- DOMAIN-KEYWORD,omgmta,REJECT\n#- DOMAIN-KEYWORD,openx,REJECT\n#- DOMAIN-KEYWORD,partnerad,REJECT\n#- DOMAIN-KEYWORD,pingfore,REJECT\n#- DOMAIN-KEYWORD,supersonicads,REJECT\n#- DOMAIN-KEYWORD,tracking,REJECT\n#- DOMAIN-KEYWORD,uedas,REJECT\n#- DOMAIN-KEYWORD,umeng,REJECT\n#- DOMAIN-KEYWORD,usage,REJECT\n#- DOMAIN-KEYWORD,wlmonitor,REJECT\n#- DOMAIN-KEYWORD,zjtoolbar,REJECT\n\n# \u56fd\u5916\u7f51\u7ad9\n- DOMAIN-SUFFIX,9to5mac.com,Proxy\n- DOMAIN-SUFFIX,abpchina.org,Proxy\n- DOMAIN-SUFFIX,adblockplus.org,Proxy\n- DOMAIN-SUFFIX,adobe.com,Proxy\n- DOMAIN-SUFFIX,alfredapp.com,Proxy\n- DOMAIN-SUFFIX,amplitude.com,Proxy\n- DOMAIN-SUFFIX,ampproject.org,Proxy\n- DOMAIN-SUFFIX,android.com,Proxy\n- DOMAIN-SUFFIX,angularjs.org,Proxy\n- DOMAIN-SUFFIX,aolcdn.com,Proxy\n- DOMAIN-SUFFIX,apkpure.com,Proxy\n- DOMAIN-SUFFIX,appledaily.com,Proxy\n- DOMAIN-SUFFIX,appshopper.com,Proxy\n- DOMAIN-SUFFIX,appspot.com,Proxy\n- DOMAIN-SUFFIX,arcgis.com,Proxy\n- DOMAIN-SUFFIX,archive.org,Proxy\n- DOMAIN-SUFFIX,armorgames.com,Proxy\n- DOMAIN-SUFFIX,aspnetcdn.com,Proxy\n- DOMAIN-SUFFIX,att.com,Proxy\n- DOMAIN-SUFFIX,awsstatic.com,Proxy\n- DOMAIN-SUFFIX,azureedge.net,Proxy\n- DOMAIN-SUFFIX,azurewebsites.net,Proxy\n- DOMAIN-SUFFIX,bing.com,Proxy\n- DOMAIN-SUFFIX,bintray.com,Proxy\n- DOMAIN-SUFFIX,bit.com,Proxy\n- DOMAIN-SUFFIX,bit.ly,Proxy\n- DOMAIN-SUFFIX,bitbucket.org,Proxy\n- DOMAIN-SUFFIX,bjango.com,Proxy\n- DOMAIN-SUFFIX,bkrtx.com,Proxy\n- DOMAIN-SUFFIX,blog.com,Proxy\n- DOMAIN-SUFFIX,blogcdn.com,Proxy\n- DOMAIN-SUFFIX,blogger.com,Proxy\n- DOMAIN-SUFFIX,blogsmithmedia.com,Proxy\n- DOMAIN-SUFFIX,blogspot.com,Proxy\n- DOMAIN-SUFFIX,blogspot.hk,Proxy\n- DOMAIN-SUFFIX,bloomberg.com,Proxy\n- DOMAIN-SUFFIX,box.com,Proxy\n- DOMAIN-SUFFIX,box.net,Proxy\n- DOMAIN-SUFFIX,cachefly.net,Proxy\n- DOMAIN-SUFFIX,chromium.org,Proxy\n- DOMAIN-SUFFIX,cl.ly,Proxy\n- DOMAIN-SUFFIX,cloudflare.com,Proxy\n- DOMAIN-SUFFIX,cloudfront.net,Proxy\n- DOMAIN-SUFFIX,cloudmagic.com,Proxy\n- DOMAIN-SUFFIX,cmail19.com,Proxy\n- DOMAIN-SUFFIX,cnet.com,Proxy\n- DOMAIN-SUFFIX,cocoapods.org,Proxy\n- DOMAIN-SUFFIX,comodoca.com,Proxy\n- DOMAIN-SUFFIX,crashlytics.com,Proxy\n- DOMAIN-SUFFIX,culturedcode.com,Proxy\n- DOMAIN-SUFFIX,d.pr,Proxy\n- DOMAIN-SUFFIX,danilo.to,Proxy\n- DOMAIN-SUFFIX,dayone.me,Proxy\n- DOMAIN-SUFFIX,db.tt,Proxy\n- DOMAIN-SUFFIX,deskconnect.com,Proxy\n- DOMAIN-SUFFIX,disq.us,Proxy\n- DOMAIN-SUFFIX,disqus.com,Proxy\n- DOMAIN-SUFFIX,disquscdn.com,Proxy\n- DOMAIN-SUFFIX,dnsimple.com,Proxy\n- DOMAIN-SUFFIX,docker.com,Proxy\n- DOMAIN-SUFFIX,dribbble.com,Proxy\n- DOMAIN-SUFFIX,droplr.com,Proxy\n- DOMAIN-SUFFIX,duckduckgo.com,Proxy\n- DOMAIN-SUFFIX,dueapp.com,Proxy\n- DOMAIN-SUFFIX,dytt8.net,Proxy\n- DOMAIN-SUFFIX,edgecastcdn.net,Proxy\n- DOMAIN-SUFFIX,edgekey.net,Proxy\n- DOMAIN-SUFFIX,edgesuite.net,Proxy\n- DOMAIN-SUFFIX,engadget.com,Proxy\n- DOMAIN-SUFFIX,entrust.net,Proxy\n- DOMAIN-SUFFIX,eurekavpt.com,Proxy\n- DOMAIN-SUFFIX,evernote.com,Proxy\n- DOMAIN-SUFFIX,fabric.io,Proxy\n- DOMAIN-SUFFIX,fast.com,Proxy\n- DOMAIN-SUFFIX,fastly.net,Proxy\n- DOMAIN-SUFFIX,fc2.com,Proxy\n- DOMAIN-SUFFIX,feedburner.com,Proxy\n- DOMAIN-SUFFIX,feedly.com,Proxy\n- DOMAIN-SUFFIX,feedsportal.com,Proxy\n- DOMAIN-SUFFIX,fiftythree.com,Proxy\n- DOMAIN-SUFFIX,firebaseio.com,Proxy\n- DOMAIN-SUFFIX,flexibits.com,Proxy\n- DOMAIN-SUFFIX,flickr.com,Proxy\n- DOMAIN-SUFFIX,flipboard.com,Proxy\n- DOMAIN-SUFFIX,g.co,Proxy\n- DOMAIN-SUFFIX,gabia.net,Proxy\n- DOMAIN-SUFFIX,geni.us,Proxy\n- DOMAIN-SUFFIX,gfx.ms,Proxy\n- DOMAIN-SUFFIX,ggpht.com,Proxy\n- DOMAIN-SUFFIX,ghostnoteapp.com,Proxy\n- DOMAIN-SUFFIX,git.io,Proxy\n- DOMAIN-KEYWORD,github,Proxy\n- DOMAIN-SUFFIX,globalsign.com,Proxy\n- DOMAIN-SUFFIX,gmodules.com,Proxy\n- DOMAIN-SUFFIX,godaddy.com,Proxy\n- DOMAIN-SUFFIX,golang.org,Proxy\n- DOMAIN-SUFFIX,gongm.in,Proxy\n- DOMAIN-SUFFIX,goo.gl,Proxy\n- DOMAIN-SUFFIX,goodreaders.com,Proxy\n- DOMAIN-SUFFIX,goodreads.com,Proxy\n- DOMAIN-SUFFIX,gravatar.com,Proxy\n- DOMAIN-SUFFIX,gstatic.com,Proxy\n- DOMAIN-SUFFIX,gvt0.com,Proxy\n- DOMAIN-SUFFIX,hockeyapp.net,Proxy\n- DOMAIN-SUFFIX,hotmail.com,Proxy\n- DOMAIN-SUFFIX,icons8.com,Proxy\n- DOMAIN-SUFFIX,ifixit.com,Proxy\n- DOMAIN-SUFFIX,ift.tt,Proxy\n- DOMAIN-SUFFIX,ifttt.com,Proxy\n- DOMAIN-SUFFIX,iherb.com,Proxy\n- DOMAIN-SUFFIX,imageshack.us,Proxy\n- DOMAIN-SUFFIX,img.ly,Proxy\n- DOMAIN-SUFFIX,imgur.com,Proxy\n- DOMAIN-SUFFIX,imore.com,Proxy\n- DOMAIN-SUFFIX,instapaper.com,Proxy\n- DOMAIN-SUFFIX,ipn.li,Proxy\n- DOMAIN-SUFFIX,is.gd,Proxy\n- DOMAIN-SUFFIX,issuu.com,Proxy\n- DOMAIN-SUFFIX,itgonglun.com,Proxy\n- DOMAIN-SUFFIX,itun.es,Proxy\n- DOMAIN-SUFFIX,ixquick.com,Proxy\n- DOMAIN-SUFFIX,j.mp,Proxy\n- DOMAIN-SUFFIX,js.revsci.net,Proxy\n- DOMAIN-SUFFIX,jshint.com,Proxy\n- DOMAIN-SUFFIX,jtvnw.net,Proxy\n- DOMAIN-SUFFIX,justgetflux.com,Proxy\n- DOMAIN-SUFFIX,kat.cr,Proxy\n- DOMAIN-SUFFIX,klip.me,Proxy\n- DOMAIN-SUFFIX,libsyn.com,Proxy\n- DOMAIN-SUFFIX,linode.com,Proxy\n- DOMAIN-SUFFIX,lithium.com,Proxy\n- DOMAIN-SUFFIX,littlehj.com,Proxy\n- DOMAIN-SUFFIX,live.com,Proxy\n- DOMAIN-SUFFIX,live.net,Proxy\n- DOMAIN-SUFFIX,livefilestore.com,Proxy\n- DOMAIN-SUFFIX,llnwd.net,Proxy\n- DOMAIN-SUFFIX,macid.co,Proxy\n- DOMAIN-SUFFIX,macromedia.com,Proxy\n- DOMAIN-SUFFIX,macrumors.com,Proxy\n- DOMAIN-SUFFIX,mashable.com,Proxy\n- DOMAIN-SUFFIX,mathjax.org,Proxy\n- DOMAIN-SUFFIX,medium.com,Proxy\n- DOMAIN-SUFFIX,mega.co.nz,Proxy\n- DOMAIN-SUFFIX,mega.nz,Proxy\n- DOMAIN-SUFFIX,megaupload.com,Proxy\n- DOMAIN-SUFFIX,microsofttranslator.com,Proxy\n- DOMAIN-SUFFIX,mindnode.com,Proxy\n- DOMAIN-SUFFIX,mobile01.com,Proxy\n- DOMAIN-SUFFIX,modmyi.com,Proxy\n- DOMAIN-SUFFIX,msedge.net,Proxy\n- DOMAIN-SUFFIX,myfontastic.com,Proxy\n- DOMAIN-SUFFIX,name.com,Proxy\n- DOMAIN-SUFFIX,nextmedia.com,Proxy\n- DOMAIN-SUFFIX,nsstatic.net,Proxy\n- DOMAIN-SUFFIX,nssurge.com,Proxy\n- DOMAIN-SUFFIX,nyt.com,Proxy\n- DOMAIN-SUFFIX,nytimes.com,Proxy\n- DOMAIN-SUFFIX,omnigroup.com,Proxy\n- DOMAIN-SUFFIX,onedrive.com,Proxy\n- DOMAIN-SUFFIX,onenote.com,Proxy\n- DOMAIN-SUFFIX,ooyala.com,Proxy\n- DOMAIN-SUFFIX,openvpn.net,Proxy\n- DOMAIN-SUFFIX,openwrt.org,Proxy\n- DOMAIN-SUFFIX,orkut.com,Proxy\n- DOMAIN-SUFFIX,osxdaily.com,Proxy\n- DOMAIN-SUFFIX,outlook.com,Proxy\n- DOMAIN-SUFFIX,ow.ly,Proxy\n- DOMAIN-SUFFIX,paddleapi.com,Proxy\n- DOMAIN-SUFFIX,parallels.com,Proxy\n- DOMAIN-SUFFIX,parse.com,Proxy\n- DOMAIN-SUFFIX,pdfexpert.com,Proxy\n- DOMAIN-SUFFIX,periscope.tv,Proxy\n- DOMAIN-SUFFIX,pinboard.in,Proxy\n- DOMAIN-SUFFIX,pinterest.com,Proxy\n- DOMAIN-SUFFIX,pixelmator.com,Proxy\n- DOMAIN-SUFFIX,pixiv.net,Proxy\n- DOMAIN-SUFFIX,playpcesor.com,Proxy\n- DOMAIN-SUFFIX,playstation.com,Proxy\n- DOMAIN-SUFFIX,playstation.com.hk,Proxy\n- DOMAIN-SUFFIX,playstation.net,Proxy\n- DOMAIN-SUFFIX,playstationnetwork.com,Proxy\n- DOMAIN-SUFFIX,pushwoosh.com,Proxy\n- DOMAIN-SUFFIX,rime.im,Proxy\n- DOMAIN-SUFFIX,servebom.com,Proxy\n- DOMAIN-SUFFIX,sfx.ms,Proxy\n- DOMAIN-SUFFIX,shadowsocks.org,Proxy\n- DOMAIN-SUFFIX,sharethis.com,Proxy\n- DOMAIN-SUFFIX,shazam.com,Proxy\n- DOMAIN-SUFFIX,skype.com,Proxy\n- DOMAIN-SUFFIX,smartdnsProxy.com,Proxy\n- DOMAIN-SUFFIX,smartmailcloud.com,Proxy\n- DOMAIN-SUFFIX,sndcdn.com,Proxy\n- DOMAIN-SUFFIX,sony.com,Proxy\n- DOMAIN-SUFFIX,soundcloud.com,Proxy\n- DOMAIN-SUFFIX,sourceforge.net,Proxy\n- DOMAIN-SUFFIX,spotify.com,Proxy\n- DOMAIN-SUFFIX,squarespace.com,Proxy\n- DOMAIN-SUFFIX,sstatic.net,Proxy\n- DOMAIN-SUFFIX,st.luluku.pw,Proxy\n- DOMAIN-SUFFIX,stackoverflow.com,Proxy\n- DOMAIN-SUFFIX,startpage.com,Proxy\n- DOMAIN-SUFFIX,staticflickr.com,Proxy\n- DOMAIN-SUFFIX,steamcommunity.com,Proxy\n- DOMAIN-SUFFIX,symauth.com,Proxy\n- DOMAIN-SUFFIX,symcb.com,Proxy\n- DOMAIN-SUFFIX,symcd.com,Proxy\n- DOMAIN-SUFFIX,tapbots.com,Proxy\n- DOMAIN-SUFFIX,tapbots.net,Proxy\n- DOMAIN-SUFFIX,tdesktop.com,Proxy\n- DOMAIN-SUFFIX,techcrunch.com,Proxy\n- DOMAIN-SUFFIX,techsmith.com,Proxy\n- DOMAIN-SUFFIX,thepiratebay.org,Proxy\n- DOMAIN-SUFFIX,theverge.com,Proxy\n- DOMAIN-SUFFIX,time.com,Proxy\n- DOMAIN-SUFFIX,timeinc.net,Proxy\n- DOMAIN-SUFFIX,tiny.cc,Proxy\n- DOMAIN-SUFFIX,tinypic.com,Proxy\n- DOMAIN-SUFFIX,tmblr.co,Proxy\n- DOMAIN-SUFFIX,todoist.com,Proxy\n- DOMAIN-SUFFIX,trello.com,Proxy\n- DOMAIN-SUFFIX,trustasiassl.com,Proxy\n- DOMAIN-SUFFIX,tumblr.co,Proxy\n- DOMAIN-SUFFIX,tumblr.com,Proxy\n- DOMAIN-SUFFIX,tweetdeck.com,Proxy\n- DOMAIN-SUFFIX,tweetmarker.net,Proxy\n- DOMAIN-SUFFIX,twitch.tv,Proxy\n- DOMAIN-SUFFIX,txmblr.com,Proxy\n- DOMAIN-SUFFIX,typekit.net,Proxy\n- DOMAIN-SUFFIX,ubertags.com,Proxy\n- DOMAIN-SUFFIX,ublock.org,Proxy\n- DOMAIN-SUFFIX,ubnt.com,Proxy\n- DOMAIN-SUFFIX,ulyssesapp.com,Proxy\n- DOMAIN-SUFFIX,urchin.com,Proxy\n- DOMAIN-SUFFIX,usertrust.com,Proxy\n- DOMAIN-SUFFIX,v.gd,Proxy\n- DOMAIN-SUFFIX,v2ex.com,Proxy\n- DOMAIN-SUFFIX,vimeo.com,Proxy\n- DOMAIN-SUFFIX,vimeocdn.com,Proxy\n- DOMAIN-SUFFIX,vine.co,Proxy\n- DOMAIN-SUFFIX,vivaldi.com,Proxy\n- DOMAIN-SUFFIX,vox-cdn.com,Proxy\n- DOMAIN-SUFFIX,vsco.co,Proxy\n- DOMAIN-SUFFIX,vultr.com,Proxy\n- DOMAIN-SUFFIX,w.org,Proxy\n- DOMAIN-SUFFIX,w3schools.com,Proxy\n- DOMAIN-SUFFIX,webtype.com,Proxy\n- DOMAIN-SUFFIX,wikiwand.com,Proxy\n- DOMAIN-SUFFIX,wikileaks.org,Proxy\n- DOMAIN-SUFFIX,wikimedia.org,Proxy\n- DOMAIN-SUFFIX,wikipedia.com,Proxy\n- DOMAIN-SUFFIX,wikipedia.org,Proxy\n- DOMAIN-SUFFIX,windows.com,Proxy\n- DOMAIN-SUFFIX,windows.net,Proxy\n- DOMAIN-SUFFIX,wire.com,Proxy\n- DOMAIN-SUFFIX,wordpress.com,Proxy\n- DOMAIN-SUFFIX,workflowy.com,Proxy\n- DOMAIN-SUFFIX,wp.com,Proxy\n- DOMAIN-SUFFIX,wsj.com,Proxy\n- DOMAIN-SUFFIX,wsj.net,Proxy\n- DOMAIN-SUFFIX,xda-developers.com,Proxy\n- DOMAIN-SUFFIX,xeeno.com,Proxy\n- DOMAIN-SUFFIX,xiti.com,Proxy\n- DOMAIN-SUFFIX,yahoo.com,Proxy\n- DOMAIN-SUFFIX,yimg.com,Proxy\n- DOMAIN-SUFFIX,ying.com,Proxy\n- DOMAIN-SUFFIX,yoyo.org,Proxy\n- DOMAIN-SUFFIX,ytimg.com,Proxy\n\n# Telegram\n- DOMAIN-SUFFIX,telegra.ph,Proxy\n- DOMAIN-SUFFIX,telegram.org,Proxy\n\n- IP-CIDR,91.108.56.0/22,Proxy\n- IP-CIDR,91.108.4.0/22,Proxy\n- IP-CIDR,91.108.8.0/22,Proxy\n- IP-CIDR,109.239.140.0/24,Proxy\n- IP-CIDR,149.154.160.0/20,Proxy\n- IP-CIDR,149.154.164.0/22,Proxy\n\n# Local\n- IP-CIDR,127.0.0.0/8,DIRECT\n- IP-CIDR,172.16.0.0/12,DIRECT\n- IP-CIDR,172.19.0.0/12,DIRECT\n- IP-CIDR,192.168.0.0/16,DIRECT\n- IP-CIDR,10.0.0.0/8,DIRECT\n- IP-CIDR,17.0.0.0/8,DIRECT\n- IP-CIDR,100.64.0.0/10,DIRECT\n\n- GEOIP,CN,DIRECT\n- MATCH,Proxy\n"

    move-object v9, v0

    .line 611
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_5f2

    if-nez v0, :cond_77

    .line 612
    move-object v0, v8

    .line 625
    .local v0, "finalconfig":Ljava/lang/String;
    :try_start_50
    const-string v10, "[sstest]"
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_52} :catch_72

    move-object/from16 v11, p3

    :try_start_54
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 645
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 647
    .local v10, "bytes":[B
    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 649
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 651
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 653
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_79

    .line 1538
    .end local v0    # "finalconfig":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "filePharos":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "en":Ljava/lang/String;
    .end local v9    # "ok":Ljava/lang/String;
    .end local v10    # "bytes":[B
    :catch_72
    move-exception v0

    move-object/from16 v11, p3

    goto/16 :goto_5f3

    .line 611
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "filePharos":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "en":Ljava/lang/String;
    .restart local v9    # "ok":Ljava/lang/String;
    :cond_77
    move-object/from16 v11, p3

    .line 658
    :goto_79
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7d} :catch_5f2

    const-string v12, "[host]"

    const-string v13, "port"

    const-string v14, "ws"

    const-string v15, "[path]"

    const-string v10, "aid"

    move-object/from16 v17, v4

    .end local v4    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    const-string v4, "[aid]"

    move-object/from16 v18, v7

    .end local v7    # "en":Ljava/lang/String;
    .local v18, "en":Ljava/lang/String;
    const-string v7, "[port]"

    const/4 v11, 0x3

    if-ne v0, v11, :cond_260

    .line 660
    :try_start_92
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->q(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 662
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "null"

    .line 663
    .local v11, "tls":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    .line 664
    .local v16, "flag":Z
    if-eqz v16, :cond_aa

    .line 665
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v11, v19

    .line 667
    :cond_aa
    const-string v1, "net"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 668
    .local v1, "net":Ljava/lang/String;
    move-object/from16 v19, v12

    const-string v12, "tcp"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_ba} :catch_5f2

    move-object/from16 v20, v15

    const-string v15, "add"

    move-object/from16 v21, v14

    const-string v14, "[add]"

    move-object/from16 v22, v5

    .end local v5    # "filePharos":Ljava/io/File;
    .local v22, "filePharos":Ljava/io/File;
    const-string v5, "{\n  \"policy\": null,\n  \"log\": {\n    \"access\": \"\",\n    \"error\": \"\",\n    \"loglevel\": \"info\"\n  },\n  \"inbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"port\": "

    if-nez v12, :cond_d5

    :try_start_c8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cf

    goto :goto_d5

    :cond_cf
    move-object/from16 v26, v7

    move-object/from16 v23, v8

    goto/16 :goto_149

    .line 669
    :cond_d5
    :goto_d5
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_145

    .line 673
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v23, v8

    const-string v8, ",\n      \"listen\": \"127.0.0.1\",\n      \"protocol\": \"socks\",\n      \"sniffing\": {\n        \"enabled\": true,\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ]\n      },\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"ip\": null,\n        \"address\": null,\n        \"clients\": null\n      },\n      \"streamSettings\": null\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"protocol\": \"vmess\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[add]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"id\": \"[udid]\",\n                \"alterId\": [aid],\n                \"email\": \"t@t.tt\",\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ],\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": {\n        \"network\": \"tcp\",\n        \"security\": null,\n        \"tlsSettings\": null,\n        \"tcpSettings\": null,\n        \"kcpSettings\": null,\n        \"wsSettings\": null,\n        \"httpSettings\": null,\n        \"quicSettings\": null\n      },\n      \"mux\": {\n        \"enabled\": true,\n        \"concurrency\": 8\n      }\n    },\n    {\n      \"tag\": \"direct\",\n      \"protocol\": \"freedom\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    },\n    {\n      \"tag\": \"block\",\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    }\n  ],\n  \"stats\": null,\n  \"api\": null,\n  \"dns\": null,\n  \"routing\": {\n    \"domainStrategy\": \"IPIfNonMatch\",\n    \"rules\": [\n      {\n        \"type\": \"field\",\n        \"port\": null,\n        \"inboundTag\": [\n          \"api\"\n        ],\n        \"outboundTag\": \"api\",\n        \"ip\": null,\n        \"domain\": null\n      }\n    ]\n  }\n}"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 785
    .local v8, "ssss":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v14, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 786
    .local v12, "one":Ljava/lang/String;
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v8

    .end local v8    # "ssss":Ljava/lang/String;
    .local v25, "ssss":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 787
    .local v8, "two":Ljava/lang/String;
    move-object/from16 v24, v12

    .end local v12    # "one":Ljava/lang/String;
    .local v24, "one":Ljava/lang/String;
    const-string v12, "[udid]"

    move-object/from16 v26, v7

    const-string v7, "id"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, "three":Ljava/lang/String;
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v4, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 790
    .local v12, "four":Ljava/lang/String;
    move-object/from16 v27, v7

    .end local v7    # "three":Ljava/lang/String;
    .local v27, "three":Ljava/lang/String;
    new-instance v7, Lb/h/k/d;

    invoke-direct {v7, v12}, Lb/h/k/d;-><init>(Ljava/lang/String;)V

    .line 791
    .local v7, "v2":Lb/h/k/d;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 794
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v29, v28

    .line 796
    .local v29, "bytes":[B
    move-object/from16 v28, v7

    move-object/from16 v7, v29

    .end local v29    # "bytes":[B
    .local v7, "bytes":[B
    .local v28, "v2":Lb/h/k/d;
    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 798
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 802
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    goto :goto_149

    .line 669
    .end local v7    # "bytes":[B
    .end local v8    # "two":Ljava/lang/String;
    .end local v12    # "four":Ljava/lang/String;
    .end local v24    # "one":Ljava/lang/String;
    .end local v25    # "ssss":Ljava/lang/String;
    .end local v27    # "three":Ljava/lang/String;
    .end local v28    # "v2":Lb/h/k/d;
    :cond_145
    move-object/from16 v26, v7

    move-object/from16 v23, v8

    .line 809
    :goto_149
    const-string v7, "tcp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1bf

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",\n      \"listen\": \"127.0.0.1\",\n      \"protocol\": \"socks\",\n      \"sniffing\": {\n        \"enabled\": true,\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ]\n      },\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"ip\": null,\n        \"address\": null,\n        \"clients\": null\n      },\n      \"streamSettings\": null\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"protocol\": \"vmess\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[add]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"id\": \"[udid]\",\n                \"alterId\": [aid],\n                \"email\": \"t@t.tt\",\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ],\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": {\n        \"network\": \"tcp\",\n        \"security\": \"tls\",\n        \"tlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": null\n        },\n        \"tcpSettings\": null,\n        \"kcpSettings\": null,\n        \"wsSettings\": null,\n        \"httpSettings\": null,\n        \"quicSettings\": null\n      },\n      \"mux\": {\n        \"enabled\": true,\n        \"concurrency\": 8\n      }\n    },\n    {\n      \"tag\": \"direct\",\n      \"protocol\": \"freedom\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    },\n    {\n      \"tag\": \"block\",\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    }\n  ],\n  \"stats\": null,\n  \"api\": null,\n  \"dns\": null,\n  \"routing\": {\n    \"domainStrategy\": \"IPIfNonMatch\",\n    \"rules\": [\n      {\n        \"type\": \"field\",\n        \"port\": null,\n        \"inboundTag\": [\n          \"api\"\n        ],\n        \"outboundTag\": \"api\",\n        \"ip\": null,\n        \"domain\": null\n      }\n    ]\n  }\n}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "v2config":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v14, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 928
    .local v7, "one":Ljava/lang/String;
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v12, v26

    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 929
    .restart local v8    # "two":Ljava/lang/String;
    move-object/from16 v24, v3

    .end local v3    # "v2config":Ljava/lang/String;
    .local v24, "v2config":Ljava/lang/String;
    const-string v3, "[udid]"

    move-object/from16 v25, v7

    .end local v7    # "one":Ljava/lang/String;
    .local v25, "one":Ljava/lang/String;
    const-string v7, "id"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, "three":Ljava/lang/String;
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 934
    .local v7, "four":Ljava/lang/String;
    move-object/from16 v26, v3

    .end local v3    # "three":Ljava/lang/String;
    .local v26, "three":Ljava/lang/String;
    new-instance v3, Lb/h/k/d;

    invoke-direct {v3, v7}, Lb/h/k/d;-><init>(Ljava/lang/String;)V

    .line 935
    .local v3, "v2":Lb/h/k/d;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 939
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v28, v27

    .line 941
    .local v28, "bytes":[B
    move-object/from16 v27, v3

    move-object/from16 v3, v28

    .end local v28    # "bytes":[B
    .local v3, "bytes":[B
    .local v27, "v2":Lb/h/k/d;
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 943
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 947
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    goto :goto_1c1

    .line 809
    .end local v3    # "bytes":[B
    .end local v7    # "four":Ljava/lang/String;
    .end local v8    # "two":Ljava/lang/String;
    .end local v24    # "v2config":Ljava/lang/String;
    .end local v25    # "one":Ljava/lang/String;
    .end local v26    # "three":Ljava/lang/String;
    .end local v27    # "v2":Lb/h/k/d;
    :cond_1bf
    move-object/from16 v12, v26

    .line 953
    :goto_1c1
    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_257

    .line 955
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",\n      \"listen\": \"127.0.0.1\",\n      \"protocol\": \"socks\",\n      \"sniffing\": {\n        \"enabled\": true,\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ]\n      },\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"ip\": null,\n        \"address\": null,\n        \"clients\": null\n      },\n      \"streamSettings\": null\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"protocol\": \"vmess\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[add]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"id\": \"[udid]\",\n                \"alterId\": [aid]\n              }\n            ]\n          }\n        ],\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": {\n        \"network\": \"ws\",\n        \"security\": \"[tls]\",\n        \"tlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": \"[host]\"\n        },\n        \"tcpSettings\": null,\n        \"kcpSettings\": null,\n        \"wsSettings\": {\n          \"connectionReuse\": true,\n          \"path\": \"[path]\",\n          \"headers\": {\n            \"Host\": \"[host]\"\n          }\n        },\n        \"httpSettings\": null,\n        \"quicSettings\": null\n      },\n      \"mux\": {\n        \"enabled\": false\n      }\n    },\n    {\n      \"tag\": \"direct\",\n      \"protocol\": \"freedom\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    },\n    {\n      \"tag\": \"block\",\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    }\n  ],\n  \"stats\": null,\n  \"api\": null,\n  \"dns\": null,\n  \"routing\": {\n    \"domainStrategy\": \"IPIfNonMatch\",\n    \"rules\": [\n      {\n        \"type\": \"field\",\n        \"port\": null,\n        \"inboundTag\": [\n          \"api\"\n        ],\n        \"outboundTag\": \"api\",\n        \"ip\": null,\n        \"domain\": null\n      }\n    ]\n  }\n}"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1074
    .local v5, "v2config":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v14, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1075
    .local v7, "one":Ljava/lang/String;
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1076
    .restart local v8    # "two":Ljava/lang/String;
    const-string v14, "[udid]"

    const-string v15, "id"

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1077
    .local v14, "three":Ljava/lang/String;
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 1079
    .local v15, "four":Ljava/lang/String;
    move-object/from16 v21, v1

    .end local v1    # "net":Ljava/lang/String;
    .local v21, "net":Ljava/lang/String;
    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object/from16 v24, v5

    move-object/from16 v5, v20

    .end local v5    # "v2config":Ljava/lang/String;
    .restart local v24    # "v2config":Ljava/lang/String;
    invoke-virtual {v15, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    .local v1, "five":Ljava/lang/String;
    move-object/from16 v20, v7

    .end local v7    # "one":Ljava/lang/String;
    .local v20, "one":Ljava/lang/String;
    const-string v7, "host"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v25, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1083
    .local v7, "six":Ljava/lang/String;
    move-object/from16 v19, v1

    .end local v1    # "five":Ljava/lang/String;
    .local v19, "five":Ljava/lang/String;
    const-string v1, "[tls]"

    invoke-virtual {v7, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "seven":Ljava/lang/String;
    move-object/from16 v26, v7

    .end local v7    # "six":Ljava/lang/String;
    .local v26, "six":Ljava/lang/String;
    new-instance v7, Lb/h/k/d;

    invoke-direct {v7, v1}, Lb/h/k/d;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v7, "v2":Lb/h/k/d;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1121
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v28, v27

    .line 1123
    .restart local v28    # "bytes":[B
    move-object/from16 v27, v1

    move-object/from16 v1, v28

    .end local v28    # "bytes":[B
    .local v1, "bytes":[B
    .local v27, "seven":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1125
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1131
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    goto :goto_268

    .line 953
    .end local v7    # "v2":Lb/h/k/d;
    .end local v8    # "two":Ljava/lang/String;
    .end local v14    # "three":Ljava/lang/String;
    .end local v15    # "four":Ljava/lang/String;
    .end local v19    # "five":Ljava/lang/String;
    .end local v20    # "one":Ljava/lang/String;
    .end local v21    # "net":Ljava/lang/String;
    .end local v24    # "v2config":Ljava/lang/String;
    .end local v25    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "six":Ljava/lang/String;
    .end local v27    # "seven":Ljava/lang/String;
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "net":Ljava/lang/String;
    :cond_257
    move-object/from16 v25, v0

    move-object/from16 v21, v1

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "net":Ljava/lang/String;
    .restart local v21    # "net":Ljava/lang/String;
    .restart local v25    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_268

    .line 658
    .end local v11    # "tls":Ljava/lang/String;
    .end local v16    # "flag":Z
    .end local v21    # "net":Ljava/lang/String;
    .end local v22    # "filePharos":Ljava/io/File;
    .end local v25    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "filePharos":Ljava/io/File;
    :cond_260
    move-object/from16 v22, v5

    move-object/from16 v23, v8

    move-object v0, v12

    move-object v3, v14

    move-object v5, v15

    move-object v12, v7

    .line 1138
    .end local v5    # "filePharos":Ljava/io/File;
    .restart local v22    # "filePharos":Ljava/io/File;
    :goto_268
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v1
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_26c} :catch_5f2

    const/4 v7, 0x1

    if-ne v1, v7, :cond_29c

    .line 1139
    :try_start_26f
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpharos/Pharos;->urldecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "stringHandle":Ljava/lang/String;
    invoke-static {v1}, Lb/h/d/e;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 1145
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lb/h/k/c;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_26f .. :try_end_281} :catch_295

    move-object/from16 v14, p4

    :try_start_283
    invoke-direct {v8, v7, v14, v11}, Lb/h/k/c;-><init>(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_286} :catch_290

    move-object/from16 v11, p0

    :try_start_288
    iput-object v8, v11, Lb/h/k/b;->a:Lb/h/k/c;

    .line 1146
    iget-object v8, v11, Lb/h/k/b;->a:Lb/h/k/c;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_2a0

    .line 1538
    .end local v1    # "stringHandle":Ljava/lang/String;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "ok":Ljava/lang/String;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "en":Ljava/lang/String;
    .end local v22    # "filePharos":Ljava/io/File;
    :catch_290
    move-exception v0

    move-object/from16 v11, p0

    goto/16 :goto_5f3

    :catch_295
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v14, p4

    goto/16 :goto_5f3

    .line 1138
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ok":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v18    # "en":Ljava/lang/String;
    .restart local v22    # "filePharos":Ljava/io/File;
    :cond_29c
    move-object/from16 v11, p0

    move-object/from16 v14, p4

    .line 1149
    :goto_2a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\n    \"run_type\": \"client\",\n    \"local_addr\": \"127.0.0.1\",\n    \"local_port\": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",\n    \"remote_addr\": \"[ProxyServer]\",\n    \"remote_port\": [ProxyPort],\n    \"password\": [\n        \"[ProxyPassword]\"\n    ],\n    \"log_level\": 0,\n    \"ssl\": {\n        \"verify\": false,\n        \"verify_hostname\": false,\n        \"cert\": \"\",\n        \"cipher\": \"ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-RSA-AES128-SHA:ECDHE-RSA-AES256-SHA:RSA-AES128-GCM-SHA256:RSA-AES256-GCM-SHA384:RSA-AES128-SHA:RSA-AES256-SHA:RSA-3DES-EDE-SHA:ECDHE-ECDSA-AES256-SHA:ECDHE-ECDSA-AES128-SHA:DHE-RSA-AES128-SHA:DHE-RSA-AES256-SHA:AES128-SHA:AES256-SHA:DES-CBC3-SHA\",\n        \"cipher_tls13\": \"TLS_AES_128_GCM_SHA256:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_256_GCM_SHA384\",\n        \"sni\": \"www.pubgmobile.com\",\n        \"alpn\": [\n            \"h2\",\n            \"http/1.1\"\n        ],\n        \"enable_ipv6\": false,\n        \"reuse_session\": true,\n        \"session_ticket\": false,\n        \"curves\": \"\"\n    },\n    \"tcp\": {\n        \"no_delay\": true,\n        \"keep_alive\": true,\n        \"fast_open\": false,\n        \"fast_open_qlen\": 20\n    },\n  \"websocket\": {\n    \"enabled\": [websocket],\n    \"path\": \"[path]\",\n    \"host\": \"[host]\"\n  },\n  \"mux\": {\n    \"enabled\": [mux]\n  }}"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "trojanConfig":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v7
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_2ba} :catch_5f2

    const/4 v8, 0x2

    const-string v15, "ServerPort"

    const-string v11, "sni"

    const-string v14, "ServerHost"

    if-ne v7, v8, :cond_3ef

    .line 1191
    :try_start_2c3
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lb/h/d/e;->n(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 1192
    .local v7, "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v7

    .end local v7    # "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v16, "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "trojan://"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e3

    .line 1193
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lb/h/d/e;->n(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object/from16 v16, v7

    .line 1196
    :cond_2e3
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "trojan-go://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2fa

    .line 1197
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lb/h/d/e;->o(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_2fc

    .line 1196
    :cond_2fa
    move-object/from16 v7, v16

    .line 1200
    .end local v16    # "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2fc
    move-object/from16 v8, v23

    .line 1201
    .local v8, "sni":Ljava/lang/String;
    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    .line 1202
    .local v16, "flag":Z
    if-eqz v16, :cond_30c

    .line 1203
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v8, v19

    .line 1206
    :cond_30c
    move-object/from16 v19, v11

    const-string v11, "[ProxyServer]"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1207
    .local v4, "one":Ljava/lang/String;
    const-string v11, "[ProxyPort]"

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v24, v1

    .end local v1    # "trojanConfig":Ljava/lang/String;
    .local v24, "trojanConfig":Ljava/lang/String;
    move-object/from16 v1, v20

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v11, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1208
    .local v1, "two":Ljava/lang/String;
    const-string v11, "[ProxyPassword]"

    move-object/from16 v20, v4

    .end local v4    # "one":Ljava/lang/String;
    .restart local v20    # "one":Ljava/lang/String;
    const-string v4, "Password"

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1209
    .local v4, "three":Ljava/lang/String;
    const-string v11, "[sni]"

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1210
    .local v11, "four":Ljava/lang/String;
    move-object/from16 v25, v1

    .end local v1    # "two":Ljava/lang/String;
    .local v25, "two":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v4

    .end local v4    # "three":Ljava/lang/String;
    .local v26, "three":Ljava/lang/String;
    const-string v4, "trojan://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37a

    .line 1211
    const-string v1, "[mux]"

    const-string v4, "false"

    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "five":Ljava/lang/String;
    const-string v4, "[websocket]"

    move-object/from16 v27, v8

    .end local v8    # "sni":Ljava/lang/String;
    .local v27, "sni":Ljava/lang/String;
    const-string v8, "false"

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1213
    .local v4, "six":Ljava/lang/String;
    move-object/from16 v8, v23

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v28, v23

    .line 1214
    .local v28, "seven":Ljava/lang/String;
    move-object/from16 v23, v1

    move-object/from16 v1, v28

    .end local v28    # "seven":Ljava/lang/String;
    .local v1, "seven":Ljava/lang/String;
    .local v23, "five":Ljava/lang/String;
    invoke-virtual {v1, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 1215
    .local v28, "eight":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ltrojan/Trojan;->runClient(Ljava/lang/String;)V

    goto :goto_37e

    .line 1210
    .end local v1    # "seven":Ljava/lang/String;
    .end local v4    # "six":Ljava/lang/String;
    .end local v23    # "five":Ljava/lang/String;
    .end local v27    # "sni":Ljava/lang/String;
    .end local v28    # "eight":Ljava/lang/String;
    .restart local v8    # "sni":Ljava/lang/String;
    :cond_37a
    move-object/from16 v27, v8

    move-object/from16 v8, v23

    .line 1217
    .end local v8    # "sni":Ljava/lang/String;
    .restart local v27    # "sni":Ljava/lang/String;
    :goto_37e
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "trojan-go://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3ec

    .line 1218
    const-string v1, "[mux]"

    const-string v4, "true"

    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "five":Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 1220
    .local v4, "wsflag":Z
    if-eqz v4, :cond_3d4

    .line 1221
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move/from16 v28, v4

    .end local v4    # "wsflag":Z
    .local v28, "wsflag":Z
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v11

    .end local v11    # "four":Ljava/lang/String;
    .local v23, "four":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f7

    .line 1222
    const-string v4, "[websocket]"

    const-string v11, "true"

    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1223
    .local v4, "six":Ljava/lang/String;
    const-string v11, "wsPath"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1224
    .local v11, "seven":Ljava/lang/String;
    move-object/from16 v29, v4

    .end local v4    # "six":Ljava/lang/String;
    .local v29, "six":Ljava/lang/String;
    const-string v4, "wsHost"

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v11, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "eight":Ljava/lang/String;
    invoke-static {v0}, Ltrojan/Trojan;->runClient(Ljava/lang/String;)V

    .line 1226
    .end local v0    # "eight":Ljava/lang/String;
    .end local v11    # "seven":Ljava/lang/String;
    .end local v29    # "six":Ljava/lang/String;
    goto :goto_3f7

    .line 1228
    .end local v23    # "four":Ljava/lang/String;
    .end local v28    # "wsflag":Z
    .local v4, "wsflag":Z
    .local v11, "four":Ljava/lang/String;
    :cond_3d4
    move/from16 v28, v4

    move-object/from16 v23, v11

    .end local v4    # "wsflag":Z
    .end local v11    # "four":Ljava/lang/String;
    .restart local v23    # "four":Ljava/lang/String;
    .restart local v28    # "wsflag":Z
    const-string v4, "[websocket]"

    const-string v11, "false"

    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, "six":Ljava/lang/String;
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1230
    .local v11, "seven":Ljava/lang/String;
    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .restart local v0    # "eight":Ljava/lang/String;
    invoke-static {v0}, Ltrojan/Trojan;->runClient(Ljava/lang/String;)V

    goto :goto_3f7

    .line 1217
    .end local v0    # "eight":Ljava/lang/String;
    .end local v1    # "five":Ljava/lang/String;
    .end local v4    # "six":Ljava/lang/String;
    .end local v23    # "four":Ljava/lang/String;
    .end local v28    # "wsflag":Z
    .local v11, "four":Ljava/lang/String;
    :cond_3ec
    move-object/from16 v23, v11

    .end local v11    # "four":Ljava/lang/String;
    .restart local v23    # "four":Ljava/lang/String;
    goto :goto_3f7

    .line 1189
    .end local v7    # "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "flag":Z
    .end local v20    # "one":Ljava/lang/String;
    .end local v23    # "four":Ljava/lang/String;
    .end local v24    # "trojanConfig":Ljava/lang/String;
    .end local v25    # "two":Ljava/lang/String;
    .end local v26    # "three":Ljava/lang/String;
    .end local v27    # "sni":Ljava/lang/String;
    .local v1, "trojanConfig":Ljava/lang/String;
    :cond_3ef
    move-object/from16 v24, v1

    move-object/from16 v21, v4

    move-object/from16 v19, v11

    move-object/from16 v8, v23

    .line 1240
    .end local v1    # "trojanConfig":Ljava/lang/String;
    .restart local v24    # "trojanConfig":Ljava/lang/String;
    :cond_3f7
    :goto_3f7
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0

    if-eqz v0, :cond_41f

    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_41f

    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_41f

    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_41f

    .line 1241
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1243
    .local v0, "bytes":[B
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1245
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1250
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 1253
    .end local v0    # "bytes":[B
    :cond_41f
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_465

    .line 1256
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1258
    .local v0, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "base":Ljava/lang/String;
    const-string v4, "127.0.0.1"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1261
    .restart local v4    # "six":Ljava/lang/String;
    const-string v7, "9999"

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1262
    .local v7, "seven":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v11

    .line 1266
    .local v11, "old":Ljava/lang/String;
    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1267
    .local v16, "finalconfig":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v23, v20

    .line 1269
    .local v23, "bytes":[B
    move-object/from16 v20, v0

    move-object/from16 v0, v23

    .end local v23    # "bytes":[B
    .local v0, "bytes":[B
    .local v20, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1271
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1275
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 1278
    .end local v0    # "bytes":[B
    .end local v1    # "base":Ljava/lang/String;
    .end local v4    # "six":Ljava/lang/String;
    .end local v7    # "seven":Ljava/lang/String;
    .end local v11    # "old":Ljava/lang/String;
    .end local v16    # "finalconfig":Ljava/lang/String;
    .end local v20    # "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_465
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4e5

    .line 1281
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .line 1286
    .local v1, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "/F/fZolUVjLr0iTmBnDBNPj+aOPQDPGTYFd0qBqONnCqRV/6DRpUnic1R2faTBsXhO32xRA5BgoM3Jb9o+NU4bhllxyNiQkqu64EoLoMiR8Dn7MhuD3AqD/ZvMAlxGA7SIaagvkrACdoS4QvFXOSfH3+2y5bPzQIpjr7DtuoobHihUb4oUR75HaYZTotX3Lp"
    :try_end_477
    .catch Ljava/lang/Exception; {:try_start_2c3 .. :try_end_477} :catch_5f2

    move-object v4, v0

    .line 1295
    .local v4, "base":Ljava/lang/String;
    move-object v7, v8

    .line 1297
    .local v7, "http":Ljava/lang/String;
    :try_start_479
    invoke-static {}, Lpharos/Pharos;->corecode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lb/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_481
    .catch Ljava/lang/Exception; {:try_start_479 .. :try_end_481} :catch_483

    move-object v7, v0

    .line 1300
    goto :goto_484

    .line 1298
    :catch_483
    move-exception v0

    .line 1303
    :goto_484
    :try_start_484
    const-string v0, "[server]"

    const-string v11, "server"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "six":Ljava/lang/String;
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1305
    .local v11, "seven":Ljava/lang/String;
    const-string v13, "[username]"

    move-object/from16 v16, v0

    .end local v0    # "six":Ljava/lang/String;
    .local v16, "six":Ljava/lang/String;
    const-string v0, "username"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "eight":Ljava/lang/String;
    const-string v13, "[password]"

    move-object/from16 v20, v4

    .end local v4    # "base":Ljava/lang/String;
    .local v20, "base":Ljava/lang/String;
    const-string v4, "password"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1307
    .local v4, "nine":Ljava/lang/String;
    const-string v13, "[pharos]"

    move-object/from16 v23, v0

    .end local v0    # "eight":Ljava/lang/String;
    .local v23, "eight":Ljava/lang/String;
    const-string v0, "pharos"

    invoke-virtual {v4, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "ten":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v13

    .line 1312
    .local v13, "old":Ljava/lang/String;
    invoke-virtual {v9, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 1313
    .local v25, "finalconfig":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v27, v26

    .line 1315
    .local v27, "bytes":[B
    move-object/from16 v26, v0

    move-object/from16 v0, v27

    .end local v27    # "bytes":[B
    .local v0, "bytes":[B
    .local v26, "ten":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1317
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1321
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 1325
    .end local v0    # "bytes":[B
    .end local v1    # "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "nine":Ljava/lang/String;
    .end local v7    # "http":Ljava/lang/String;
    .end local v11    # "seven":Ljava/lang/String;
    .end local v13    # "old":Ljava/lang/String;
    .end local v16    # "six":Ljava/lang/String;
    .end local v20    # "base":Ljava/lang/String;
    .end local v23    # "eight":Ljava/lang/String;
    .end local v25    # "finalconfig":Ljava/lang/String;
    .end local v26    # "ten":Ljava/lang/String;
    :cond_4e5
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5f1

    .line 1326
    invoke-virtual/range {p1 .. p1}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->p(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1327
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1328
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_583

    .line 1329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\n  \"dns\": {\n    \"hosts\": {\n      \"domain:googleapis.cn\": \"googleapis.com\"\n    },\n    \"servers\": [\n    \"1.1.1.1\"\n    ]\n  },\n  \"inbounds\": [\n    {\n      \"listen\": \"127.0.0.1\",\n      \"port\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",\n      \"protocol\": \"socks\",\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"userLevel\": 8\n      },\n      \"sniffing\": {\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ],\n        \"enabled\": true\n      },\n      \"tag\": \"socks\"\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"mux\": {\n        \"concurrency\": 8,\n        \"enabled\": true\n      },\n      \"protocol\": \"vless\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[address]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"encryption\": \"none\",\n                \"flow\": \"[flow]\",\n                \"id\": \"[aid]\",\n                \"level\": 8,\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ]\n      },\n \"streamSettings\": {\n        \"network\": \"ws\",\n        \"security\": \"tls\",\n        \"tlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": \"[serverName]\"\n        },\n        \"wsSettings\": {\n          \"headers\": {\n            \"Host\": \"[wsHost]\"\n          },\n          \"path\": \"[path]\"\n        }\n      },\n      \"tag\": \"proxy\"\n    },\n    {\n      \"protocol\": \"freedom\",\n      \"settings\": {},\n      \"tag\": \"direct\"\n    },\n    {\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"tag\": \"block\"\n    }\n  ]\n}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1416
    .local v3, "config":Ljava/lang/String;
    const-string v4, "[address]"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1417
    .local v4, "one":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1418
    .local v7, "two":Ljava/lang/String;
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v21

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1420
    .local v10, "four":Ljava/lang/String;
    const-string v11, "[flow]"

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1421
    .local v8, "five":Ljava/lang/String;
    const-string v11, "[security]"

    const-string v12, "security"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1422
    .local v11, "six":Ljava/lang/String;
    const-string v12, "[serverName]"

    move-object/from16 v13, v19

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1424
    .local v12, "seven":Ljava/lang/String;
    const-string v13, "[wsHost]"

    const-string v14, "wsHost"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1425
    .local v13, "eight":Ljava/lang/String;
    const-string v14, "wsPath"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v5, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1427
    .local v5, "night":Ljava/lang/String;
    new-instance v14, Lb/h/k/d;

    invoke-direct {v14, v5}, Lb/h/k/d;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v14, "v2":Lb/h/k/d;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 1433
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "one":Ljava/lang/String;
    .end local v5    # "night":Ljava/lang/String;
    .end local v7    # "two":Ljava/lang/String;
    .end local v8    # "five":Ljava/lang/String;
    .end local v10    # "four":Ljava/lang/String;
    .end local v11    # "six":Ljava/lang/String;
    .end local v12    # "seven":Ljava/lang/String;
    .end local v13    # "eight":Ljava/lang/String;
    .end local v14    # "v2":Lb/h/k/d;
    goto :goto_5f1

    .line 1435
    :cond_583
    move-object/from16 v13, v19

    move-object/from16 v11, v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\n  \"dns\": {\n    \"hosts\": {\n      \"domain:googleapis.cn\": \"googleapis.com\"\n    },\n    \"servers\": [\n      \"1.1.1.1\"\n    ]\n  },\n  \"inbounds\": [\n    {\n      \"listen\": \"127.0.0.1\",\n      \"port\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",\n      \"protocol\": \"socks\",\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"userLevel\": 8\n      },\n      \"sniffing\": {\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ],\n        \"enabled\": true\n      },\n      \"tag\": \"socks\"\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"mux\": {\n        \"concurrency\": 8,\n        \"enabled\": true\n      },\n      \"protocol\": \"vless\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[address]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"encryption\": \"none\",\n                \"flow\": \"[flow]\",\n                \"id\": \"[aid]\",\n                \"level\": 8,\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ]\n      },\n      \"streamSettings\": {\n        \"network\": \"tcp\",\n        \"security\": \"[security]\",\n        \"tcpSettings\": {\n          \"header\": {\n            \"type\": \"none\"\n          }\n        },\n        \"xtlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": \"[serverName]\"\n        }\n      },\n      \"tag\": \"proxy\"\n    },\n    {\n      \"protocol\": \"freedom\",\n      \"settings\": {},\n      \"tag\": \"direct\"\n    },\n    {\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"tag\": \"block\"\n    }\n  ]\n}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1521
    .restart local v3    # "config":Ljava/lang/String;
    const-string v4, "[address]"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1522
    .restart local v4    # "one":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1523
    .local v5, "two":Ljava/lang/String;
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1525
    .local v7, "four":Ljava/lang/String;
    const-string v8, "[flow]"

    const-string v10, "flow"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1526
    .restart local v8    # "five":Ljava/lang/String;
    const-string v10, "[security]"

    const-string v11, "security"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1527
    .local v10, "six":Ljava/lang/String;
    const-string v11, "[serverName]"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1529
    .local v11, "seven":Ljava/lang/String;
    new-instance v12, Lb/h/k/d;

    invoke-direct {v12, v11}, Lb/h/k/d;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v12, "v2":Lb/h/k/d;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_5f1
    .catch Ljava/lang/Exception; {:try_start_484 .. :try_end_5f1} :catch_5f2

    .line 1540
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "one":Ljava/lang/String;
    .end local v5    # "two":Ljava/lang/String;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "four":Ljava/lang/String;
    .end local v8    # "five":Ljava/lang/String;
    .end local v9    # "ok":Ljava/lang/String;
    .end local v10    # "six":Ljava/lang/String;
    .end local v11    # "seven":Ljava/lang/String;
    .end local v12    # "v2":Lb/h/k/d;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "en":Ljava/lang/String;
    .end local v22    # "filePharos":Ljava/io/File;
    .end local v24    # "trojanConfig":Ljava/lang/String;
    :cond_5f1
    :goto_5f1
    goto :goto_5f6

    .line 1538
    :catch_5f2
    move-exception v0

    .line 1539
    .local v0, "e":Ljava/lang/Exception;
    :goto_5f3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1546
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f6
    return-void
.end method
