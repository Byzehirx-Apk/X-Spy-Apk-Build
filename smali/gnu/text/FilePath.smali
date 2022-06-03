.class public Lgnu/text/FilePath;
.super Lgnu/text/Path;
.source "FilePath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable",
        "<",
        "Lgnu/text/FilePath;",
        ">;"
    }
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/Path;-><init>()V

    .line 31
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/FilePath;->file:Ljava/io/File;

    .line 32
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/text/FilePath;->path:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, p2

    .local v2, "path":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/text/Path;-><init>()V

    .line 37
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    .line 38
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/text/FilePath;->path:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "path":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/FilePath;

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v0

    check-cast v2, Lgnu/text/FilePath;

    move-object v0, v2

    .line 94
    .end local v0    # "path":Ljava/lang/Object;
    .local v1, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 75
    .end local v1    # "str":Ljava/lang/String;
    .restart local v0    # "path":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/URIPath;

    if-eqz v2, :cond_1

    .line 76
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    check-cast v4, Lgnu/text/URIPath;

    iget-object v4, v4, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 82
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/net/URI;

    if-eqz v2, :cond_2

    .line 83
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    check-cast v4, Ljava/net/URI;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 85
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/io/File;

    if-eqz v2, :cond_3

    .line 86
    move-object v2, v0

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 88
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_4

    .line 89
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 94
    .restart local v1    # "str":Ljava/lang/String;
    :goto_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 90
    .end local v1    # "str":Ljava/lang/String;
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 91
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_1

    .line 93
    .end local v1    # "str":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v1, v2

    .line 99
    .local v1, "path":Lgnu/text/FilePath;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x4

    move-object v6, v0

    const-string/jumbo v7, "filepath"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method private static toUri(Ljava/io/File;)Ljava/net/URI;
    .locals 10

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    move-object v0, v3

    .line 252
    .end local v0    # "file":Ljava/io/File;
    .local v1, "fname":Ljava/lang/String;
    .local v2, "fileSep":C
    :goto_0
    return-object v0

    .line 248
    .end local v1    # "fname":Ljava/lang/String;
    .end local v2    # "fileSep":C
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 249
    .restart local v1    # "fname":Ljava/lang/String;
    sget-char v3, Ljava/io/File;->separatorChar:C

    move v2, v3

    .line 250
    .restart local v2    # "fileSep":C
    move v3, v2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    .line 251
    move-object v3, v1

    move v4, v2

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 252
    :cond_1
    new-instance v3, Ljava/net/URI;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 254
    .end local v1    # "fname":Ljava/lang/String;
    .end local v2    # "fileSep":C
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 256
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v3, v1

    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static valueOf(Ljava/io/File;)Lgnu/text/FilePath;
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    new-instance v1, Lgnu/text/FilePath;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/text/FilePath;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .end local v0    # "file":Ljava/io/File;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/FilePath;
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v1, v2

    .line 63
    .local v1, "orig":Ljava/lang/String;
    new-instance v2, Lgnu/text/FilePath;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/text/FilePath;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/FilePath;)I
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, p1

    .local v1, "path":Lgnu/text/FilePath;
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/FilePath;->file:Ljava/io/File;

    move-object v3, v1

    iget-object v3, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/text/FilePath;
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/text/FilePath;

    invoke-virtual {v2, v3}, Lgnu/text/FilePath;->compareTo(Lgnu/text/FilePath;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/text/FilePath;
    return v0
.end method

.method public delete()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/text/FilePath;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/text/FilePath;->file:Ljava/io/File;

    move-object v3, v1

    check-cast v3, Lgnu/text/FilePath;

    iget-object v3, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/text/FilePath;
    return v0

    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 308
    .local v1, "canon":Ljava/io/File;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 314
    .end local v0    # "this":Lgnu/text/FilePath;
    :goto_0
    return-object v0

    .line 313
    .line 314
    .end local v1    # "canon":Ljava/io/File;
    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    :goto_1
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 311
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method public getContentLength()J
    .locals 8

    .prologue
    .line 143
    move-object v1, p0

    .local v1, "this":Lgnu/text/FilePath;
    move-object v4, v1

    iget-object v4, v4, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-wide v2, v4

    .line 144
    .local v2, "length":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, -0x1

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Lgnu/text/FilePath;
    return-wide v1

    .restart local v1    # "this":Lgnu/text/FilePath;
    :cond_0
    move-wide v4, v2

    goto :goto_0
.end method

.method public getLast()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0
.end method

.method public getLastModified()J
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-wide v0
.end method

.method public getParent()Lgnu/text/FilePath;
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 166
    .local v1, "parent":Ljava/io/File;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 167
    const/4 v2, 0x0

    move-object v0, v2

    .line 169
    .end local v0    # "this":Lgnu/text/FilePath;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getParent()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/FilePath;->getParent()Lgnu/text/FilePath;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/FilePath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "file"

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0

    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return v0
.end method

.method public isAbsolute()Z
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    sget-object v2, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return v0

    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/4 v3, 0x1

    move v0, v3

    .line 123
    .end local v0    # "this":Lgnu/text/FilePath;
    .local v1, "len":I
    .local v2, "last":C
    :goto_0
    return v0

    .line 113
    .end local v1    # "len":I
    .end local v2    # "last":C
    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/FilePath;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v3

    .line 116
    .restart local v1    # "len":I
    move v3, v1

    if-lez v3, :cond_2

    .line 118
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/FilePath;->path:Ljava/lang/String;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 119
    .restart local v2    # "last":C
    move v3, v2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    move v3, v2

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_2

    .line 120
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 123
    .end local v1    # "len":I
    .end local v2    # "last":C
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    new-instance v1, Ljava/io/FileInputStream;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    new-instance v1, Ljava/io/FileOutputStream;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 10

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, p1

    .local v1, "relative":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    move-object v5, v1

    invoke-static {v5}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v5

    move-object v0, v5

    .line 300
    .end local v0    # "this":Lgnu/text/FilePath;
    :goto_0
    return-object v0

    .line 288
    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 289
    .local v2, "rfile":Ljava/io/File;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    move-object v5, v2

    invoke-static {v5}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 291
    :cond_1
    sget-char v5, Ljava/io/File;->separatorChar:C

    move v3, v5

    .line 292
    .local v3, "sep":C
    move v5, v3

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    .line 293
    move-object v5, v1

    const/16 v6, 0x2f

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 296
    :cond_2
    move-object v5, v0

    sget-object v6, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne v5, v6, :cond_3

    .line 297
    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "user.dir"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 300
    .local v4, "nfile":Ljava/io/File;
    :goto_1
    move-object v5, v4

    invoke-static {v5}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 299
    .end local v4    # "nfile":Ljava/io/File;
    :cond_3
    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/text/FilePath;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/FilePath;->file:Ljava/io/File;

    :goto_2
    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v5

    .restart local v4    # "nfile":Ljava/io/File;
    goto :goto_1

    .end local v4    # "nfile":Ljava/io/File;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    goto :goto_2
.end method

.method public toFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->path:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/FilePath;
    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v2, v0

    sget-object v3, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne v2, v3, :cond_0

    .line 207
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lgnu/text/FilePath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v2

    move-object v0, v2

    .line 214
    .end local v0    # "this":Lgnu/text/FilePath;
    :goto_0
    return-object v0

    .line 208
    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/FilePath;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/FilePath;->getAbsolute()Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 214
    :cond_1
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 225
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-static {v2}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public toUri()Ljava/net/URI;
    .locals 3

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lgnu/text/FilePath;
    move-object v1, v0

    sget-object v2, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne v1, v2, :cond_0

    .line 264
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lgnu/text/FilePath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .line 265
    .end local v0    # "this":Lgnu/text/FilePath;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/text/FilePath;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-static {v1}, Lgnu/text/FilePath;->toUri(Ljava/io/File;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
