.class public Lcom/bumptech/glide/load/resource/NullDecoder;
.super Ljava/lang/Object;
.source "NullDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final NULL_DECODER:Lcom/bumptech/glide/load/resource/NullDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullDecoder",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/load/resource/NullDecoder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/NullDecoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullDecoder;->NULL_DECODER:Lcom/bumptech/glide/load/resource/NullDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullDecoder;, "Lcom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/NullDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/NullDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/NullDecoder;->NULL_DECODER:Lcom/bumptech/glide/load/resource/NullDecoder;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullDecoder;, "Lcom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/NullDecoder;, "Lcom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullDecoder;, "Lcom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/NullDecoder;, "Lcom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    return-object v0
.end method
