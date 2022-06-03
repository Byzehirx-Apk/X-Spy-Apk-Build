.class final Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;B)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;-><init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onDoubleClick()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    const/4 v7, 0x0

    move v5, v7

    .line 62
    move-object v7, v2

    :try_start_0
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 63
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    move v10, v7

    move v7, v10

    move v8, v10

    .line 64
    move v1, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 65
    move v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 66
    move v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 67
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeRight()V

    .line 71
    :goto_0
    const/4 v7, 0x1

    move v5, v7

    .line 85
    :goto_1
    move v7, v5

    move v0, v7

    return v0

    .line 69
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeLeft()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 83
    const-string/jumbo v7, "OnSwipeTouchListener"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 74
    :cond_1
    move v7, v6

    :try_start_1
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 75
    move v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 76
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeBottom()V

    .line 80
    :goto_2
    const/4 v7, 0x1

    move v5, v7

    .line 84
    :cond_2
    goto :goto_1

    .line 78
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeTop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onLongClick()V

    .line 55
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 56
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onClick()V

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method
