.class public Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
.super Ljava/lang/Object;
.source "ImageVideoWrapperEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final streamEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Encoder;Lcom/bumptech/glide/load/Encoder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    move-object v1, p1

    .local v1, "streamEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
    move-object v2, p2

    .local v2, "fileDescriptorEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Landroid/os/ParcelFileDescriptor;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 23
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 24
    return-void
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    move-object v1, p1

    .local v1, "data":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 29
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    .line 31
    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->encode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 38
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    .line 40
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
    return-object v0
.end method
