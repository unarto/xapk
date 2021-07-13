.class public Lcom/orange/gugucore/Gugucore;
.super Landroid/net/VpnService;
.source "Gugucore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/gugucore/Gugucore$e;,
        Lcom/orange/gugucore/Gugucore$b;,
        Lcom/orange/gugucore/Gugucore$d;,
        Lcom/orange/gugucore/Gugucore$c;
    }
.end annotation


# static fields
.field public static l:Lcom/orange/gugucore/Gugucore;


# instance fields
.field public e:Lb/h/d/a;

.field public f:Landroid/os/ParcelFileDescriptor;

.field public g:Lcom/orange/gugucore/Gugucore$c;

.field public h:Landroid/content/SharedPreferences;

.field public i:Landroid/net/ConnectivityManager;

.field public j:Landroid/net/NetworkInfo;

.field public k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 54
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 55
    nop

    .line 65
    new-instance v0, Lcom/orange/gugucore/Gugucore$a;

    invoke-direct {v0, p0}, Lcom/orange/gugucore/Gugucore$a;-><init>(Lcom/orange/gugucore/Gugucore;)V

    iput-object v0, p0, Lcom/orange/gugucore/Gugucore;->k:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/orange/gugucore/Gugucore;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/orange/gugucore/Gugucore;

    .line 48
    iget-object v0, p0, Lcom/orange/gugucore/Gugucore;->i:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static synthetic a(Lcom/orange/gugucore/Gugucore;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/orange/gugucore/Gugucore;
    .param p1, "x1"    # Landroid/net/ConnectivityManager;

    .line 48
    iput-object p1, p0, Lcom/orange/gugucore/Gugucore;->i:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method public static synthetic a(Lcom/orange/gugucore/Gugucore;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/orange/gugucore/Gugucore;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 48
    iput-object p1, p0, Lcom/orange/gugucore/Gugucore;->j:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method public static synthetic b(Lcom/orange/gugucore/Gugucore;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/orange/gugucore/Gugucore;

    .line 48
    iget-object v0, p0, Lcom/orange/gugucore/Gugucore;->j:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public static b()Lcom/orange/gugucore/Gugucore;
    .registers 1

    .line 116
    sget-object v0, Lcom/orange/gugucore/Gugucore;->l:Lcom/orange/gugucore/Gugucore;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1900
    nop

    .line 1905
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/orange/JNIHelper;->stop()V

    .line 1906
    iget-object v1, p0, Lcom/orange/gugucore/Gugucore;->g:Lcom/orange/gugucore/Gugucore$c;

    if-eqz v1, :cond_b

    .line 1907
    iput-object v0, p0, Lcom/orange/gugucore/Gugucore;->g:Lcom/orange/gugucore/Gugucore$c;

    .line 1912
    :cond_b
    iget-object v1, p0, Lcom/orange/gugucore/Gugucore;->f:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 1915
    goto :goto_15

    .line 1913
    :catch_11
    move-exception v1

    .line 1914
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1916
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    iput-object v0, p0, Lcom/orange/gugucore/Gugucore;->f:Landroid/os/ParcelFileDescriptor;

    .line 1917
    nop

    .line 1918
    nop

    .line 1919
    return-void
.end method

.method public onCreate()V
    .registers 4

    .line 96
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    .line 97
    sput-object p0, Lcom/orange/gugucore/Gugucore;->l:Lcom/orange/gugucore/Gugucore;

    .line 98
    new-instance v0, Lb/h/d/a;

    invoke-direct {v0, p0}, Lb/h/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/orange/gugucore/Gugucore;->e:Lb/h/d/a;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/orange/gugucore/Gugucore;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/net/VpnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    const-string v1, "global"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/VpnService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/gugucore/Gugucore;->h:Landroid/content/SharedPreferences;

    .line 105
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 109
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/orange/gugucore/Gugucore;->l:Lcom/orange/gugucore/Gugucore;

    .line 112
    iget-object v0, p0, Lcom/orange/gugucore/Gugucore;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 36
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 141
    move-object/from16 v1, p0

    const-string v2, "tls"

    iget-object v0, v1, Lcom/orange/gugucore/Gugucore;->e:Lb/h/d/a;

    invoke-virtual {v0}, Lb/h/d/a;->a()Lb/h/d/d;

    move-result-object v3

    .line 150
    .local v3, "current":Lb/h/d/d;
    const/4 v6, 0x0

    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "iptable.yaml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 152
    .local v7, "filePharos":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_750

    if-eqz v0, :cond_27

    .line 153
    :try_start_1d
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_27

    .line 1786
    .end local v7    # "filePharos":Ljava/io/File;
    :catch_21
    move-exception v0

    move-object v15, v1

    move-object/from16 v21, v3

    goto/16 :goto_754

    .line 156
    .restart local v7    # "filePharos":Ljava/io/File;
    :cond_27
    :goto_27
    :try_start_27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 158
    .local v8, "fos":Ljava/io/FileOutputStream;
    const-string v0, "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"
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_750

    move-object v9, v0

    .line 159
    .local v9, "en":Ljava/lang/String;
    const-string v10, ""

    move-object v11, v10

    .line 161
    .local v11, "ok":Ljava/lang/String;
    :try_start_33
    invoke-static {}, Lpharos/Pharos;->corecode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lb/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_3d

    move-object v11, v0

    .line 164
    goto :goto_3e

    .line 162
    :catch_3d
    move-exception v0

    .line 166
    :goto_3e
    :try_start_3e
    iget-object v0, v1, Lcom/orange/gugucore/Gugucore;->h:Landroid/content/SharedPreferences;

    const-string v12, "globalvalue"

    invoke-interface {v0, v12, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_750

    if-eqz v0, :cond_56

    .line 167
    :try_start_48
    const-string v0, "3ZtcbyTwlhTQLi5Bcvdgw004bK97vozM7C7HIINXWxiQRRFkCRH0z0UtZTd89SNu7NYz3RDYodB7dpyTT7NazlCIiRfI+rJxOKjFzqFrtNShwRqy5/KGXh+xgN4HGnu2y7uP6gpq+3Vc9hRGhle+cq0NA8KDcp1J5/y/hbDFEoo4uCNV4u2LGrfPhHe07kBpS8z8TN3ZX2wJcOTDxjVNc+wZMdzf+WrNXZWePWYwY29xbR8avT8rozwqUW/EcfMAib3n0Jb3IYM2Y8BuRRoNZGYbfadyliu7ZLwkhnnDrK3DV/FUcRH0ACJLtYGY4r9unRHLkie2tkczA3/OB0h9IKNN0dDsYfcNhMjhVfeIEZmQNl0ijHWAk1BBZSQwN6oVWqiGsuxABt10XHi7SilqKih/RZLBJhyXlny3I6AXN6lUZQI6Iu5FTqzMc8fFjmHImLCXzlA0+gRhvN4bqegdkgKKskoEFEl2pUb/unUpP1mV9xCXJxfHSF77UbDGbey6nvVcYYTaQj2y5Lycbg9pftQrJvW2zmEcV9fieeyDoD2Fktt2QZKu5bUe7EJTUpWImdFaOX2lIqK+eb+Q4+QssDY0VSsnWeXJSs6NeeekiwWXumQUaDJgY1Fdobv6ULGmjVB64FvhiktCKdrl6zoBW59NGKmc7rID5OeARX07CBppD5lX1gbZTl0EZ2dBWNnojYURt2CaGkOhac+Z19ETXzkX86590W1TMdz8mlv+GhTwuR2sGsWPYgEuKMHeytaHjVRwJFt+b7wyNCMyUj0iwg9FrFonGWb1Ys3FZARYRPNpDWcwrsWVXcT5a8NS6R4okafGTNtPWbYQ4a3zZVWaSemTrOI1TOq8rxmLxGY789tsLFt5BhkhEX9YuQ2LItUy0xlARzLhD/ukcvyjyl+FMaevtEYq9TMk+EE6fSWcgGIgPZYOZTKg/MMAnmlftH+LbbcAhZ43bFtJMDB37ZxzvXLmiv15/zkPqD1uf7orEIX1xf5J5JcIPd6uPxjzOvuTBaTfhQ5iG8AWWkNhmP8nWGnLAmMF51YqHA27PTwNnjT9eXLqygHJ42qhS1+NTmFuIZAxstugb0/rAaBjq+1QGZGOR4NpQ7AAujeD6J2lEAMSvSzOEKf65xTdciXiBlMCGCZmupo2gPZKRCGr4atFzYGsz13x8l2NzQAmlqVSKsBdJiVo4j4BPYllxYZA5FjpDMKFnJ8IFUXscdTGuYcl0vJif3mjdJEBIxsenJQ/5ihdsk+UoJRHHAIzBNweCOJ+3lW5nQEJojR9B9e02/kum3FoavwfYFBxl2iVHBuC9OZa+QoIolCSSicPuW+vnYHj3tO/AYLZ5W8HvGttOXbNPCk2G1ogwH/KJ+W8Vt9gZo1OhCdLSoaZc3JGjsVgUV8qRk7ZOd2FOPP6NPy+VEYyloCzhXjFh1jXVNzD9icT0E0="
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4a} :catch_21

    move-object v12, v0

    .line 220
    .local v12, "bbloal":Ljava/lang/String;
    :try_start_4b
    invoke-static {}, Lpharos/Pharos;->corecode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lb/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_53} :catch_55

    move-object v11, v0

    .line 223
    goto :goto_56

    .line 221
    :catch_55
    move-exception v0

    .line 814
    .end local v12    # "bbloal":Ljava/lang/String;
    :cond_56
    :goto_56
    :try_start_56
    invoke-virtual {v3}, Lb/h/d/d;->d()I

    move-result v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_750

    const-string v12, "ServerPort"

    const-string v13, "ServerHost"

    if-nez v0, :cond_13e

    .line 815
    move-object v0, v10

    .line 816
    .local v0, "finalconfig":Ljava/lang/String;
    move-object v14, v10

    .line 817
    .local v14, "config":Ljava/lang/String;
    :try_start_62
    invoke-virtual {v3}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lb/h/d/e;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 818
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Obfs"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_bd

    .line 819
    invoke-static {}, Lpharos/Pharos;->sscode()Ljava/lang/String;

    move-result-object v6

    .line 821
    .end local v14    # "config":Ljava/lang/String;
    .local v6, "config":Ljava/lang/String;
    const-string v14, "[a]"

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 822
    .local v4, "one":Ljava/lang/String;
    const-string v14, "[b]"

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v14, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, "two":Ljava/lang/String;
    const-string v14, "[c]"

    move-object/from16 v16, v0

    .end local v0    # "finalconfig":Ljava/lang/String;
    .local v16, "finalconfig":Ljava/lang/String;
    const-string v0, "Method"

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "three":Ljava/lang/String;
    const-string v14, "[d]"

    move-object/from16 v17, v4

    .end local v4    # "one":Ljava/lang/String;
    .local v17, "one":Ljava/lang/String;
    const-string v4, "Password"

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, "four":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v14

    .line 828
    .local v14, "old":Ljava/lang/String;
    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    .line 831
    .end local v4    # "four":Ljava/lang/String;
    .end local v5    # "two":Ljava/lang/String;
    .end local v14    # "old":Ljava/lang/String;
    .end local v16    # "finalconfig":Ljava/lang/String;
    .end local v17    # "one":Ljava/lang/String;
    .local v0, "finalconfig":Ljava/lang/String;
    goto :goto_126

    .line 832
    .end local v6    # "config":Ljava/lang/String;
    .local v14, "config":Ljava/lang/String;
    :cond_bd
    move-object/from16 v16, v0

    .end local v0    # "finalconfig":Ljava/lang/String;
    .restart local v16    # "finalconfig":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->ssobfscode()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 834
    .end local v14    # "config":Ljava/lang/String;
    .restart local v6    # "config":Ljava/lang/String;
    const-string v0, "[a]"

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "one":Ljava/lang/String;
    const-string v4, "[b]"

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 836
    .local v4, "two":Ljava/lang/String;
    const-string v5, "[c]"

    const-string v14, "Method"

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 837
    .local v5, "three":Ljava/lang/String;
    const-string v14, "[d]"

    move-object/from16 v17, v0

    .end local v0    # "one":Ljava/lang/String;
    .restart local v17    # "one":Ljava/lang/String;
    const-string v0, "Password"

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "four":Ljava/lang/String;
    const-string v14, "[e]"

    move-object/from16 v18, v4

    .end local v4    # "two":Ljava/lang/String;
    .local v18, "two":Ljava/lang/String;
    const-string v4, "Obfs"

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, "five":Ljava/lang/String;
    const-string v14, "[f]"

    move-object/from16 v19, v0

    .end local v0    # "four":Ljava/lang/String;
    .local v19, "four":Ljava/lang/String;
    const-string v0, "ObfsHost"

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "six":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v14

    .line 844
    .local v14, "old":Ljava/lang/String;
    invoke-virtual {v11, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v0, v16

    .line 848
    .end local v4    # "five":Ljava/lang/String;
    .end local v5    # "three":Ljava/lang/String;
    .end local v14    # "old":Ljava/lang/String;
    .end local v16    # "finalconfig":Ljava/lang/String;
    .end local v17    # "one":Ljava/lang/String;
    .end local v18    # "two":Ljava/lang/String;
    .end local v19    # "four":Ljava/lang/String;
    .local v0, "finalconfig":Ljava/lang/String;
    :goto_126
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 850
    .local v4, "bytes":[B
    invoke-virtual {v8, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 852
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 854
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 856
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_13e} :catch_21

    .line 861
    .end local v0    # "finalconfig":Ljava/lang/String;
    .end local v4    # "bytes":[B
    .end local v6    # "config":Ljava/lang/String;
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13e
    :try_start_13e
    invoke-virtual {v3}, Lb/h/d/d;->d()I

    move-result v0
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_142} :catch_750

    const-string v5, "ws"

    const-string v6, "null"

    const-string v14, "[path]"

    const-string v15, "aid"

    const-string v4, "[aid]"

    move-object/from16 v17, v9

    .end local v9    # "en":Ljava/lang/String;
    .local v17, "en":Ljava/lang/String;
    const-string v9, "port"

    move-object/from16 v18, v12

    const-string v12, "[port]"

    move-object/from16 v19, v13

    const/4 v13, 0x3

    if-ne v0, v13, :cond_314

    .line 863
    :try_start_159
    invoke-virtual {v3}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->q(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 865
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v6

    .line 866
    .local v13, "tls":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_166} :catch_30e

    .line 867
    .local v16, "flag":Z
    if-eqz v16, :cond_170

    .line 868
    :try_start_168
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16e} :catch_21

    move-object/from16 v13, v20

    .line 870
    :cond_170
    move-object/from16 v20, v6

    :try_start_172
    const-string v6, "net"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_17a} :catch_30e

    .line 871
    .local v6, "net":Ljava/lang/String;
    move-object/from16 v21, v3

    .end local v3    # "current":Lb/h/d/d;
    .local v21, "current":Lb/h/d/d;
    :try_start_17c
    const-string v3, "tcp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_191

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18b

    goto :goto_191

    :cond_18b
    move-object/from16 v22, v10

    move-object/from16 v23, v14

    goto/16 :goto_204

    .line 872
    :cond_191
    :goto_191
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_200

    .line 876
    const-string v3, "{\n  \"policy\": null,\n  \"inbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"port\": 9999,\n      \"listen\": \"127.0.0.1\",\n      \"protocol\": \"socks\",\n      \"sniffing\": {\n        \"enabled\": true,\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ]\n      },\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"ip\": null,\n        \"address\": null,\n        \"clients\": null\n      },\n      \"streamSettings\": null\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"protocol\": \"vmess\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[add]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"id\": \"[udid]\",\n                \"alterId\": [aid],\n                \"email\": \"t@t.tt\",\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ],\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": {\n        \"network\": \"tcp\",\n        \"security\": null,\n        \"tlsSettings\": null,\n        \"tcpSettings\": null,\n        \"kcpSettings\": null,\n        \"wsSettings\": null,\n        \"httpSettings\": null,\n        \"quicSettings\": null\n      },\n      \"mux\": {\n        \"enabled\": true,\n        \"concurrency\": 8\n      }\n    },\n    {\n      \"tag\": \"direct\",\n      \"protocol\": \"freedom\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    },\n    {\n      \"tag\": \"block\",\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    }\n  ],\n  \"stats\": null,\n  \"api\": null,\n  \"dns\": null,\n  \"routing\": {\n    \"domainStrategy\": \"IPIfNonMatch\",\n    \"rules\": [\n      {\n        \"type\": \"field\",\n        \"port\": null,\n        \"inboundTag\": [\n          \"api\"\n        ],\n        \"outboundTag\": \"api\",\n        \"ip\": null,\n        \"domain\": null\n      }\n    ]\n  }\n}"

    .line 988
    .local v3, "ssss":Ljava/lang/String;
    move-object/from16 v22, v10

    const-string v10, "[add]"

    move-object/from16 v23, v14

    const-string v14, "add"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v3, v10, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 989
    .local v10, "one":Ljava/lang/String;
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 990
    .local v14, "two":Ljava/lang/String;
    move-object/from16 v24, v3

    .end local v3    # "ssss":Ljava/lang/String;
    .local v24, "ssss":Ljava/lang/String;
    const-string v3, "[udid]"

    move-object/from16 v25, v10

    .end local v10    # "one":Ljava/lang/String;
    .local v25, "one":Ljava/lang/String;
    const-string v10, "id"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v14, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "three":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 993
    .local v10, "four":Ljava/lang/String;
    move-object/from16 v26, v3

    .end local v3    # "three":Ljava/lang/String;
    .local v26, "three":Ljava/lang/String;
    new-instance v3, Lcom/orange/gugucore/Gugucore$e;

    invoke-direct {v3, v1, v10}, Lcom/orange/gugucore/Gugucore$e;-><init>(Lcom/orange/gugucore/Gugucore;Ljava/lang/String;)V

    .line 994
    .local v3, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 997
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v28, v27

    .line 999
    .local v28, "bytes":[B
    move-object/from16 v27, v3

    move-object/from16 v3, v28

    .end local v28    # "bytes":[B
    .local v3, "bytes":[B
    .local v27, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v8, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1001
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v28

    move-object/from16 v29, v10

    .end local v10    # "four":Ljava/lang/String;
    .local v29, "four":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1005
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_204

    .line 872
    .end local v3    # "bytes":[B
    .end local v14    # "two":Ljava/lang/String;
    .end local v24    # "ssss":Ljava/lang/String;
    .end local v25    # "one":Ljava/lang/String;
    .end local v26    # "three":Ljava/lang/String;
    .end local v27    # "v2":Lcom/orange/gugucore/Gugucore$e;
    .end local v29    # "four":Ljava/lang/String;
    :cond_200
    move-object/from16 v22, v10

    move-object/from16 v23, v14

    .line 1012
    :goto_204
    const-string v3, "tcp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_274

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_274

    .line 1014
    const-string v2, "{\n  \"policy\": null,\n  \"inbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"port\": 9999,\n      \"listen\": \"127.0.0.1\",\n      \"protocol\": \"socks\",\n      \"sniffing\": {\n        \"enabled\": true,\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ]\n      },\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"ip\": null,\n        \"address\": null,\n        \"clients\": null\n      },\n      \"streamSettings\": null\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"protocol\": \"vmess\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[add]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"id\": \"[udid]\",\n                \"alterId\": [aid],\n                \"email\": \"t@t.tt\",\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ],\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": {\n        \"network\": \"tcp\",\n        \"security\": \"tls\",\n        \"tlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": null\n        },\n        \"tcpSettings\": null,\n        \"kcpSettings\": null,\n        \"wsSettings\": null,\n        \"httpSettings\": null,\n        \"quicSettings\": null\n      },\n      \"mux\": {\n        \"enabled\": true,\n        \"concurrency\": 8\n      }\n    },\n    {\n      \"tag\": \"direct\",\n      \"protocol\": \"freedom\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    },\n    {\n      \"tag\": \"block\",\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    }\n  ],\n  \"stats\": null,\n  \"api\": null,\n  \"dns\": null,\n  \"routing\": {\n    \"domainStrategy\": \"IPIfNonMatch\",\n    \"rules\": [\n      {\n        \"type\": \"field\",\n        \"port\": null,\n        \"inboundTag\": [\n          \"api\"\n        ],\n        \"outboundTag\": \"api\",\n        \"ip\": null,\n        \"domain\": null\n      }\n    ]\n  }\n}"

    .line 1130
    .local v2, "v2config":Ljava/lang/String;
    const-string v3, "[add]"

    const-string v10, "add"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1131
    .local v3, "one":Ljava/lang/String;
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1132
    .local v10, "two":Ljava/lang/String;
    const-string v14, "[udid]"

    move-object/from16 v24, v2

    .end local v2    # "v2config":Ljava/lang/String;
    .local v24, "v2config":Ljava/lang/String;
    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1133
    .local v2, "three":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1137
    .local v14, "four":Ljava/lang/String;
    move-object/from16 v25, v2

    .end local v2    # "three":Ljava/lang/String;
    .local v25, "three":Ljava/lang/String;
    new-instance v2, Lcom/orange/gugucore/Gugucore$e;

    invoke-direct {v2, v1, v14}, Lcom/orange/gugucore/Gugucore$e;-><init>(Lcom/orange/gugucore/Gugucore;Ljava/lang/String;)V

    .line 1138
    .local v2, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1142
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v27, v26

    .line 1144
    .local v27, "bytes":[B
    move-object/from16 v26, v2

    move-object/from16 v2, v27

    .end local v27    # "bytes":[B
    .local v2, "bytes":[B
    .local v26, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1146
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v27

    move-object/from16 v28, v3

    .end local v3    # "one":Ljava/lang/String;
    .local v28, "one":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1150
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1156
    .end local v2    # "bytes":[B
    .end local v10    # "two":Ljava/lang/String;
    .end local v14    # "four":Ljava/lang/String;
    .end local v24    # "v2config":Ljava/lang/String;
    .end local v25    # "three":Ljava/lang/String;
    .end local v26    # "v2":Lcom/orange/gugucore/Gugucore$e;
    .end local v28    # "one":Ljava/lang/String;
    :cond_274
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_307

    .line 1158
    const-string v2, "{\n  \"policy\": null,\n  \"inbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"port\": 9999,\n      \"listen\": \"127.0.0.1\",\n      \"protocol\": \"socks\",\n      \"sniffing\": {\n        \"enabled\": true,\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ]\n      },\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"ip\": null,\n        \"address\": null,\n        \"clients\": null\n      },\n      \"streamSettings\": null\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"tag\": \"proxy\",\n      \"protocol\": \"vmess\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[add]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"id\": \"[udid]\",\n                \"alterId\": [aid]\n              }\n            ]\n          }\n        ],\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": {\n        \"network\": \"ws\",\n        \"security\": \"[tls]\",\n        \"tlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": \"[host]\"\n        },\n        \"tcpSettings\": null,\n        \"kcpSettings\": null,\n        \"wsSettings\": {\n          \"connectionReuse\": true,\n          \"path\": \"[path]\",\n          \"headers\": {\n            \"Host\": \"[host]\"\n          }\n        },\n        \"httpSettings\": null,\n        \"quicSettings\": null\n      },\n      \"mux\": {\n        \"enabled\": false\n      }\n    },\n    {\n      \"tag\": \"direct\",\n      \"protocol\": \"freedom\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": null\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    },\n    {\n      \"tag\": \"block\",\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"vnext\": null,\n        \"servers\": null,\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"streamSettings\": null,\n      \"mux\": null\n    }\n  ],\n  \"stats\": null,\n  \"api\": null,\n  \"dns\": null,\n  \"routing\": {\n    \"domainStrategy\": \"IPIfNonMatch\",\n    \"rules\": [\n      {\n        \"type\": \"field\",\n        \"port\": null,\n        \"inboundTag\": [\n          \"api\"\n        ],\n        \"outboundTag\": \"api\",\n        \"ip\": null,\n        \"domain\": null\n      }\n    ]\n  }\n}"

    .line 1277
    .local v2, "v2config":Ljava/lang/String;
    const-string v3, "[add]"

    const-string v10, "add"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1278
    .restart local v3    # "one":Ljava/lang/String;
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1279
    .restart local v10    # "two":Ljava/lang/String;
    const-string v14, "[udid]"

    move-object/from16 v24, v2

    .end local v2    # "v2config":Ljava/lang/String;
    .restart local v24    # "v2config":Ljava/lang/String;
    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1280
    .local v2, "three":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1282
    .restart local v14    # "four":Ljava/lang/String;
    move-object/from16 v25, v2

    .end local v2    # "three":Ljava/lang/String;
    .restart local v25    # "three":Ljava/lang/String;
    const-string v2, "path"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v26, v3

    move-object/from16 v3, v23

    .end local v3    # "one":Ljava/lang/String;
    .local v26, "one":Ljava/lang/String;
    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, "five":Ljava/lang/String;
    move-object/from16 v23, v6

    .end local v6    # "net":Ljava/lang/String;
    .local v23, "net":Ljava/lang/String;
    const-string v6, "[host]"

    move-object/from16 v27, v10

    .end local v10    # "two":Ljava/lang/String;
    .local v27, "two":Ljava/lang/String;
    const-string v10, "host"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1286
    .local v6, "six":Ljava/lang/String;
    const-string v10, "[tls]"

    invoke-virtual {v6, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1292
    .local v10, "seven":Ljava/lang/String;
    move-object/from16 v28, v0

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v28, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/orange/gugucore/Gugucore$e;

    invoke-direct {v0, v1, v10}, Lcom/orange/gugucore/Gugucore$e;-><init>(Lcom/orange/gugucore/Gugucore;Ljava/lang/String;)V

    .line 1293
    .local v0, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1324
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v30, v29

    .line 1326
    .local v30, "bytes":[B
    move-object/from16 v29, v0

    move-object/from16 v0, v30

    .end local v30    # "bytes":[B
    .local v0, "bytes":[B
    .local v29, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1328
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1330
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v30

    move-object/from16 v31, v2

    .end local v2    # "five":Ljava/lang/String;
    .local v31, "five":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1332
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_31b

    .line 1156
    .end local v10    # "seven":Ljava/lang/String;
    .end local v14    # "four":Ljava/lang/String;
    .end local v23    # "net":Ljava/lang/String;
    .end local v24    # "v2config":Ljava/lang/String;
    .end local v25    # "three":Ljava/lang/String;
    .end local v26    # "one":Ljava/lang/String;
    .end local v27    # "two":Ljava/lang/String;
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29    # "v2":Lcom/orange/gugucore/Gugucore$e;
    .end local v31    # "five":Ljava/lang/String;
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "net":Ljava/lang/String;
    :cond_307
    move-object/from16 v28, v0

    move-object/from16 v3, v23

    move-object/from16 v23, v6

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "net":Ljava/lang/String;
    .restart local v23    # "net":Ljava/lang/String;
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_31b

    .line 1786
    .end local v7    # "filePharos":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "ok":Ljava/lang/String;
    .end local v13    # "tls":Ljava/lang/String;
    .end local v16    # "flag":Z
    .end local v17    # "en":Ljava/lang/String;
    .end local v21    # "current":Lb/h/d/d;
    .end local v23    # "net":Ljava/lang/String;
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "current":Lb/h/d/d;
    :catch_30e
    move-exception v0

    move-object/from16 v21, v3

    move-object v15, v1

    goto/16 :goto_754

    .line 861
    .restart local v7    # "filePharos":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "ok":Ljava/lang/String;
    .restart local v17    # "en":Ljava/lang/String;
    :cond_314
    move-object/from16 v21, v3

    move-object/from16 v20, v6

    move-object/from16 v22, v10

    move-object v3, v14

    .line 1339
    .end local v3    # "current":Lb/h/d/d;
    .restart local v21    # "current":Lb/h/d/d;
    :goto_31b
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33e

    .line 1340
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpharos/Pharos;->urldecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "stringHandle":Ljava/lang/String;
    invoke-static {v0}, Lb/h/d/e;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1346
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/orange/gugucore/Gugucore$c;

    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v1, v2, v10}, Lcom/orange/gugucore/Gugucore$c;-><init>(Lcom/orange/gugucore/Gugucore;Ljava/util/Map;Landroid/content/Context;)V

    iput-object v6, v1, Lcom/orange/gugucore/Gugucore;->g:Lcom/orange/gugucore/Gugucore$c;

    .line 1347
    iget-object v6, v1, Lcom/orange/gugucore/Gugucore;->g:Lcom/orange/gugucore/Gugucore$c;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1350
    .end local v0    # "stringHandle":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_33e
    const-string v0, "{\n    \"run_type\": \"client\",\n    \"local_addr\": \"127.0.0.1\",\n    \"local_port\": 9999,\n    \"remote_addr\": \"[ProxyServer]\",\n    \"remote_port\": [ProxyPort],\n    \"password\": [\n        \"[ProxyPassword]\"\n    ],\n    \"log_level\": 0,\n    \"ssl\": {\n        \"verify\": false,\n        \"verify_hostname\": false,\n        \"cert\": \"\",\n        \"cipher\": \"ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-RSA-AES128-SHA:ECDHE-RSA-AES256-SHA:RSA-AES128-GCM-SHA256:RSA-AES256-GCM-SHA384:RSA-AES128-SHA:RSA-AES256-SHA:RSA-3DES-EDE-SHA:ECDHE-ECDSA-AES256-SHA:ECDHE-ECDSA-AES128-SHA:DHE-RSA-AES128-SHA:DHE-RSA-AES256-SHA:AES128-SHA:AES256-SHA:DES-CBC3-SHA\",\n        \"cipher_tls13\": \"TLS_AES_128_GCM_SHA256:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_256_GCM_SHA384\",\n        \"sni\": \"www.pubgmobile.com\",\n        \"alpn\": [\n            \"h2\",\n            \"http/1.1\"\n        ],\n        \"enable_ipv6\": false,\n        \"reuse_session\": true,\n        \"session_ticket\": false,\n        \"curves\": \"\"\n    },\n    \"tcp\": {\n        \"no_delay\": true,\n        \"keep_alive\": true,\n        \"fast_open\": false,\n        \"fast_open_qlen\": 20\n    },\n  \"websocket\": {\n    \"enabled\": [websocket],\n    \"path\": \"[path]\",\n    \"host\": \"[host]\"\n  },\n  \"mux\": {\n    \"enabled\": [mux]\n  }}"

    move-object v2, v0

    .line 1390
    .local v2, "trojanConfig":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0
    :try_end_345
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_345} :catch_74d

    const-string v6, "sni"

    const/4 v10, 0x2

    if-ne v0, v10, :cond_492

    .line 1392
    :try_start_34a
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->n(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1393
    .local v0, "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v10

    const-string v13, "trojan://"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_34a .. :try_end_35c} :catch_749

    if-eqz v10, :cond_367

    .line 1394
    :try_start_35e
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lb/h/d/e;->n(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10
    :try_end_366
    .catch Ljava/lang/Exception; {:try_start_35e .. :try_end_366} :catch_74d

    move-object v0, v10

    .line 1397
    :cond_367
    :try_start_367
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v10

    const-string v13, "trojan-go://"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_371} :catch_749

    if-eqz v10, :cond_37c

    .line 1398
    :try_start_373
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lb/h/d/e;->o(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_37b} :catch_74d

    move-object v0, v10

    .line 1401
    :cond_37c
    move-object/from16 v10, v22

    .line 1402
    .local v10, "sni":Ljava/lang/String;
    :try_start_37e
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13
    :try_end_382
    .catch Ljava/lang/Exception; {:try_start_37e .. :try_end_382} :catch_749

    .line 1403
    .local v13, "flag":Z
    if-eqz v13, :cond_396

    .line 1404
    :try_start_384
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v10, v14

    .line 1405
    move-object/from16 v14, v20

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_391
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_391} :catch_74d

    if-eqz v16, :cond_398

    .line 1406
    move-object/from16 v10, v22

    goto :goto_398

    .line 1403
    :cond_396
    move-object/from16 v14, v20

    .line 1410
    :cond_398
    :goto_398
    move/from16 v16, v13

    .end local v13    # "flag":Z
    .restart local v16    # "flag":Z
    :try_start_39a
    const-string v13, "[ProxyServer]"

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v13, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1411
    .local v6, "one":Ljava/lang/String;
    const-string v13, "[ProxyPort]"

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    .end local v2    # "trojanConfig":Ljava/lang/String;
    .local v19, "trojanConfig":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v23, v4

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6, v13, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1412
    .local v4, "two":Ljava/lang/String;
    const-string v13, "[ProxyPassword]"

    move-object/from16 v18, v6

    .end local v6    # "one":Ljava/lang/String;
    .local v18, "one":Ljava/lang/String;
    const-string v6, "Password"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1413
    .local v6, "three":Ljava/lang/String;
    const-string v13, "[sni]"

    invoke-virtual {v6, v13, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1414
    .local v13, "four":Ljava/lang/String;
    move-object/from16 v24, v4

    .end local v4    # "two":Ljava/lang/String;
    .local v24, "two":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v6

    .end local v6    # "three":Ljava/lang/String;
    .restart local v25    # "three":Ljava/lang/String;
    const-string v6, "trojan://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_410

    .line 1415
    const-string v4, "[mux]"

    const-string v6, "false"

    invoke-virtual {v13, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1416
    .local v4, "five":Ljava/lang/String;
    const-string v6, "[websocket]"

    move-object/from16 v26, v10

    .end local v10    # "sni":Ljava/lang/String;
    .local v26, "sni":Ljava/lang/String;
    const-string v10, "false"

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1417
    .local v6, "six":Ljava/lang/String;
    move-object/from16 v10, v22

    invoke-virtual {v6, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v27, v22

    .line 1418
    .local v27, "seven":Ljava/lang/String;
    move-object/from16 v22, v4

    .end local v4    # "five":Ljava/lang/String;
    .local v22, "five":Ljava/lang/String;
    const-string v4, "[host]"

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    .end local v27    # "seven":Ljava/lang/String;
    .local v6, "seven":Ljava/lang/String;
    .local v28, "six":Ljava/lang/String;
    invoke-virtual {v6, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1419
    .local v4, "eight":Ljava/lang/String;
    invoke-static {v4}, Ltrojan/Trojan;->runClient(Ljava/lang/String;)V

    goto :goto_414

    .line 1414
    .end local v4    # "eight":Ljava/lang/String;
    .end local v6    # "seven":Ljava/lang/String;
    .end local v22    # "five":Ljava/lang/String;
    .end local v26    # "sni":Ljava/lang/String;
    .end local v28    # "six":Ljava/lang/String;
    .restart local v10    # "sni":Ljava/lang/String;
    :cond_410
    move-object/from16 v26, v10

    move-object/from16 v10, v22

    .line 1422
    .end local v10    # "sni":Ljava/lang/String;
    .restart local v26    # "sni":Ljava/lang/String;
    :goto_414
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "trojan-go://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48d

    .line 1423
    const-string v4, "[mux]"

    const-string v6, "true"

    invoke-virtual {v13, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1424
    .local v4, "five":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 1425
    .local v6, "wsflag":Z
    if-eqz v6, :cond_471

    .line 1426
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move/from16 v27, v6

    .end local v6    # "wsflag":Z
    .local v27, "wsflag":Z
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v13

    .end local v13    # "four":Ljava/lang/String;
    .local v22, "four":Ljava/lang/String;
    const-string v13, "true"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46e

    .line 1427
    const-string v6, "[websocket]"

    const-string v13, "true"

    invoke-virtual {v4, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1428
    .local v6, "six":Ljava/lang/String;
    const-string v13, "wsPath"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v6, v3, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1429
    .local v13, "seven":Ljava/lang/String;
    move-object/from16 v28, v6

    .end local v6    # "six":Ljava/lang/String;
    .restart local v28    # "six":Ljava/lang/String;
    const-string v6, "[host]"

    move-object/from16 v29, v15

    const-string v15, "wsHost"

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v13, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1430
    .local v6, "eight":Ljava/lang/String;
    invoke-static {v6}, Ltrojan/Trojan;->runClient(Ljava/lang/String;)V

    .line 1431
    .end local v6    # "eight":Ljava/lang/String;
    .end local v13    # "seven":Ljava/lang/String;
    .end local v28    # "six":Ljava/lang/String;
    goto :goto_4a2

    .line 1426
    :cond_46e
    move-object/from16 v29, v15

    goto :goto_4a2

    .line 1433
    .end local v22    # "four":Ljava/lang/String;
    .end local v27    # "wsflag":Z
    .local v6, "wsflag":Z
    .local v13, "four":Ljava/lang/String;
    :cond_471
    move/from16 v27, v6

    move-object/from16 v22, v13

    move-object/from16 v29, v15

    .end local v6    # "wsflag":Z
    .end local v13    # "four":Ljava/lang/String;
    .restart local v22    # "four":Ljava/lang/String;
    .restart local v27    # "wsflag":Z
    const-string v6, "[websocket]"

    const-string v13, "false"

    invoke-virtual {v4, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1434
    .local v6, "six":Ljava/lang/String;
    invoke-virtual {v6, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1435
    .local v13, "seven":Ljava/lang/String;
    const-string v15, "[host]"

    invoke-virtual {v13, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 1436
    .local v15, "eight":Ljava/lang/String;
    invoke-static {v15}, Ltrojan/Trojan;->runClient(Ljava/lang/String;)V

    goto :goto_4a2

    .line 1422
    .end local v4    # "five":Ljava/lang/String;
    .end local v6    # "six":Ljava/lang/String;
    .end local v15    # "eight":Ljava/lang/String;
    .end local v22    # "four":Ljava/lang/String;
    .end local v27    # "wsflag":Z
    .local v13, "four":Ljava/lang/String;
    :cond_48d
    move-object/from16 v22, v13

    move-object/from16 v29, v15

    .end local v13    # "four":Ljava/lang/String;
    .restart local v22    # "four":Ljava/lang/String;
    goto :goto_4a2

    .line 1390
    .end local v0    # "dic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "flag":Z
    .end local v18    # "one":Ljava/lang/String;
    .end local v19    # "trojanConfig":Ljava/lang/String;
    .end local v22    # "four":Ljava/lang/String;
    .end local v24    # "two":Ljava/lang/String;
    .end local v25    # "three":Ljava/lang/String;
    .end local v26    # "sni":Ljava/lang/String;
    .restart local v2    # "trojanConfig":Ljava/lang/String;
    :cond_492
    move-object/from16 v23, v4

    move-object/from16 v29, v15

    move-object/from16 v1, v19

    move-object/from16 v14, v20

    move-object/from16 v10, v22

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v2, v18

    .line 1445
    .end local v2    # "trojanConfig":Ljava/lang/String;
    .restart local v19    # "trojanConfig":Ljava/lang/String;
    :goto_4a2
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    if-eqz v0, :cond_4d5

    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4d5

    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4d5

    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4d5

    .line 1446
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1448
    .local v0, "bytes":[B
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1450
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1452
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1455
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1458
    .end local v0    # "bytes":[B
    :cond_4d5
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_528

    .line 1461
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1463
    .local v0, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v4

    .line 1465
    .local v4, "base":Ljava/lang/String;
    const-string v6, "127.0.0.1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1466
    .restart local v6    # "six":Ljava/lang/String;
    const-string v13, "9999"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v6, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1467
    .local v13, "seven":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v15

    .line 1471
    .local v15, "old":Ljava/lang/String;
    invoke-virtual {v11, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1472
    .local v16, "finalconfig":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v22, v18

    .line 1474
    .local v22, "bytes":[B
    move-object/from16 v18, v0

    move-object/from16 v0, v22

    .end local v22    # "bytes":[B
    .local v0, "bytes":[B
    .local v18, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1476
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1478
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v22

    move-object/from16 v24, v4

    .end local v4    # "base":Ljava/lang/String;
    .local v24, "base":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1480
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1483
    .end local v0    # "bytes":[B
    .end local v6    # "six":Ljava/lang/String;
    .end local v13    # "seven":Ljava/lang/String;
    .end local v15    # "old":Ljava/lang/String;
    .end local v16    # "finalconfig":Ljava/lang/String;
    .end local v18    # "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "base":Ljava/lang/String;
    :cond_528
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_61d

    .line 1486
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    .line 1491
    .local v4, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "/F/fZolUVjLr0iTmBnDBNPj+aOPQDPGTYFd0qBqONnCqRV/6DRpUnic1R2faTBsXhO32xRA5BgoM3Jb9o+NU4bhllxyNiQkqu64EoLoMiR8Dn7MhuD3AqD/ZvMAlxGA7SIaagvkrACdoS4QvFXOSfH3+2y5bPzQIpjr7DtuoobHihUb4oUR75HaYZTotX3Lp"
    :try_end_53a
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_53a} :catch_749

    move-object v6, v0

    .line 1500
    .local v6, "base":Ljava/lang/String;
    move-object v13, v10

    .line 1502
    .local v13, "http":Ljava/lang/String;
    :try_start_53c
    invoke-static {}, Lpharos/Pharos;->corecode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lb/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_544
    .catch Ljava/lang/Exception; {:try_start_53c .. :try_end_544} :catch_546

    move-object v13, v0

    .line 1505
    goto :goto_547

    .line 1503
    :catch_546
    move-exception v0

    .line 1507
    :goto_547
    move-object v0, v14

    .line 1508
    .local v0, "username":Ljava/lang/String;
    :try_start_548
    const-string v15, "username"

    invoke-interface {v4, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    .line 1509
    .local v15, "flag":Z
    if-eqz v15, :cond_55b

    .line 1510
    move-object/from16 v16, v0

    .end local v0    # "username":Ljava/lang/String;
    .local v16, "username":Ljava/lang/String;
    const-string v0, "username"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .end local v16    # "username":Ljava/lang/String;
    .restart local v0    # "username":Ljava/lang/String;
    goto :goto_55d

    .line 1509
    :cond_55b
    move-object/from16 v16, v0

    .line 1513
    :goto_55d
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5ad

    .line 1514
    const-string v14, "- { name: pharos,type: http, server: [server], port: [port]}"

    .line 1515
    .local v14, "base1":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "username":Ljava/lang/String;
    .restart local v16    # "username":Ljava/lang/String;
    const-string v0, "[server]"

    move-object/from16 v18, v6

    .end local v6    # "base":Ljava/lang/String;
    .local v18, "base":Ljava/lang/String;
    const-string v6, "server"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v14, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, "six":Ljava/lang/String;
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1517
    .local v6, "seven":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v9

    .line 1519
    .local v9, "old":Ljava/lang/String;
    invoke-virtual {v11, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    .line 1520
    .local v22, "finalconfig":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v25, v24

    .line 1522
    .local v25, "bytes":[B
    move-object/from16 v24, v0

    move-object/from16 v0, v25

    .end local v25    # "bytes":[B
    .local v0, "bytes":[B
    .local v24, "six":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1524
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v25

    move-object/from16 v26, v6

    .end local v6    # "seven":Ljava/lang/String;
    .local v26, "seven":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1528
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1529
    nop

    .end local v0    # "bytes":[B
    .end local v9    # "old":Ljava/lang/String;
    .end local v14    # "base1":Ljava/lang/String;
    .end local v22    # "finalconfig":Ljava/lang/String;
    .end local v24    # "six":Ljava/lang/String;
    .end local v26    # "seven":Ljava/lang/String;
    goto :goto_61d

    .line 1530
    .end local v16    # "username":Ljava/lang/String;
    .end local v18    # "base":Ljava/lang/String;
    .local v0, "username":Ljava/lang/String;
    .local v6, "base":Ljava/lang/String;
    :cond_5ad
    move-object/from16 v16, v0

    move-object/from16 v18, v6

    .end local v0    # "username":Ljava/lang/String;
    .end local v6    # "base":Ljava/lang/String;
    .restart local v16    # "username":Ljava/lang/String;
    .restart local v18    # "base":Ljava/lang/String;
    const-string v0, "[server]"

    const-string v6, "server"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v13, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    .local v0, "six":Ljava/lang/String;
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1532
    .local v6, "seven":Ljava/lang/String;
    const-string v9, "[username]"

    const-string v14, "username"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v9, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1533
    .local v9, "eight":Ljava/lang/String;
    const-string v14, "[password]"

    move-object/from16 v22, v0

    .end local v0    # "six":Ljava/lang/String;
    .local v22, "six":Ljava/lang/String;
    const-string v0, "password"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v9, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, "nine":Ljava/lang/String;
    const-string v14, "[pharos]"

    move-object/from16 v24, v4

    .end local v4    # "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v24, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "pharos"

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1535
    .local v4, "ten":Ljava/lang/String;
    invoke-static {}, Lpharos/Pharos;->sockcode()Ljava/lang/String;

    move-result-object v14

    .line 1539
    .local v14, "old":Ljava/lang/String;
    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 1540
    .local v25, "finalconfig":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v27, v26

    .line 1542
    .local v27, "bytes":[B
    move-object/from16 v26, v0

    move-object/from16 v0, v27

    .end local v27    # "bytes":[B
    .local v0, "bytes":[B
    .local v26, "nine":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1544
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1546
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v27

    move-object/from16 v28, v4

    .end local v4    # "ten":Ljava/lang/String;
    .local v28, "ten":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1548
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1554
    .end local v0    # "bytes":[B
    .end local v6    # "seven":Ljava/lang/String;
    .end local v9    # "eight":Ljava/lang/String;
    .end local v13    # "http":Ljava/lang/String;
    .end local v14    # "old":Ljava/lang/String;
    .end local v15    # "flag":Z
    .end local v16    # "username":Ljava/lang/String;
    .end local v18    # "base":Ljava/lang/String;
    .end local v22    # "six":Ljava/lang/String;
    .end local v24    # "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "finalconfig":Ljava/lang/String;
    .end local v26    # "nine":Ljava/lang/String;
    .end local v28    # "ten":Ljava/lang/String;
    :cond_61d
    :goto_61d
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_746

    .line 1555
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/h/d/e;->p(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1556
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1557
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6cd

    .line 1558
    const-string v5, "{\n  \"dns\": {\n    \"hosts\": {\n      \"domain:googleapis.cn\": \"googleapis.com\"\n    },\n    \"servers\": [\n    \"1.1.1.1\"\n    ]\n  },\n  \"inbounds\": [\n    {\n      \"listen\": \"127.0.0.1\",\n      \"port\": 9999,\n      \"protocol\": \"socks\",\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"userLevel\": 8\n      },\n      \"sniffing\": {\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ],\n        \"enabled\": true\n      },\n      \"tag\": \"socks\"\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"mux\": {\n        \"concurrency\": 8,\n        \"enabled\": true\n      },\n      \"protocol\": \"vless\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[address]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"encryption\": \"none\",\n                \"flow\": \"[flow]\",\n                \"id\": \"[aid]\",\n                \"level\": 8,\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ]\n      },\n \"streamSettings\": {\n        \"network\": \"ws\",\n        \"security\": \"tls\",\n        \"tlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": \"[serverName]\"\n        },\n        \"wsSettings\": {\n          \"headers\": {\n            \"Host\": \"[wsHost]\"\n          },\n          \"path\": \"[path]\"\n        }\n      },\n      \"tag\": \"proxy\"\n    },\n    {\n      \"protocol\": \"freedom\",\n      \"settings\": {},\n      \"tag\": \"direct\"\n    },\n    {\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"tag\": \"block\"\n    }\n  ]\n}"

    .line 1645
    .local v5, "config":Ljava/lang/String;
    const-string v6, "[address]"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1646
    .local v1, "one":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1647
    .local v2, "two":Ljava/lang/String;
    move-object/from16 v6, v29

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, v23

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1649
    .local v6, "four":Ljava/lang/String;
    const-string v9, "[flow]"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1650
    .local v9, "five":Ljava/lang/String;
    const-string v10, "[security]"

    const-string v12, "security"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1651
    .local v10, "six":Ljava/lang/String;
    const-string v12, "[serverName]"

    move-object/from16 v13, v20

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1653
    .local v12, "seven":Ljava/lang/String;
    const-string v13, "[wsHost]"

    const-string v14, "wsHost"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1654
    .local v13, "eight":Ljava/lang/String;
    const-string v14, "wsPath"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1656
    .local v3, "night":Ljava/lang/String;
    new-instance v14, Lcom/orange/gugucore/Gugucore$e;
    :try_end_6a2
    .catch Ljava/lang/Exception; {:try_start_548 .. :try_end_6a2} :catch_749

    move-object/from16 v15, p0

    :try_start_6a4
    invoke-direct {v14, v15, v3}, Lcom/orange/gugucore/Gugucore$e;-><init>(Lcom/orange/gugucore/Gugucore;Ljava/lang/String;)V

    .line 1657
    .local v14, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 1660
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v18, v16

    .line 1662
    .local v18, "bytes":[B
    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .end local v18    # "bytes":[B
    .local v1, "bytes":[B
    .local v16, "one":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1664
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1666
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v18

    move-object/from16 v20, v2

    .end local v2    # "two":Ljava/lang/String;
    .local v20, "two":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1668
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1670
    nop

    .end local v1    # "bytes":[B
    .end local v3    # "night":Ljava/lang/String;
    .end local v5    # "config":Ljava/lang/String;
    .end local v6    # "four":Ljava/lang/String;
    .end local v9    # "five":Ljava/lang/String;
    .end local v10    # "six":Ljava/lang/String;
    .end local v12    # "seven":Ljava/lang/String;
    .end local v13    # "eight":Ljava/lang/String;
    .end local v14    # "v2":Lcom/orange/gugucore/Gugucore$e;
    .end local v16    # "one":Ljava/lang/String;
    .end local v20    # "two":Ljava/lang/String;
    goto/16 :goto_748

    .line 1671
    :cond_6cd
    move-object/from16 v15, p0

    move-object/from16 v13, v20

    move-object/from16 v9, v23

    move-object/from16 v6, v29

    const-string v3, "{\n  \"dns\": {\n    \"hosts\": {\n      \"domain:googleapis.cn\": \"googleapis.com\"\n    },\n    \"servers\": [\n    \"1.1.1.1\"\n    ]\n  },\n  \"inbounds\": [\n    {\n      \"listen\": \"127.0.0.1\",\n      \"port\": 9999,\n      \"protocol\": \"socks\",\n      \"settings\": {\n        \"auth\": \"noauth\",\n        \"udp\": true,\n        \"userLevel\": 8\n      },\n      \"sniffing\": {\n        \"destOverride\": [\n          \"http\",\n          \"tls\"\n        ],\n        \"enabled\": true\n      },\n      \"tag\": \"socks\"\n    }\n  ],\n  \"outbounds\": [\n    {\n      \"mux\": {\n        \"concurrency\": 8,\n        \"enabled\": true\n      },\n      \"protocol\": \"vless\",\n      \"settings\": {\n        \"vnext\": [\n          {\n            \"address\": \"[address]\",\n            \"port\": [port],\n            \"users\": [\n              {\n                \"encryption\": \"none\",\n                \"flow\": \"[flow]\",\n                \"id\": \"[aid]\",\n                \"level\": 8,\n                \"security\": \"auto\"\n              }\n            ]\n          }\n        ]\n      },\n      \"streamSettings\": {\n        \"network\": \"tcp\",\n        \"security\": \"[security]\",\n        \"tcpSettings\": {\n          \"header\": {\n            \"type\": \"none\"\n          }\n        },\n        \"xtlsSettings\": {\n          \"allowInsecure\": true,\n          \"serverName\": \"[serverName]\"\n        }\n      },\n      \"tag\": \"proxy\"\n    },\n    {\n      \"protocol\": \"freedom\",\n      \"settings\": {},\n      \"tag\": \"direct\"\n    },\n    {\n      \"protocol\": \"blackhole\",\n      \"settings\": {\n        \"response\": {\n          \"type\": \"http\"\n        }\n      },\n      \"tag\": \"block\"\n    }\n  ]\n}"

    .line 1757
    .local v3, "config":Ljava/lang/String;
    const-string v5, "[address]"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1758
    .local v1, "one":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1759
    .restart local v2    # "two":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1761
    .local v5, "four":Ljava/lang/String;
    const-string v6, "[flow]"

    const-string v9, "flow"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1762
    .local v6, "five":Ljava/lang/String;
    const-string v9, "[security]"

    const-string v10, "security"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1763
    .local v9, "six":Ljava/lang/String;
    const-string v10, "[serverName]"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1765
    .local v10, "seven":Ljava/lang/String;
    new-instance v12, Lcom/orange/gugucore/Gugucore$e;

    invoke-direct {v12, v15, v10}, Lcom/orange/gugucore/Gugucore$e;-><init>(Lcom/orange/gugucore/Gugucore;Ljava/lang/String;)V

    .line 1766
    .local v12, "v2":Lcom/orange/gugucore/Gugucore$e;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 1769
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 1771
    .local v13, "bytes":[B
    invoke-virtual {v8, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 1773
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1775
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lpharos/Pharos;->pharosGogo([BLjava/lang/String;)V

    .line 1777
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_743
    .catch Ljava/lang/Exception; {:try_start_6a4 .. :try_end_743} :catch_744

    goto :goto_748

    .line 1786
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "one":Ljava/lang/String;
    .end local v2    # "two":Ljava/lang/String;
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "four":Ljava/lang/String;
    .end local v6    # "five":Ljava/lang/String;
    .end local v7    # "filePharos":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "six":Ljava/lang/String;
    .end local v10    # "seven":Ljava/lang/String;
    .end local v11    # "ok":Ljava/lang/String;
    .end local v12    # "v2":Lcom/orange/gugucore/Gugucore$e;
    .end local v13    # "bytes":[B
    .end local v17    # "en":Ljava/lang/String;
    .end local v19    # "trojanConfig":Ljava/lang/String;
    :catch_744
    move-exception v0

    goto :goto_754

    .line 1554
    .restart local v7    # "filePharos":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "ok":Ljava/lang/String;
    .restart local v17    # "en":Ljava/lang/String;
    .restart local v19    # "trojanConfig":Ljava/lang/String;
    :cond_746
    move-object/from16 v15, p0

    .line 1788
    .end local v7    # "filePharos":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "ok":Ljava/lang/String;
    .end local v17    # "en":Ljava/lang/String;
    .end local v19    # "trojanConfig":Ljava/lang/String;
    :goto_748
    goto :goto_757

    .line 1786
    :catch_749
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_754

    :catch_74d
    move-exception v0

    move-object v15, v1

    goto :goto_754

    .end local v21    # "current":Lb/h/d/d;
    .local v3, "current":Lb/h/d/d;
    :catch_750
    move-exception v0

    move-object v15, v1

    move-object/from16 v21, v3

    .line 1787
    .end local v3    # "current":Lb/h/d/d;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "current":Lb/h/d/d;
    :goto_754
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1793
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_757
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, v15}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    move-object v1, v0

    .line 1795
    .local v1, "b":Landroid/net/VpnService$Builder;
    :try_start_75d
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_764
    .catch Ljava/lang/Exception; {:try_start_75d .. :try_end_764} :catch_765

    .line 1798
    goto :goto_769

    .line 1796
    :catch_765
    move-exception v0

    .line 1797
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1799
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_769
    const/4 v2, 0x0

    .line 1800
    .local v2, "disable_ipv6":Z
    const v0, 0x7f10002f

    invoke-virtual {v15, v0}, Landroid/net/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1801
    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 1804
    const/16 v0, 0x18

    const-string v3, "172.19.0.1"

    invoke-virtual {v1, v3, v0}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 1805
    if-eqz v2, :cond_790

    .line 1806
    const/16 v0, 0x7e

    const-string v3, "fdfe:dcba:9876::1"

    invoke-virtual {v1, v3, v0}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 1807
    const-string v0, "::"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_791

    .line 1805
    :cond_790
    const/4 v3, 0x0

    .line 1809
    :goto_791
    invoke-virtual/range {v21 .. v21}, Lb/h/d/d;->d()I

    .line 1812
    invoke-virtual {v1, v3}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    .line 1814
    const-string v0, "1.1.1.1"

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1815
    const-string v0, "114.114.114.114"

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1816
    if-eqz v2, :cond_7ad

    .line 1817
    const-string v0, "2001:4860:4860::8844"

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1818
    const-string v0, "2001:4860:4860::8888"

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1821
    :cond_7ad
    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_7b9
    if-ge v4, v3, :cond_7d4

    aget-object v5, v0, v4

    .line 1822
    .local v5, "route":Ljava/lang/String;
    const-string v6, "/"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1823
    .local v6, "parts":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v8, v7}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 1821
    .end local v5    # "route":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b9

    .line 1826
    :cond_7d4
    const-string v3, "com.huawei.hwvoipservice,com.tencent.tmgp.cod,com.plexapp.android,com.android.bips,com.amap.android.ams,com.coolapk.market,me.bakumon.moneykeeper,com.android.contacts,com.sankuai.meituan,com.youdao.dict,com.netease.cloudmusic,com.baidu.input_yijia,com.baidu.netdisk,net.oneplus.h2launcher,com.ted.number,com.eg.android.AlipayGphone,com.mobike.mobikeapp,ctrip.android.view,net.oneplus.weather,com.oneplus.gallery,com.oppo.market,com.oneplus.card,com.android.mms,com.jingdong.app.mall,com.oneplus.cloud,com.oneplus.bbs,net.oneplus.launcher,com.oneplus.account,com.termux,cn.oneplus.photos,com.tencent.mobileqq,com.edward.iconpack.pelmix,com.yipiao,com.epet.android.app,com.hengye.share,com.taobao.etao,com.chinamworld.bocmbci,com.gemdale.client,com.sharpgrid.healthclient,com.borderxlab.bieyang,com.huawei.hwid,com.maimemo.android.momo,com.chinarainbow.tft,com.icare.iweight,com.tencent.mm,com.taobao.taobao,us.pinguo.april_collage,com.cmbchina.ccd.pluto.cmbActivity,com.weconex.njcitizencard,com.diaox2.android,com.eusoft.eudic,com.haier.uhome.uplus,cn.ticktick.task,com.tencent.tmgp.sgame,com.baidu.BaiduMap,com.wudaokou.hippo,com.icloudoor.bizranking,com.zhihu.android,com.forms,com.sicent.app.baba,com.doubibi.peafowl.android,com.douban.frodo,com.huawei.health,com.MobileTicket,com.taobao.idlefish,vz.com,com.msd.consumerChinese,com.mubu.app,com.oneplus.calendar,com.uzero.baimiao,com.sdu.didi.psnger,com.oneplus.findmyphone,com.oneplus.backuprestore,net.oneplus.odm,top.linesoft.kiryuu.pandownload,com.shizhuang.duapp,com.zhan.ieltstiku,com.zhan.toefltom,com.fittimellc.fittime,com.yoho,com.rjfittime.app,com.sportq.fit,cn.soulapp.android,com.p1.mobile.putong,com.fenzotech.jimu,com.alibaba.aliyun,com.aliyun.alink"

    .line 1827
    .local v3, "disApps":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1828
    .local v4, "ss":[Ljava/lang/String;
    iget-object v0, v15, Lcom/orange/gugucore/Gugucore;->h:Landroid/content/SharedPreferences;

    const-string v5, "globalvalue"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7e8

    goto :goto_801

    .line 1832
    :cond_7e8
    :try_start_7e8
    array-length v0, v4

    const/4 v5, 0x0

    :goto_7ea
    if-ge v5, v0, :cond_7f5

    aget-object v6, v4, v5

    .line 1833
    .local v6, "i":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1832
    nop

    .end local v6    # "i":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7ea

    .line 1835
    :cond_7f5
    const-string v0, "com.zhihu.android"

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1836
    const-string v0, "com.chatoex.pro"

    invoke-virtual {v1, v0}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_7ff
    .catch Ljava/lang/Exception; {:try_start_7e8 .. :try_end_7ff} :catch_800

    .line 1841
    goto :goto_801

    .line 1839
    :catch_800
    move-exception v0

    .line 1849
    :goto_801
    const-string v0, "connectivity"

    invoke-virtual {v15, v0}, Landroid/net/VpnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1855
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_81f

    .line 1857
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    .line 1858
    .local v5, "aNet":Landroid/net/Network;
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/net/Network;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 1859
    .local v6, "done":[Landroid/net/Network;
    invoke-virtual {v15, v6}, Landroid/net/VpnService;->setUnderlyingNetworks([Landroid/net/Network;)Z

    .line 1861
    invoke-virtual {v1, v6}, Landroid/net/VpnService$Builder;->setUnderlyingNetworks([Landroid/net/Network;)Landroid/net/VpnService$Builder;

    .line 1865
    .end local v5    # "aNet":Landroid/net/Network;
    .end local v6    # "done":[Landroid/net/Network;
    :cond_81f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_829

    .line 1866
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/VpnService$Builder;->setMetered(Z)Landroid/net/VpnService$Builder;

    .line 1870
    :cond_829
    invoke-virtual {v1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, v15, Lcom/orange/gugucore/Gugucore;->f:Landroid/os/ParcelFileDescriptor;

    .line 1872
    iget-object v5, v15, Lcom/orange/gugucore/Gugucore;->f:Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_838

    .line 1873
    invoke-virtual/range {p0 .. p0}, Lcom/orange/gugucore/Gugucore;->a()V

    .line 1874
    const/4 v5, 0x2

    return v5

    .line 1888
    :cond_838
    new-instance v6, Lcom/orange/gugucore/Gugucore$d;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v15, v5, v7}, Lcom/orange/gugucore/Gugucore$d;-><init>(Lcom/orange/gugucore/Gugucore;ILandroid/content/Context;)V

    move-object v5, v6

    .line 1889
    .local v5, "tun":Lcom/orange/gugucore/Gugucore$d;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1891
    new-instance v6, Lcom/orange/gugucore/Gugucore$b;

    iget-object v7, v15, Lcom/orange/gugucore/Gugucore;->f:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v15, v7, v8}, Lcom/orange/gugucore/Gugucore$b;-><init>(Lcom/orange/gugucore/Gugucore;ILandroid/content/Context;)V

    .line 1892
    .local v6, "fdThread":Lcom/orange/gugucore/Gugucore$b;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1894
    const/4 v7, 0x2

    return v7
.end method
