.class Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/HttpUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpUrlConnectionFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/data/HttpUrlFetcher$1;)V
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/data/HttpUrlFetcher$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;
    move-object v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;
    return-object v0
.end method
