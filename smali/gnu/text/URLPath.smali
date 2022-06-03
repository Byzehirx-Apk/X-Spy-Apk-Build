.class public Lgnu/text/URLPath;
.super Lgnu/text/URIPath;
.source "URLPath.java"


# instance fields
.field final url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/text/URLPath;->toUri(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    .line 19
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/URLPath;->url:Ljava/net/URL;

    .line 20
    return-void
.end method

.method public static classResourcePath(Ljava/lang/Class;)Lgnu/text/URLPath;
    .locals 9

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "clas":Ljava/lang/Class;
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Lgnu/text/ResourceStreamHandler;->makeURL(Ljava/lang/Class;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v1, v4

    .line 161
    .line 166
    .line 167
    .local v1, "url":Ljava/net/URL;
    :goto_0
    move-object v4, v1

    invoke-static {v4}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "clas":Ljava/lang/Class;
    return-object v0

    .line 153
    .end local v1    # "url":Ljava/net/URL;
    .restart local v0    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 159
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 160
    .local v3, "classFileName":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v1, v4

    .restart local v1    # "url":Ljava/net/URL;
    goto :goto_0

    .line 163
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .end local v3    # "classFileName":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 165
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v4, v2

    invoke-static {v4}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static getContentLength(Ljava/net/URL;)I
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 62
    .end local v0    # "url":Ljava/net/URL;
    :goto_0
    return v0

    .line 60
    .restart local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 62
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public static getLastModified(Ljava/net/URL;)J
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 45
    .end local v0    # "url":Ljava/net/URL;
    :goto_0
    return-wide v0

    .line 43
    .restart local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 45
    .local v1, "ex":Ljava/lang/Throwable;
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static openInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "url":Ljava/net/URL;
    return-object v0
.end method

.method public static openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 123
    .local v1, "str":Ljava/lang/String;
    move-object v3, v1

    const-string/jumbo v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/net/URI;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 135
    .end local v0    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 127
    .restart local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 132
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v2, v3

    .line 133
    .local v2, "conn":Ljava/net/URLConnection;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 134
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 135
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static toUri(Ljava/net/URL;)Ljava/net/URI;
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "url":Ljava/net/URL;
    return-object v0

    .line 82
    .restart local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 84
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-static {v2}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static valueOf(Ljava/net/URL;)Lgnu/text/URLPath;
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    new-instance v1, Lgnu/text/URLPath;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/text/URLPath;-><init>(Ljava/net/URL;)V

    move-object v0, v1

    .end local v0    # "url":Ljava/net/URL;
    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v1}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v1

    int-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return-wide v0
.end method

.method public getLastModified()J
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v1}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return-wide v0
.end method

.method public isAbsolute()Z
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v1}, Lgnu/text/URLPath;->openInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v1}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, p1

    .local v1, "relative":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/URLPath;->url:Ljava/net/URL;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/text/URLPath;
    return-object v0

    .line 101
    .restart local v0    # "this":Lgnu/text/URLPath;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 103
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v3, v2

    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public toURIString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URLPath;->url:Ljava/net/URL;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/text/URLPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v1}, Lgnu/text/URLPath;->toUri(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URLPath;
    return-object v0
.end method
