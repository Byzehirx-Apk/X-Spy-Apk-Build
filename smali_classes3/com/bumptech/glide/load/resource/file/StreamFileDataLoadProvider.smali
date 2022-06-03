.class public Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1;,
        Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERROR_DECODER:Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/Encoder;
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
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;-><init>(Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1;)V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 26
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/model/StreamEncoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->encoder:Lcom/bumptech/glide/load/Encoder;

    .line 27
    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    invoke-static {}, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->get()Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    sget-object v1, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    return-object v0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->encoder:Lcom/bumptech/glide/load/Encoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
    return-object v0
.end method
