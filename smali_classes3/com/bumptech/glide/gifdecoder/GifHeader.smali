.class public Lcom/bumptech/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# static fields
.field public static final NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST:I = -0x1

.field public static final NETSCAPE_LOOP_COUNT_FOREVER:I


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field frameCount:I

.field frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 19
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 20
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 23
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    .line 41
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    return v0
.end method

.method public getNumFrames()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeader;
    return v0
.end method
