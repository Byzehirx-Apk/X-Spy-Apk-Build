.class Lcom/bumptech/glide/ListPreloader$1;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/ListPreloader;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/ListPreloader;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/ListPreloader;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$1;, "Lcom/bumptech/glide/ListPreloader.1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/ListPreloader$1;->this$0:Lcom/bumptech/glide/ListPreloader;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreloadItems(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$1;, "Lcom/bumptech/glide/ListPreloader.1;"
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/ListPreloader$1;->this$0:Lcom/bumptech/glide/ListPreloader;

    move v3, v1

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/ListPreloader;->getItems(II)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/ListPreloader$1;, "Lcom/bumptech/glide/ListPreloader.1;"
    return-object v0
.end method

.method public getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/GenericRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$1;, "Lcom/bumptech/glide/ListPreloader.1;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/ListPreloader$1;->this$0:Lcom/bumptech/glide/ListPreloader;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/ListPreloader;->getRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/ListPreloader$1;, "Lcom/bumptech/glide/ListPreloader.1;"
    return-object v0
.end method
