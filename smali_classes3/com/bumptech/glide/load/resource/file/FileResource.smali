.class public Lcom/bumptech/glide/load/resource/file/FileResource;
.super Lcom/bumptech/glide/load/resource/SimpleResource;
.source "FileResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/SimpleResource",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/FileResource;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/SimpleResource;-><init>(Ljava/lang/Object;)V

    .line 13
    return-void
.end method
