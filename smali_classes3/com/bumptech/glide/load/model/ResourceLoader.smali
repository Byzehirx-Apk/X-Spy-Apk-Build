.class public Lcom/bumptech/glide/load/model/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceLoader"


# instance fields
.field private final resources:Landroid/content/res/Resources;

.field private final uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ResourceLoader;, "Lcom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uriLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/model/ResourceLoader;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ResourceLoader;, "Lcom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    move-object v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "uriLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ResourceLoader;->resources:Landroid/content/res/Resources;

    .line 29
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ResourceLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 30
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Ljava/lang/Integer;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ResourceLoader;, "Lcom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Integer;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    const/4 v6, 0x0

    move-object v4, v6

    .line 36
    .local v4, "uri":Landroid/net/Uri;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/model/ResourceLoader;->resources:Landroid/content/res/Resources;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/model/ResourceLoader;->resources:Landroid/content/res/Resources;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/model/ResourceLoader;->resources:Landroid/content/res/Resources;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 44
    .line 46
    :cond_0
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 47
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ResourceLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v7, v4

    move v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v6

    move-object v0, v6

    .line 49
    .end local v0    # "this":Lcom/bumptech/glide/load/model/ResourceLoader;, "Lcom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    :goto_1
    return-object v0

    .line 40
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/ResourceLoader;, "Lcom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 41
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "ResourceLoader"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    const-string/jumbo v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received invalid resource id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_0

    .line 49
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ResourceLoader;, "Lcom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/ResourceLoader;->getResourceFetcher(Ljava/lang/Integer;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ResourceLoader;, "Lcom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    return-object v0
.end method
