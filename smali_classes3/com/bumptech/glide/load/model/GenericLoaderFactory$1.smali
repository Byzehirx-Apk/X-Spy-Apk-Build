.class final Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;
.super Ljava/lang/Object;
.source "GenericLoaderFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/GenericLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    new-instance v4, Ljava/lang/NoSuchMethodError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "This should never be called!"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;
    const-string/jumbo v1, "NULL_MODEL_LOADER"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;
    return-object v0
.end method
