.class public abstract Lgnu/kawa/servlet/HttpRequestContext;
.super Ljava/lang/Object;
.source "HttpRequestContext.java"


# static fields
.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_OK:I = 0xc8

.field static final STATUS_SENT:I = -0x3e7

.field public static importServletDefinitions:I

.field protected static final instance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/kawa/servlet/HttpRequestContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field consumer:Lgnu/kawa/servlet/ServletPrinter;

.field localPath:Ljava/lang/String;

.field scriptPath:Ljava/lang/String;

.field public statusCode:I

.field public statusReasonPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v1, v0

    const/16 v2, 0xc8

    iput v2, v1, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 25
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/kawa/servlet/HttpRequestContext;->statusReasonPhrase:Ljava/lang/String;

    .line 141
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lgnu/kawa/servlet/HttpRequestContext;->scriptPath:Ljava/lang/String;

    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lgnu/kawa/servlet/HttpRequestContext;->localPath:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lgnu/kawa/servlet/HttpRequestContext;
    .locals 5

    .prologue
    .line 39
    sget-object v1, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/servlet/HttpRequestContext;

    move-object v0, v1

    .line 40
    .local v0, "hctx":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "can only be called by http-server"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "hctx":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "command":Ljava/lang/String;
    sget-object v2, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/kawa/servlet/HttpRequestContext;

    move-object v1, v2

    .line 48
    .local v1, "hctx":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " can only be called within http-server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "command":Ljava/lang/String;
    return-object v0
.end method

.method public static setInstance(Lgnu/kawa/servlet/HttpRequestContext;)V
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "ctx":Lgnu/kawa/servlet/HttpRequestContext;
    sget-object v1, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public getConsumer()Lgnu/kawa/servlet/ServletPrinter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpRequestContext;->consumer:Lgnu/kawa/servlet/ServletPrinter;

    if-nez v1, :cond_0

    .line 104
    move-object v1, v0

    new-instance v2, Lgnu/kawa/servlet/ServletPrinter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Lgnu/kawa/servlet/ServletPrinter;-><init>(Lgnu/kawa/servlet/HttpRequestContext;I)V

    iput-object v2, v1, Lgnu/kawa/servlet/HttpRequestContext;->consumer:Lgnu/kawa/servlet/ServletPrinter;

    .line 105
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpRequestContext;->consumer:Lgnu/kawa/servlet/ServletPrinter;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public abstract getContextPath()Ljava/lang/String;
.end method

.method public getLocalHost()Ljava/net/InetAddress;
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0

    .line 176
    .restart local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 178
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getLocalIPAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpRequestContext;->localPath:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public abstract getLocalPort()I
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 6

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    new-instance v1, Ljava/net/InetSocketAddress;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public abstract getPathTranslated()Ljava/lang/String;
.end method

.method public abstract getQueryString()Ljava/lang/String;
.end method

.method public abstract getRemoteHost()Ljava/net/InetAddress;
.end method

