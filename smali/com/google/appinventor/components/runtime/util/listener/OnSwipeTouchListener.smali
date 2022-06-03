.class public Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/GestureDetector;

.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v2, v0

    const-string/jumbo v3, "OnSwipeTouchListener"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->LOG_TAG:Ljava/lang/String;

    .line 22
    move-object v2, v0

    new-instance v3, Landroid/view/GestureDetector;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    new-instance v6, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;-><init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;B)V

    invoke-direct {v4, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/GestureDetector;

    .line 23
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onDoubleClick()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onLongClick()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onSwipeBottom()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onSwipeLeft()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onSwipeRight()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onSwipeTop()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/GestureDetector;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v0, v3

    return v0
.end method
