.class public Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final UNIT_TRANSCODER:Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->UNIT_TRANSCODER:Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TZ;>;"
        }
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->UNIT_TRANSCODER:Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    move-object v1, p1

    .local v1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    return-object v0
.end method
