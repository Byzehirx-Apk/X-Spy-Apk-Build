.class Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileOpener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedOutputStream;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/io/FileOutputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    return-object v0
.end method
