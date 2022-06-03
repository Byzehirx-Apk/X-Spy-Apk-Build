.class final Lcom/google/appinventor/components/runtime/util/b$b;
.super Lorg/osmdroid/views/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Landroid/content/Context;)V
    .locals 11

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/b$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    .line 265
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    new-instance v6, Lcom/google/appinventor/components/runtime/util/b$c;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/b$c;-><init>(Lcom/google/appinventor/components/runtime/util/b;B)V

    invoke-direct {v3, v4, v5, v6}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    .line 266
    return-void
.end method


# virtual methods
.method public final onDetach()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 11

    .prologue
    .line 270
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/b$b;->getScrollX()I

    move-result v6

    move v7, v3

    move v8, v1

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/b$b;->getScrollY()I

    move-result v7

    move v8, v4

    move v9, v2

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/b$b;->scrollTo(II)V

    .line 271
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lorg/osmdroid/views/MapView;->onSizeChanged(IIII)V

    .line 272
    return-void
.end method
