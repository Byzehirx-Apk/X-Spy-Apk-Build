.class public Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;,
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;,
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    }
.end annotation


# static fields
.field public static final HTTP_BADREQUEST:Ljava/lang/String; = "400 Bad Request"

.field public static final HTTP_FORBIDDEN:Ljava/lang/String; = "403 Forbidden"

.field public static final HTTP_INTERNALERROR:Ljava/lang/String; = "500 Internal Server Error"

.field public static final HTTP_NOTFOUND:Ljava/lang/String; = "404 Not Found"

.field public static final HTTP_NOTIMPLEMENTED:Ljava/lang/String; = "501 Not Implemented"

.field public static final HTTP_NOTMODIFIED:Ljava/lang/String; = "304 Not Modified"

.field public static final HTTP_OK:Ljava/lang/String; = "200 OK"

.field public static final HTTP_PARTIALCONTENT:Ljava/lang/String; = "206 Partial Content"

.field public static final HTTP_RANGE_NOT_SATISFIABLE:Ljava/lang/String; = "416 Requested Range Not Satisfiable"

.field public static final HTTP_REDIRECT:Ljava/lang/String; = "301 Moved Permanently"

.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field public static final MIME_XML:Ljava/lang/String; = "text/xml"

.field private static S8H3eYzvg6VJJXGfS9KsaceOQzr9BosWjP9J0PNzfqDjshHgeOMsb1PZpwnxucV5:I

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/SimpleDateFormat;

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Hashtable;

.field protected static myErr:Ljava/io/PrintStream;

.field protected static myOut:Ljava/io/PrintStream;


# instance fields
.field private QGAZOXcdjHKQSTylJ1PoRPU6GviAfBkJokC9i5wWel7BvaAua8hNDN1OOldV05g5:I

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/ServerSocket;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1092
    new-instance v1, Ljava/util/Hashtable;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Hashtable;

    .line 1095
    new-instance v1, Ljava/util/StringTokenizer;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "css            text/css htm            text/html html           text/html xml            text/xml txt            text/plain asc            text/plain gif            image/gif jpg            image/jpeg jpeg           image/jpeg png            image/png mp3            audio/mpeg m3u            audio/mpeg-url mp4            video/mp4 ogv            video/ogg flv            video/x-flv mov            video/quicktime swf            application/x-shockwave-flash js                     application/javascript pdf            application/pdf doc            application/msword ogg            application/x-ogg zip            application/octet-stream exe            application/octet-stream class          application/octet-stream "

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1120
    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 1124
    :cond_0
    const/16 v1, 0x4000

    sput v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->S8H3eYzvg6VJJXGfS9KsaceOQzr9BosWjP9J0PNzfqDjshHgeOMsb1PZpwnxucV5:I

    .line 1127
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    .line 1128
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    .line 1136
    new-instance v1, Ljava/text/SimpleDateFormat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    .line 1137
    sput-object v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1138
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 333
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/16 v8, 0x5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/SynchronousQueue;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v12, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;B)V

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 242
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->QGAZOXcdjHKQSTylJ1PoRPU6GviAfBkJokC9i5wWel7BvaAua8hNDN1OOldV05g5:I

    .line 243
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    .line 244
    move-object v3, v0

    new-instance v4, Ljava/net/ServerSocket;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->QGAZOXcdjHKQSTylJ1PoRPU6GviAfBkJokC9i5wWel7BvaAua8hNDN1OOldV05g5:I

    invoke-direct {v5, v6}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/ServerSocket;

    .line 245
    move-object v3, v0

    new-instance v4, Ljava/lang/Thread;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    new-instance v6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    .line 258
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 259
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 260
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/ServerSocket;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v0, v1

    return-object v0
.end method

