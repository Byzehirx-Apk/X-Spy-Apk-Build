.class public Lcom/bumptech/glide/load/resource/NullEncoder;
.super Ljava/lang/Object;
.source "NullEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullEncoder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/load/resource/NullEncoder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/NullEncoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/bumptech/glide/load/resource/NullEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullEncoder;

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    return-object v0
.end method
