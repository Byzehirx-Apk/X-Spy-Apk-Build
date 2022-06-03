.class final Lcom/bumptech/glide/load/model/AssetUriParser;
.super Ljava/lang/Object;
.source "AssetUriParser.java"


# static fields
.field private static final ASSET_PATH_SEGMENT:Ljava/lang/String; = "android_asset"

.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final ASSET_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "file:///android_asset/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/AssetUriParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static isAssetUri(Landroid/net/Uri;)Z
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "file"

    move-object v2, v0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android_asset"

    move-object v2, v0

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

.method public static toAssetPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "uri":Landroid/net/Uri;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "uri":Landroid/net/Uri;
    return-object v0
.end method