.method private static l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 863
    move-object v0, p0

    const-string/jumbo v3, ""

    move-object v1, v3

    .line 864
    new-instance v3, Ljava/util/StringTokenizer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string/jumbo v6, "/ "

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v3

    .line 865
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 867
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 868
    move-object v2, v4

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 870
    :cond_0
    move-object v3, v2

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 874
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 878
    goto :goto_0

    .line 879
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 282
    move-object v0, p0

    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string/jumbo v5, "NanoHTTPD 1.25 (C) 2001,2005-2011 Jarno Elonen and (C) 2010 Konstantinos Togias\n(Command line options: [-p port] [-d root-dir] [--licence])\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/16 v4, 0x50

    move v1, v4

    .line 287
    new-instance v4, Ljava/io/File;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "."

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    move-object v2, v4

    .line 290
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 291
    move-object v4, v0

    move v5, v3

    aget-object v4, v4, v5

    const-string/jumbo v5, "-p"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 290
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    :cond_1
    move-object v4, v0

    move v5, v3

    aget-object v4, v4, v5

    const-string/jumbo v5, "-d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    new-instance v4, Ljava/io/File;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 295
    :cond_2
    move-object v4, v0

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "licence"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string/jumbo v5, "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    .line 303
    :cond_3
    :try_start_0
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .line 311
    :goto_2
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Now serving files in port "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string/jumbo v5, "Hit Enter to stop.\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    :try_start_1
    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 315
    :goto_3
    return-void

    .line 305
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 307
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    const-string/jumbo v5, "Couldn\'t start server:\n"

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 315
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->S8H3eYzvg6VJJXGfS9KsaceOQzr9BosWjP9J0PNzfqDjshHgeOMsb1PZpwnxucV5:I

    return v0
.end method


