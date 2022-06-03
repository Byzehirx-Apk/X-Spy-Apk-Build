.class public Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# instance fields
.field private final fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    move-object v1, p1

    .local v1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    move-object v1, p1

    .local v1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    move-object v2, p2

    .local v2, "fileOpener":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 30
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    .line 31
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    move-object v1, p1

    .local v1, "source":Ljava/io/File;
    move v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    const/4 v9, 0x0

    move-object v4, v9

    .line 36
    .local v4, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    move-object v5, v9

    .line 38
    .local v5, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;->open(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v9

    move-object v4, v9

    .line 39
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v10, v4

    move v11, v2

    move v12, v3

    invoke-interface {v9, v10, v11, v12}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move-object v5, v9

    .line 41
    move-object v9, v4

    if-eqz v9, :cond_0

    .line 43
    move-object v9, v4

    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 49
    :cond_0
    :goto_0
    move-object v9, v5

    move-object v0, v9

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    return-object v0

    .line 44
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 46
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v4

    if-eqz v9, :cond_1

    .line 43
    move-object v9, v4

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    :cond_1
    :goto_1
    move-object v9, v7

    throw v9

    .line 44
    :catch_1
    move-exception v9

    move-object v8, v9

    goto :goto_1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/io/File;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    return-object v0
.end method
