.class public Lgnu/text/ResourceStreamHandler;
.super Ljava/net/URLStreamHandler;
.source "ResourceStreamHandler.java"


# static fields
.field public static final CLASS_RESOURCE_URI_PREFIX:Ljava/lang/String; = "class-resource:/"

.field public static final CLASS_RESOURCE_URI_PREFIX_LENGTH:I = 0x10


# instance fields
.field cloader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/text/ResourceStreamHandler;
    move-object v1, p1

    .local v1, "cloader":Ljava/lang/ClassLoader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/net/URLStreamHandler;-><init>()V

    .line 33
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/ResourceStreamHandler;->cloader:Ljava/lang/ClassLoader;

    .line 34
    return-void
.end method

.method public static makeURL(Ljava/lang/Class;)Ljava/net/URL;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "clas":Ljava/lang/Class;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 40
    .local v1, "cname":Ljava/lang/String;
    move-object v6, v1

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v2, v6

    .line 42
    .local v2, "dot":I
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v6

    .line 46
    .local v3, "sbuf":Ljava/lang/StringBuilder;
    move-object v6, v3

    const-string/jumbo v7, "class-resource:/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 47
    move v6, v2

    if-ltz v6, :cond_0

    .line 49
    move-object v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 50
    move-object v6, v3

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 51
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 53
    :cond_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 54
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 55
    .local v4, "str":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v5, v6

    .line 56
    .local v5, "loader":Ljava/lang/ClassLoader;
    new-instance v6, Ljava/net/URL;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v4

    new-instance v10, Lgnu/text/ResourceStreamHandler;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    invoke-direct {v11, v12}, Lgnu/text/ResourceStreamHandler;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v7, v8, v9, v10}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    move-object v0, v6

    .end local v0    # "clas":Ljava/lang/Class;
    return-object v0
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/text/ResourceStreamHandler;
    move-object v1, p1

    .local v1, "u":Ljava/net/URL;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 62
    .local v2, "ustr":Ljava/lang/String;
    move-object v6, v2

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 63
    .local v3, "rstr":Ljava/lang/String;
    move-object v6, v3

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v4, v6

    .line 64
    .local v4, "sl":I
    move v6, v4

    if-lez v6, :cond_0

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 66
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/ResourceStreamHandler;->cloader:Ljava/lang/ClassLoader;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    move-object v5, v6

    .line 67
    .local v5, "url":Ljava/net/URL;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 68
    new-instance v6, Ljava/io/FileNotFoundException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/text/ResourceStreamHandler;
    return-object v0
.end method