# virtual methods
.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 13

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    sget-object v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v7

    move-object v2, v7

    .line 109
    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 112
    sget-object v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "  HDR: \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    move-object v10, v6

    .line 113
    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v7

    move-object v2, v7

    .line 116
    :goto_1
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 119
    sget-object v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "  PRM: \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    move-object v10, v6

    .line 120
    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v7

    move-object v2, v7

    .line 123
    :goto_2
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 126
    sget-object v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "  UPLOADED: \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    move-object v10, v6

    .line 127
    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 126
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    goto :goto_2

    .line 130
    :cond_2
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 31

    .prologue
    .line 898
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    const/16 v20, 0x0

    move-object/from16 v7, v20

    .line 901
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_0

    .line 902
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "500 Internal Server Error"

    const-string/jumbo v24, "text/plain"

    const-string/jumbo v25, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 905
    :cond_0
    move-object/from16 v20, v7

    if-nez v20, :cond_3

    .line 908
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    sget-char v21, Ljava/io/File;->separatorChar:C

    const/16 v22, 0x2f

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 909
    move-object/from16 v3, v21

    const/16 v21, 0x3f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_1

    .line 910
    move-object/from16 v20, v3

    const/16 v21, 0x0

    move-object/from16 v22, v3

    const/16 v23, 0x3f

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    .line 913
    :cond_1
    move-object/from16 v20, v3

    const-string/jumbo v21, ".."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v20, v3

    const-string/jumbo v21, ".."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v20, v3

    const-string/jumbo v21, "../"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_3

    .line 914
    :cond_2
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "403 Forbidden"

    const-string/jumbo v24, "text/plain"

    const-string/jumbo v25, "FORBIDDEN: Won\'t serve ../ for security reasons."

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 918
    :cond_3
    new-instance v20, Ljava/io/File;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v5

    move-object/from16 v23, v3

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v8, v20

    .line 919
    move-object/from16 v20, v7

    if-nez v20, :cond_4

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_4

    .line 920
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "404 Not Found"

    const-string/jumbo v24, "text/plain"

    const-string/jumbo v25, "Error 404, file not found."

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 924
    :cond_4
    move-object/from16 v20, v7

    if-nez v20, :cond_6

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 928
    move-object/from16 v20, v3

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 930
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    .line 931
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "301 Moved Permanently"

    const-string/jumbo v24, "text/html"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    const-string/jumbo v27, "<html><body>Redirected: <a href=\""

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\">"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "</a></body></html>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 934
    move-object/from16 v7, v21

    const-string/jumbo v21, "Location"

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_5
    move-object/from16 v20, v7

    if-nez v20, :cond_6

    .line 940
    new-instance v20, Ljava/io/File;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v8

    const-string/jumbo v23, "index.html"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 941
    new-instance v20, Ljava/io/File;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v5

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/index.html"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v8, v20

    .line 1004
    :cond_6
    :goto_0
    move-object/from16 v20, v7

    if-nez v20, :cond_19

    .line 1007
    const/16 v20, 0x0

    move-object/from16 v5, v20

    .line 1008
    move-object/from16 v20, v8

    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    .line 1009
    move/from16 v6, v21

    if-ltz v20, :cond_7

    .line 1010
    sget-object v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Hashtable;

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v5, v20

    .line 1011
    :cond_7
    move-object/from16 v20, v5

    if-nez v20, :cond_8

    .line 1012
    const-string/jumbo v20, "application/octet-stream"

    move-object/from16 v5, v20

    .line 1015
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    .line 1018
    const-wide/16 v20, 0x0

    move-wide/from16 v10, v20

    .line 1019
    const-wide/16 v20, -0x1

    move-wide/from16 v12, v20

    .line 1020
    move-object/from16 v20, v4

    const-string/jumbo v21, "range"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 1021
    move-object/from16 v3, v21

    if-eqz v20, :cond_9

    .line 1023
    move-object/from16 v20, v3

    const-string/jumbo v21, "bytes="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1025
    move-object/from16 v20, v3

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 1026
    move-object/from16 v3, v21

    const/16 v21, 0x2d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    move/from16 v14, v20

    .line 1028
    move/from16 v20, v14

    if-lez v20, :cond_9

    .line 1030
    move-object/from16 v20, v3

    const/16 v21, 0x0

    move/from16 v22, v14

    :try_start_1
    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 1031
    move-object/from16 v20, v3

    move/from16 v21, v14

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 1034
    .line 1039
    :cond_9
    :goto_1
    move-object/from16 v20, v8

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 1040
    move-object/from16 v20, v3

    if-eqz v20, :cond_17

    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_17

    .line 1042
    move-wide/from16 v20, v10

    move-wide/from16 v22, v14

    cmp-long v20, v20, v22

    if-ltz v20, :cond_14

    .line 1044
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "416 Requested Range Not Satisfiable"

    const-string/jumbo v24, "text/plain"

    const-string/jumbo v25, ""

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 1045
    move-object/from16 v7, v21

    const-string/jumbo v21, "Content-Range"

    const-string/jumbo v22, "bytes 0-0/"

    move-wide/from16 v23, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    move-object/from16 v20, v7

    const-string/jumbo v21, "ETag"

    move-object/from16 v22, v9

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1085
    :goto_2
    move-object/from16 v20, v7

    const-string/jumbo v21, "Accept-Ranges"

    const-string/jumbo v22, "bytes"

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    move-object/from16 v20, v7

    move-object/from16 v2, v20

    return-object v2

    .line 942
    :cond_a
    new-instance v20, Ljava/io/File;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v8

    const-string/jumbo v23, "index.htm"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 943
    new-instance v20, Ljava/io/File;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v5

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/index.htm"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v8, v20

    goto/16 :goto_0

    .line 945
    :cond_b
    move/from16 v20, v6

    if-eqz v20, :cond_13

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->canRead()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 947
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v5, v20

    .line 948
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const-string/jumbo v22, "<html><body><h1>Directory "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "</h1><br/>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 950
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 952
    move-object/from16 v20, v3

    const/16 v21, 0x0

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 953
    move-object/from16 v9, v21

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    .line 954
    move/from16 v10, v21

    if-ltz v20, :cond_c

    move/from16 v20, v10

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 955
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "<b><a href=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v3

    const/16 v22, 0x0

    move/from16 v23, v10

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\">..</a></b><br/>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 958
    :cond_c
    move-object/from16 v20, v5

    if-eqz v20, :cond_12

    .line 960
    const/16 v20, 0x0

    move/from16 v9, v20

    :goto_3
    move/from16 v20, v9

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 962
    new-instance v20, Ljava/io/File;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v8

    move-object/from16 v23, v5

    move/from16 v24, v9

    aget-object v23, v23, v24

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 963
    move-object/from16 v10, v21

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v20

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    .line 964
    move/from16 v11, v21

    if-eqz v20, :cond_d

    .line 966
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "<b>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 967
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    move/from16 v22, v9

    move-object/from16 v28, v20

    move-object/from16 v29, v21

    move/from16 v30, v22

    move-object/from16 v20, v29

    move/from16 v21, v30

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move/from16 v24, v30

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 970
    :cond_d
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "<a href=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v5

    move/from16 v23, v9

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\">"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v5

    move/from16 v22, v9

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "</a>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 974
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 976
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 977
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " &nbsp;<font size=2>("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 978
    move-wide/from16 v20, v12

    const-wide/16 v22, 0x400

    cmp-long v20, v20, v22

    if-gez v20, :cond_10

    .line 979
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-wide/from16 v21, v12

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 985
    :goto_4
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")</font>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 987
    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "<br/>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 988
    move/from16 v20, v11

    if-eqz v20, :cond_f

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "</b>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 960
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 980
    :cond_10
    move-wide/from16 v20, v12

    const-wide/32 v22, 0x100000

    cmp-long v20, v20, v22

    if-gez v20, :cond_11

    .line 981
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-wide/from16 v21, v12

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-wide/from16 v21, v12

    const-wide/16 v23, 0x400

    rem-long v21, v21, v23

    const-wide/16 v23, 0xa

    div-long v21, v21, v23

    const-wide/16 v23, 0x64

    rem-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " KB"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    goto/16 :goto_4

    .line 983
    :cond_11
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-wide/from16 v21, v12

    const-wide/32 v23, 0x100000

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-wide/from16 v21, v12

    const-wide/32 v23, 0x100000

    rem-long v21, v21, v23

    const-wide/16 v23, 0xa

    div-long v21, v21, v23

    const-wide/16 v23, 0x64

    rem-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " MB"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    goto/16 :goto_4

    .line 991
    :cond_12
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "</body></html>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 992
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "200 OK"

    const-string/jumbo v24, "text/html"

    move-object/from16 v25, v6

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 993
    goto/16 :goto_0

    .line 996
    :cond_13
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "403 Forbidden"

    const-string/jumbo v24, "text/plain"

    const-string/jumbo v25, "FORBIDDEN: No directory listing."

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v20

    goto/16 :goto_0

    :catch_0
    move-exception v20

    goto/16 :goto_1

    .line 1050
    :cond_14
    move-wide/from16 v20, v12

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_15

    .line 1051
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x1

    sub-long v20, v20, v22

    move-wide/from16 v12, v20

    .line 1052
    :cond_15
    move-wide/from16 v20, v12

    move-wide/from16 v22, v10

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v28, v20

    move-wide/from16 v20, v28

    move-wide/from16 v22, v28

    .line 1053
    move-wide/from16 v16, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_16

    const-wide/16 v20, 0x0

    move-wide/from16 v16, v20

    .line 1055
    :cond_16
    move-wide/from16 v20, v16

    move-wide/from16 v18, v20

    .line 1056
    :try_start_3
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$2;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    move-wide/from16 v24, v18

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$2;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/io/File;J)V

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 1059
    move-object/from16 v3, v21

    move-wide/from16 v21, v10

    invoke-virtual/range {v20 .. v22}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v20

    .line 1061
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "206 Partial Content"

    move-object/from16 v24, v5

    move-object/from16 v25, v3

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 1062
    move-object/from16 v7, v21

    const-string/jumbo v21, "Content-Length"

    move-wide/from16 v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    move-object/from16 v20, v7

    const-string/jumbo v21, "Content-Range"

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const-string/jumbo v24, "bytes "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v23, v10

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-wide/from16 v23, v12

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-wide/from16 v23, v14

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    move-object/from16 v20, v7

    const-string/jumbo v21, "ETag"

    move-object/from16 v22, v9

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    goto/16 :goto_2

    .line 1069
    :cond_17
    move-object/from16 v20, v9

    move-object/from16 v21, v4

    const-string/jumbo v22, "if-none-match"

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 1070
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "304 Not Modified"

    move-object/from16 v24, v5

    const-string/jumbo v25, ""

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v20

    goto/16 :goto_2

    .line 1073
    :cond_18
    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "200 OK"

    move-object/from16 v24, v5

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    move-object/from16 v27, v8

    invoke-direct/range {v26 .. v27}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 1074
    move-object/from16 v7, v21

    const-string/jumbo v21, "Content-Length"

    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    move-object/from16 v20, v7

    const-string/jumbo v21, "ETag"

    move-object/from16 v22, v9

    invoke-virtual/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1083
    :cond_19
    goto/16 :goto_2

    .line 1082
    :catch_1
    move-exception v20

    new-instance v20, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v2

    const-string/jumbo v23, "403 Forbidden"

    const-string/jumbo v24, "text/plain"

    const-string/jumbo v25, "FORBIDDEN: Reading file failed."

    invoke-direct/range {v21 .. v25}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v20

    goto/16 :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 270
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    .line 274
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0

    .line 274
    :catch_1
    move-exception v1

    goto :goto_0
.end method
