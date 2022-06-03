.class final Lcom/google/appinventor/components/runtime/util/b$5;
.super Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Lorg/osmdroid/views/overlay/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 6

    .prologue
    .line 1101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/b$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/b$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;-><init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$5;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1101
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v2, v4

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 2109
    move-object v1, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2110
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$5;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 1101
    return-void
.end method