.method public abstract getRemoteIPAddress()Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    new-instance v1, Ljava/net/InetSocketAddress;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/servlet/HttpRequestContext;->getRemoteHost()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/servlet/HttpRequestContext;->getRemotePort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public getRequestBodyChars()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v1, v8

    .line 69
    .local v1, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/InputStreamReader;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v8

    .line 70
    .local v2, "reader":Ljava/io/Reader;
    const/16 v8, 0x400

    move v3, v8

    .line 71
    .local v3, "buflen":I
    move v8, v3

    new-array v8, v8, [C

    move-object v4, v8

    .line 72
    .local v4, "buf":[C
    const/4 v8, 0x0

    move v5, v8

    .line 75
    .local v5, "pos":I
    :goto_0
    move v8, v3

    move v9, v5

    sub-int/2addr v8, v9

    move v6, v8

    .line 76
    .local v6, "avail":I
    move v8, v6

    if-gtz v8, :cond_0

    .line 78
    const/4 v8, 0x2

    move v9, v3

    mul-int/2addr v8, v9

    new-array v8, v8, [C

    move-object v7, v8

    .line 79
    .local v7, "tmp":[C
    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move v12, v3

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    move-object v8, v7

    move-object v4, v8

    .line 81
    move v8, v3

    move v9, v3

    add-int/2addr v8, v9

    move v3, v8

    .line 83
    .end local v7    # "tmp":[C
    :cond_0
    move-object v8, v2

    move-object v9, v4

    move v10, v5

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Reader;->read([CII)I

    move-result v8

    move v7, v8

    .line 84
    .local v7, "count":I
    move v8, v7

    if-gez v8, :cond_1

    .line 85
    .line 88
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    .line 89
    new-instance v8, Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    const/4 v11, 0x0

    move v12, v5

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    move-object v6, v8

    .line 90
    .local v6, "str":Ljava/lang/String;
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0

    .line 86
    .restart local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    .local v6, "avail":I
    :cond_1
    move v8, v5

    move v9, v7

    add-int/2addr v8, v9

    move v5, v8

    .line 87
    goto :goto_0
.end method

.method public abstract getRequestHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRequestHeaders(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRequestMethod()Ljava/lang/String;
.end method

.method public getRequestParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestParameters()Ljava/util/Map;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    .line 117
    .local v2, "p":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    :cond_1
    move-object v3, v2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getRequestParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public getRequestPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public getRequestPort()Lgnu/mapping/InPort;
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    new-instance v1, Lgnu/mapping/InPort;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public getRequestScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    const-string/jumbo v1, "http"

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public abstract getRequestStream()Ljava/io/InputStream;
.end method

.method public abstract getRequestURI()Ljava/net/URI;
.end method

.method public getRequestURLBuffer()Ljava/lang/StringBuffer;
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 196
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 197
    move-object v3, v1

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 198
    move-object v3, v0

    const-string/jumbo v4, "Host"

    invoke-virtual {v3, v4}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 199
    .local v2, "host":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 200
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 207
    :goto_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 208
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0

    .line 203
    .restart local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 204
    move-object v3, v1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 205
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_0
.end method

.method public abstract getResourceURL(Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract getResponseStream()Ljava/io/OutputStream;
.end method

.method public getScriptPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpRequestContext;->scriptPath:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    return-object v0
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected normalizeToContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 228
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 231
    :goto_0
    move-object v2, v1

    const-string/jumbo v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 233
    move-object v2, v1

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 234
    move-object v2, v1

    const-string/jumbo v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const/4 v2, 0x0

    move-object v0, v2

    .line 237
    .end local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    :goto_1
    return-object v0

    .line 230
    .restart local v0    # "this":Lgnu/kawa/servlet/HttpRequestContext;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/servlet/HttpRequestContext;->getScriptPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 237
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_1
.end method

.method public abstract reset(Z)Z
.end method

.method public sendNotFound(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v2, p1

    .local v2, "path":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The requested URL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " was not found on this server.\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 266
    .local v3, "msg":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object v4, v7

    .line 267
    .local v4, "bmsg":[B
    move-object v7, v1

    const/16 v8, 0x194

    const/4 v9, 0x0

    move-object v10, v4

    array-length v10, v10

    int-to-long v10, v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 268
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object v7

    move-object v5, v7

    .line 271
    .local v5, "out":Ljava/io/OutputStream;
    move-object v7, v5

    move-object v8, v4

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .line 277
    return-void

    .line 273
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 275
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public abstract sendResponseHeaders(ILjava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "Content-Type"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/servlet/HttpRequestContext;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public abstract setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setScriptAndLocalPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpRequestContext;
    move-object v1, p1

    .local v1, "scriptPath":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localPath":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/servlet/HttpRequestContext;->scriptPath:Ljava/lang/String;

    .line 145
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/servlet/HttpRequestContext;->localPath:Ljava/lang/String;

    .line 146
    return-void
.end method
