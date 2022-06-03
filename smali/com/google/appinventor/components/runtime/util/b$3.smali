.class final Lcom/google/appinventor/components/runtime/util/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 5

    .prologue
    .line 917
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/b$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/b$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Marker;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 920
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Cannot find default marker"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 921
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 917
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v2, v4

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 1925
    move-object v1, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Marker;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1926
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Lorg/osmdroid/views/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 917
    return-void
.end method
