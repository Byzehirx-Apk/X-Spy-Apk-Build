.class public Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private static final MINI_HEIGHT:I = 0x180

.field private static final MINI_WIDTH:I = 0x200

.field private static final TAG:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private final height:I

.field private inputStream:Ljava/io/InputStream;

.field private final mediaStoreUri:Landroid/net/Uri;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "mediaStoreUri":Landroid/net/Uri;
    move-object/from16 v3, p3

    .local v3, "defaultFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    sget-object v12, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    invoke-direct/range {v6 .. v12}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;II",
            "Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "mediaStoreUri":Landroid/net/Uri;
    move-object v3, p3

    .local v3, "defaultFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
    move v4, p4

    .local v4, "width":I
    move v5, p5

    .local v5, "height":I
    move-object v6, p6

    .local v6, "factory":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    .line 48
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    .line 49
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 50
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    .line 51
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    .line 52
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    .line 53
    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "x0":Landroid/net/Uri;
    move-object v1, v0

    invoke-static {v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Landroid/net/Uri;
    return v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "x0":Landroid/net/Uri;
    move-object v1, v0

    invoke-static {v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreVideo(Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Landroid/net/Uri;
    return v0
.end method

.method private static isMediaStoreUri(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "uri":Landroid/net/Uri;
    move-object v1, v0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "content"

    move-object v2, v0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "media"

    move-object v2, v0

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "uri":Landroid/net/Uri;
    return v0

    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMediaStoreVideo(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "uri":Landroid/net/Uri;
    move-object v1, v0

    invoke-static {v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "video"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "uri":Landroid/net/Uri;
    return v0

    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    move-object v1, p1

    .local v1, "fetcher":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    const/4 v4, 0x0

    move-object v2, v4

    .line 73
    .local v2, "result":Ljava/io/InputStream;
    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->open(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 78
    .line 80
    :cond_0
    :goto_0
    const/4 v4, -0x1

    move v3, v4

    .line 81
    .local v3, "orientation":I
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 82
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    move v3, v4

    .line 85
    :cond_1
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 86
    new-instance v4, Lcom/bumptech/glide/load/data/ExifOrientationStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/data/ExifOrientationStream;-><init>(Ljava/io/InputStream;I)V

    move-object v2, v4

    .line 88
    :cond_2
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    return-object v0

    .line 74
    .end local v3    # "orientation":I
    .restart local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 75
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "MediaStoreThumbFetcher"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const-string/jumbo v4, "MediaStoreThumbFetcher"

    const-string/jumbo v5, "Failed to find thumbnail file"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 100
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;->build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    move-result-object v3

    move-object v2, v3

    .line 59
    .local v2, "fetcher":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 60
    move-object v3, v0

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    .line 63
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 64
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    iput-object v4, v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    .line 67
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    return-object v0
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
    return-object v0
.end method
