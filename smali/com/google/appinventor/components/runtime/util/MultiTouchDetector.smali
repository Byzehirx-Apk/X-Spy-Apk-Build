.class public Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;,
        Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 12

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v3, v0

    move-object v4, v1

    move-object v2, v4

    move-object v1, v3

    .line 1038
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1039
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Canvas;

    .line 1040
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Canvas;->getContext()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;-><init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;-><init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Canvas;->registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)Lcom/google/appinventor/components/runtime/Canvas;
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v0, v1

    return-object v0
.end method
