.class Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileOpener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/io/File;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    return-object v0
.end method
