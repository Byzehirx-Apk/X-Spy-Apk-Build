.class public Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnScaleGestureListener"
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .prologue
    .line 15
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)Lcom/google/appinventor/components/runtime/Canvas;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Canvas;->Scale(D)V

    .line 16
    const/4 v3, 0x1

    move v1, v3

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
