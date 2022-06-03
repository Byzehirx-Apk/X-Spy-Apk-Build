.class public Lgnu/kawa/functions/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/FileUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "format":Ljava/lang/String;
    move-object v6, v0

    if-nez v6, :cond_0

    .line 19
    const-string/jumbo v6, "kawa~d.tmp"

    move-object v0, v6

    .line 20
    :cond_0
    move-object v6, v0

    const/16 v7, 0x7e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v1, v6

    .line 22
    .local v1, "tilde":I
    const/4 v6, 0x0

    move-object v4, v6

    .line 23
    .local v4, "directory":Ljava/io/File;
    move v6, v1

    if-gez v6, :cond_2

    .line 25
    move-object v6, v0

    move-object v2, v6

    .line 26
    .local v2, "prefix":Ljava/lang/String;
    const-string/jumbo v6, ".tmp"

    move-object v3, v6

    .line 33
    .local v3, "suffix":Ljava/lang/String;
    :goto_0
    move-object v6, v2

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v5, v6

    .line 34
    .local v5, "sep":I
    move v6, v5

    if-ltz v6, :cond_1

    .line 36
    new-instance v6, Ljava/io/File;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 37
    move-object v6, v2

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 40
    :cond_1
    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "format":Ljava/lang/String;
    return-object v0

    .line 30
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "suffix":Ljava/lang/String;
    .end local v5    # "sep":I
    .restart local v0    # "format":Ljava/lang/String;
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 31
    .restart local v2    # "prefix":Ljava/lang/String;
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "suffix":Ljava/lang/String;
    goto :goto_0
.end method
