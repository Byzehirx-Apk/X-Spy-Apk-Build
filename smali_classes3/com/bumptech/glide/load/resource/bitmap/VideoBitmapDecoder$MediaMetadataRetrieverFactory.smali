.class Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaMetadataRetrieverFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaMetadataRetriever;
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    return-object v0
.end method
