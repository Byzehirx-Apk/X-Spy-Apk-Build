.class final Lcom/google/appinventor/components/runtime/GoogleMap$5;
.super Lcom/google/android/gms/maps/model/UrlTileProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;->addTileOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;)V
    .locals 5

    .prologue
    .line 1879
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleMap$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;

    move-object v2, v0

    const/16 v3, 0x100

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/maps/model/UrlTileProvider;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getTileUrl(III)Ljava/net/URL;
    .locals 10

    .prologue
    .line 1884
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const-string/jumbo v4, "http://my.image.server/images/%d/%d/%d.png"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1886
    move v4, v3

    move v9, v4

    move v4, v9

    move v5, v9

    .line 2907
    move v2, v5

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    const/4 v4, 0x1

    .line 1886
    :goto_0
    if-nez v4, :cond_1

    .line 1887
    const/4 v4, 0x0

    move-object v0, v4

    .line 1891
    :goto_1
    return-object v0

    .line 2907
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1891
    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_1

    .line 1892
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1893
    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method
