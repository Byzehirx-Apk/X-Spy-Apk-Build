.class public Lcom/bumptech/glide/load/model/ImageVideoWrapper;
.super Ljava/lang/Object;
.source "ImageVideoWrapper.java"


# instance fields
.field private final fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final streamData:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move-object v1, p1

    .local v1, "streamData":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    .line 16
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 17
    return-void
.end method


# virtual methods
.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    return-object v0
.end method
