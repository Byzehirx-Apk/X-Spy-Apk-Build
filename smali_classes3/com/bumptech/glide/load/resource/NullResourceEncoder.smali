.class public Lcom/bumptech/glide/load/resource/NullResourceEncoder;
.super Ljava/lang/Object;
.source "NullResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullResourceEncoder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/NullResourceEncoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/NullResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/NullResourceEncoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    return-object v0
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    move-object v1, p1

    .local v1, "data":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    return v0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/engine/Resource;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    return-object v0
.end method
