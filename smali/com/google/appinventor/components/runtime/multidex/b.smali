.class final Lcom/google/appinventor/components/runtime/multidex/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/multidex/b$a;
    }
.end annotation


# direct methods
.method static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/io/File;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    new-instance v4, Ljava/io/RandomAccessFile;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string/jumbo v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 57
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/multidex/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/RandomAccessFile;)Lcom/google/appinventor/components/runtime/multidex/b$a;

    move-result-object v4

    move-object v1, v4

    .line 59
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/multidex/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/RandomAccessFile;Lcom/google/appinventor/components/runtime/multidex/b$a;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    move-wide v2, v4

    .line 61
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    move-wide v4, v2

    move-wide v0, v4

    return-wide v0

    .line 61
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 62
    move-object v4, v1

    throw v4
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/RandomAccessFile;Lcom/google/appinventor/components/runtime/multidex/b$a;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/util/zip/CRC32;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    move-object v2, v6

    .line 109
    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/multidex/b$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:J

    move-wide v3, v6

    .line 110
    move-object v6, v0

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/multidex/b$a;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 111
    const-wide/16 v6, 0x4000

    move-wide v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    move v1, v6

    .line 112
    const/16 v6, 0x4000

    new-array v6, v6, [B

    move-object v5, v6

    .line 113
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move v9, v1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    move v1, v6

    .line 114
    :goto_0
    move v6, v1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 115
    move-object v6, v2

    move-object v7, v5

    const/4 v8, 0x0

    move v9, v1

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/zip/CRC32;->update([BII)V

    .line 116
    move-wide v6, v3

    move v8, v1

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v10, v6

    move-wide v6, v10

    move-wide v8, v10

    .line 117
    move-wide v3, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 120
    const-wide/16 v6, 0x4000

    move-wide v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    move v1, v6

    .line 121
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move v9, v1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    move v1, v6

    goto :goto_0

    .line 123
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    move-wide v0, v6

    return-wide v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/RandomAccessFile;)Lcom/google/appinventor/components/runtime/multidex/b$a;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x16

    sub-long/2addr v6, v8

    move-wide v11, v6

    move-wide v6, v11

    move-wide v8, v11

    .line 69
    move-wide v1, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 70
    new-instance v6, Ljava/util/zip/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "File too short to be a zip file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    :cond_0
    move-wide v6, v1

    const-wide/32 v8, 0x10000

    sub-long/2addr v6, v8

    move-wide v11, v6

    move-wide v6, v11

    move-wide v8, v11

    .line 74
    move-wide v3, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 75
    const-wide/16 v6, 0x0

    move-wide v3, v6

    .line 78
    :cond_1
    const v6, 0x6054b50

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    move v5, v6

    .line 80
    :cond_2
    move-object v6, v0

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    move v7, v5

    if-eq v6, v7, :cond_3

    .line 85
    move-wide v6, v1

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-wide v11, v6

    move-wide v6, v11

    move-wide v8, v11

    .line 86
    move-wide v1, v8

    move-wide v8, v3

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 87
    new-instance v6, Ljava/util/zip/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "End Of Central Directory signature not found"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    :cond_3
    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v6

    .line 96
    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v6

    .line 97
    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v6

    .line 98
    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v6

    .line 99
    new-instance v6, Lcom/google/appinventor/components/runtime/multidex/b$a;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/multidex/b$a;-><init>()V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 100
    move-object v1, v7

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/multidex/b$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:J

    .line 101
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, v6, Lcom/google/appinventor/components/runtime/multidex/b$a;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:J

    .line 102
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method
