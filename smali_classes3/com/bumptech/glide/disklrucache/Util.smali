.class final Lcom/bumptech/glide/disklrucache/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final US_ASCII:Ljava/nio/charset/Charset;

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 29
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/Util;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "closeable":Ljava/io/Closeable;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 70
    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 72
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    move-object v2, v1

    throw v2

    .line 73
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method static deleteContents(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "dir":Ljava/io/File;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move-object v1, v6

    .line 54
    .local v1, "files":[Ljava/io/File;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 55
    new-instance v6, Ljava/io/IOException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "not a readable directory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_0
    move-object v6, v1

    move-object v2, v6

    .local v2, "arr$":[Ljava/io/File;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 58
    .local v5, "file":Ljava/io/File;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    move-object v6, v5

    invoke-static {v6}, Lcom/bumptech/glide/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 61
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 62
    new-instance v6, Ljava/io/IOException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to delete file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    .end local v5    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v6, Ljava/io/StringWriter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v6

    .line 37
    .local v1, "writer":Ljava/io/StringWriter;
    const/16 v6, 0x400

    new-array v6, v6, [C

    move-object v2, v6

    .line 39
    .local v2, "buffer":[C
    :goto_0
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/Reader;->read([C)I

    move-result v6

    move v10, v6

    move v6, v10

    move v7, v10

    move v3, v7

    .local v3, "count":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 40
    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 42
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 44
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    move-object v6, v4

    move-object v0, v6

    .end local v0    # "reader":Ljava/io/Reader;
    return-object v0

    .end local v1    # "writer":Ljava/io/StringWriter;
    .end local v2    # "buffer":[C
    .end local v3    # "count":I
    .restart local v0    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    move-object v6, v5

    throw v6
.end method
