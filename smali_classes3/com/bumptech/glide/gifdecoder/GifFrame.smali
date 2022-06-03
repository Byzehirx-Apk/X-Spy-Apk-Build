.class Lcom/bumptech/glide/gifdecoder/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# instance fields
.field bufferFrameStart:I

.field delay:I

.field dispose:I

.field ih:I

.field interlace:Z

.field iw:I

.field ix:I

.field iy:I

.field lct:[I

.field transIndex:I

.field transparency:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifFrame;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
