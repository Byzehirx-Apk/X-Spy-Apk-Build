.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_ORIGIN_AT_CENTER:Z


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field protected form:Lcom/google/appinventor/components/runtime/Form;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field protected initialized:Z

.field protected interval:I

.field protected originAtCenter:Z

.field protected speed:F

.field protected userHeading:D

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected visible:Z

.field protected xCenter:D

.field protected xLeft:D

.field protected yCenter:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    new-instance v4, Landroid/os/Handler;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    .line 145
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .locals 11

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 60
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 65
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 105
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    .line 108
    move-object v3, v1

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/Canvas;

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "Sprite constructor called with container "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_0
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/appinventor/components/runtime/Canvas;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 112
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 115
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    .line 118
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const/4 v7, 0x1

    const/16 v8, 0x64

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 120
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 123
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 124
    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 125
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 126
    move-object v3, v0

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    .line 127
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 128
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    .line 129
    move-object v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 131
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 132
    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D
    .locals 9

    .prologue
    .line 331
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    add-double/2addr v4, v6

    move-wide v1, v4

    return-wide v1
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)V
    .locals 11

    .prologue
    .line 341
    move-object v0, p0

    move-wide v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v5, :cond_0

    .line 342
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 343
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-wide v7, v1

    move-wide v3, v7

    move-object v1, v6

    .line 1335
    move-wide v6, v3

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-double v8, v8

    sub-double/2addr v6, v8

    .line 343
    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 346
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-wide v7, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 348
    goto :goto_0
.end method

.method private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Z
    .locals 6

    .prologue
    .line 826
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    move v4, v1

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 13

    .prologue
    .line 912
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v8

    move-object v2, v8

    .line 913
    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v8

    move-object v3, v8

    .line 914
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 915
    const/4 v8, 0x0

    move v0, v8

    .line 929
    :goto_0
    return v0

    .line 922
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v8

    move-wide v4, v8

    :goto_1
    move-wide v8, v4

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    .line 923
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v8

    move-wide v6, v8

    :goto_2
    move-wide v8, v6

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_2

    .line 924
    move-object v8, v0

    move-wide v9, v4

    move-wide v11, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v1

    move-wide v9, v4

    move-wide v11, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 925
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 923
    :cond_1
    move-wide v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    move-wide v6, v8

    goto :goto_2

    .line 922
    :cond_2
    move-wide v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    move-wide v4, v8

    goto :goto_1

    .line 929
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Z
    .locals 6

    .prologue
    .line 830
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D
    .locals 9

    .prologue
    .line 302
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    add-double/2addr v4, v6

    move-wide v1, v4

    return-wide v1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)V
    .locals 11

    .prologue
    .line 312
    move-object v0, p0

    move-wide v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v5, :cond_0

    .line 313
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 314
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-wide v7, v1

    move-wide v3, v7

    move-object v1, v6

    .line 1306
    move-wide v6, v3

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-double v8, v8

    sub-double/2addr v6, v8

    .line 314
    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 317
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-wide v7, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 319
    goto :goto_0
.end method

.method private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()Z
    .locals 6

    .prologue
    .line 822
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)Z
    .locals 6

    .prologue
    .line 834
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    move v4, v1

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public Bounce(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes the %type% bounce, as if off a wall. For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .prologue
    .line 600
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 603
    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double/2addr v4, v6

    move-wide v9, v4

    move-wide v4, v9

    move-wide v6, v9

    .line 606
    move-wide v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 607
    move-wide v4, v2

    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr v4, v6

    move-wide v2, v4

    .line 612
    :cond_0
    move v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move-wide v4, v2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_2

    move-wide v4, v2

    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_2

    :cond_1
    move v4, v1

    const/4 v5, -0x3

    if-ne v4, v5, :cond_3

    move-wide v4, v2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    move-wide v4, v2

    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 616
    :cond_2
    move-object v4, v0

    const-wide v5, 0x4066800000000000L    # 180.0

    move-wide v7, v2

    sub-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 630
    :goto_0
    return-void

    .line 617
    :cond_3
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    move-wide v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_5

    :cond_4
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    move-wide v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 620
    :cond_5
    move-object v4, v0

    const-wide v5, 0x4076800000000000L    # 360.0

    move-wide v7, v2

    sub-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 621
    :cond_6
    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    move-wide v4, v2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_a

    :cond_7
    move v4, v1

    const/4 v5, -0x4

    if-ne v4, v5, :cond_8

    move-wide v4, v2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    move-wide v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_a

    :cond_8
    move v4, v1

    const/4 v5, -0x2

    if-ne v4, v5, :cond_9

    move-wide v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_9

    move-wide v4, v2

    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_a

    :cond_9
    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    move-wide v4, v2

    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_b

    .line 628
    :cond_a
    move-object v4, v0

    move-wide v5, v2

    const-wide v7, 0x4066800000000000L    # 180.0

    add-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 630
    :cond_b
    goto/16 :goto_0
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 429
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string/jumbo v4, "CollidedWith"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :cond_0
    return-void
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates whether a collision has been registered between this %type% and the passed sprite (Ball or ImageSprite)."
    .end annotation

    .prologue
    .line 647
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public Dragged(FFFFFF)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a %type% is dragged. On all calls, the starting coordinates are where the screen was first touched, and the \"current\" coordinates describe the endpoint of the current line segment. On the first call within a given drag, the \"previous\" coordinates are the same as the starting coordinates; subsequently, they are the \"current\" coordinates from the prior call. Note that the %type% won\'t actually move anywhere in response to the Dragged event unless MoveTo is explicitly called. For smooth movement, each of its coordinates should be set to the sum of its initial value and the difference between its current and previous values."
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "Dragged"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v2

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x4

    move v13, v5

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x5

    move v13, v6

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public EdgeReached(I)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the %type% reaches an edge of the screen. If Bounce is then called with that edge, the %type% will appear to bounce off of the edge it reached. Edge here is represented as an integer that indicates one of eight directions north (1), northeast (2), east (3), southeast (4), south (-1), southwest (-2), west (-3), and northwest (-4)."
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, -0x4

    if-lt v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 483
    .line 486
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string/jumbo v4, "EdgeReached"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 181
    return-void
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Controls whether the %type% moves and can be interacted with through collisions, dragging, touching, and flinging."
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public Flung(FFFFFF)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a fling gesture (quick swipe) is made on an enabled %type%. This provides the x and y coordinates of the start of the fling (relative to the upper left of the canvas), the speed (pixels per millisecond), the heading (0-360 degrees), and the x and y velocity components of the fling\'s vector."
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "Flung"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v2

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x4

    move v13, v5

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x5

    move v13, v6

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method public Heading()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the %type%\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen."
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    move-wide v0, v1

    return-wide v0
.end method

.method public Heading(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    .line 197
    move-object v3, v0

    move-wide v4, v1

    neg-double v4, v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 198
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 199
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 200
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 202
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 203
    return-void
.end method

.method public Initialize()V
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 149
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 150
    return-void
.end method

.method public Interval()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The interval in milliseconds at which the %type%\'s position is updated.  For example, if the interval is 50 and the speed is 10, then every 50 milliseconds the sprite will move 10 pixels in the heading direction."
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public Interval(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 242
    return-void
.end method

.method public MoveIntoBounds()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the %type% back in bounds if part of it extends out of bounds, having no effect otherwise. If the %type% is too wide to fit on the canvas, this aligns the left side of the %type% with the left side of the canvas. If the %type% is too tall to fit on the canvas, this aligns the top side of the %type% with the top side of the canvas."
    .end annotation

    .prologue
    .line 664
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    .line 665
    return-void
.end method

.method public MoveTo(DD)V
    .locals 9

    .prologue
    .line 675
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)V

    .line 676
    move-object v5, v0

    move-wide v6, v3

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)V

    .line 677
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 678
    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a pair of sprites (Balls and ImageSprites) are no longer colliding."
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 502
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string/jumbo v4, "NoLongerCollidingWith"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method protected OriginAtCenter(Z)V
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    .line 389
    return-void
.end method

.method public PointInDirection(DD)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the heading of the %type% toward the point with the coordinates (x, y)."
    .end annotation

    .prologue
    .line 703
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr v6, v8

    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 704
    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the %type% to point towards a designated target sprite (Ball or ImageSprite). The new heading will be parallel to the line joining the centerpoints of the two sprites."
    .end annotation

    .prologue
    .line 690
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr v4, v6

    move-object v6, v2

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 691
    return-void
.end method

.method public Speed()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The speed at which the %type% moves. The %type% moves this many pixels every interval if enabled."
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    move v0, v1

    return v0
.end method

.method public Speed(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The number of pixels that the %type% should move every interval, if enabled."
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    .line 257
    return-void
.end method

.method public TouchDown(FF)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user begins touching an enabled %type% (placing their finger on a %type% and leaving it there). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .prologue
    .line 573
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "TouchDown"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public TouchUp(FF)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user stops touching an enabled %type% (lifting their finger after a TouchDown event). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .prologue
    .line 557
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "TouchUp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    return-void
.end method

.method public Touched(FF)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user touches an enabled %type% and then immediately lifts their finger. The provided x and y coordinates are relative to the upper left of the canvas."
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "Touched"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public Visible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 294
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 295
    return-void
.end method

.method public Visible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the %type% is visible."
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    move v0, v1

    return v0
.end method

.method public X()D
    .locals 4

    .prologue
    .line 298
    move-object v1, p0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    move-wide v1, v2

    :goto_0
    return-wide v1

    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move-wide v1, v2

    goto :goto_0
.end method

.method public X(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)V

    .line 327
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 328
    return-void
.end method

.method public Y()D
    .locals 4

    .prologue
    .line 359
    move-object v1, p0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    move-wide v1, v2

    :goto_0
    return-wide v1

    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    move-wide v1, v2

    goto :goto_0
.end method

.method public Y(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)V

    .line 355
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 356
    return-void
.end method

.method public Z()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How the %type% should be layered relative to other Balls and ImageSprites, with higher-numbered layers in front of lower-numbered layers."
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    move-wide v0, v1

    return-wide v0
.end method

.method public Z(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 375
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v4, v0

    move-object v2, v4

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1809
    move-object v1, v4

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1810
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1811
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 376
    return-void
.end method

.method public alarm()V
    .locals 3

    .prologue
    .line 981
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 982
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 983
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 985
    :cond_0
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 13

    .prologue
    .line 967
    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    move-object v10, v1

    .line 968
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    const/4 v6, 0x1

    move v1, v6

    :goto_0
    return v1

    :cond_0
    const/4 v6, 0x0

    .line 967
    move v1, v6

    goto :goto_0
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .locals 15

    .prologue
    .line 897
    move-object v0, p0

    move/from16 v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-object v14, v2

    move-object v2, v14

    move-object v3, v14

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move v6, v1

    int-to-double v6, v6

    sub-double/2addr v4, v6

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    move v8, v1

    int-to-double v8, v8

    sub-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move-object v10, v0

    .line 898
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    move v10, v1

    int-to-double v10, v10

    add-double/2addr v8, v10

    move-object v10, v0

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    move v12, v1

    int-to-double v12, v12

    add-double/2addr v10, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 897
    move-object v0, v2

    return-object v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 2

    .prologue
    .line 991
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected hitEdge()I
    .locals 5

    .prologue
    .line 740
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    const/4 v1, 0x0

    move v0, v1

    .line 744
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge(II)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected hitEdge(II)I
    .locals 7

    .prologue
    .line 841
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()Z

    move-result v5

    move v3, v5

    .line 842
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/Sprite;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Z

    move-result v5

    move v4, v5

    .line 843
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Z

    move-result v5

    move v1, v5

    .line 844
    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)Z

    move-result v5

    move v2, v5

    .line 847
    move v5, v4

    if-nez v5, :cond_0

    move v5, v2

    if-nez v5, :cond_0

    move v5, v1

    if-nez v5, :cond_0

    move v5, v3

    if-nez v5, :cond_0

    .line 848
    const/4 v5, 0x0

    move v0, v5

    .line 885
    :goto_0
    return v0

    .line 854
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 857
    move v5, v3

    if-eqz v5, :cond_3

    .line 858
    move v5, v4

    if-eqz v5, :cond_1

    .line 859
    const/4 v5, -0x4

    move v0, v5

    goto :goto_0

    .line 860
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    .line 861
    const/4 v5, -0x2

    move v0, v5

    goto :goto_0

    .line 863
    :cond_2
    const/4 v5, -0x3

    move v0, v5

    goto :goto_0

    .line 867
    :cond_3
    move v5, v1

    if-eqz v5, :cond_6

    .line 868
    move v5, v4

    if-eqz v5, :cond_4

    .line 869
    const/4 v5, 0x2

    move v0, v5

    goto :goto_0

    .line 870
    :cond_4
    move v5, v2

    if-eqz v5, :cond_5

    .line 871
    const/4 v5, 0x4

    move v0, v5

    goto :goto_0

    .line 873
    :cond_5
    const/4 v5, 0x3

    move v0, v5

    goto :goto_0

    .line 877
    :cond_6
    move v5, v4

    if-eqz v5, :cond_7

    .line 878
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 880
    :cond_7
    move v5, v2

    if-eqz v5, :cond_8

    .line 881
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 885
    :cond_8
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 14

    .prologue
    .line 940
    move-object v1, p0

    move-object v2, p1

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 941
    move-object v3, v9

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 942
    const/4 v8, 0x0

    move v1, v8

    .line 955
    :goto_0
    return v1

    .line 948
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v8

    move-wide v4, v8

    :goto_1
    move-wide v8, v4

    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 949
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v8

    move-wide v6, v8

    :goto_2
    move-wide v8, v6

    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 950
    move-object v8, v1

    move-wide v9, v4

    move-wide v11, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 951
    const/4 v8, 0x1

    move v1, v8

    goto :goto_0

    .line 949
    :cond_1
    move-wide v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    move-wide v6, v8

    goto :goto_2

    .line 948
    :cond_2
    move-wide v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    move-wide v4, v8

    goto :goto_1

    .line 955
    :cond_3
    const/4 v8, 0x0

    move v1, v8

    goto :goto_0
.end method

.method protected final moveIntoBounds(II)V
    .locals 10

    .prologue
    .line 755
    move-object v1, p0

    move v2, p1

    move v3, p2

    const/4 v5, 0x0

    move v4, v5

    .line 761
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v5

    move v6, v2

    if-le v5, v6, :cond_3

    .line 765
    move-object v5, v1

    iget-wide v5, v5, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_0

    .line 766
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 767
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 768
    const/4 v5, 0x1

    move v4, v5

    .line 782
    :cond_0
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v5

    move v6, v3

    if-le v5, v6, :cond_5

    .line 786
    move-object v5, v1

    iget-wide v5, v5, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1

    .line 787
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 788
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 789
    const/4 v5, 0x1

    move v4, v5

    .line 802
    :cond_1
    :goto_1
    move v5, v4

    if-eqz v5, :cond_2

    .line 803
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 805
    :cond_2
    return-void

    .line 770
    :cond_3
    move-object v5, v1

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 771
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 772
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 773
    const/4 v5, 0x1

    move v4, v5

    goto :goto_0

    .line 774
    :cond_4
    move-object v5, v1

    move v6, v2

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 775
    move-object v5, v1

    move v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 776
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 777
    const/4 v5, 0x1

    move v4, v5

    goto :goto_0

    .line 791
    :cond_5
    move-object v5, v1

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/Sprite;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 792
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 793
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 794
    const/4 v5, 0x1

    move v4, v5

    goto :goto_1

    .line 795
    :cond_6
    move-object v5, v1

    move v6, v3

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 796
    move-object v5, v1

    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 797
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    iget-wide v7, v7, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 798
    const/4 v5, 0x1

    move v4, v5

    goto/16 :goto_1
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1006
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1007
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 998
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 999
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Sprite$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 413
    return-void
.end method

.method protected registerChange()V
    .locals 5

    .prologue
    .line 719
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v2, :cond_0

    .line 721
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 722
    .line 729
    :goto_0
    return-void

    .line 724
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge()I

    move-result v2

    move v4, v2

    move v2, v4

    move v3, v4

    .line 725
    move v1, v3

    if-eqz v2, :cond_1

    .line 726
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReached(I)V

    .line 728
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 729
    goto :goto_0
.end method

.method protected updateCoordinates()V
    .locals 9

    .prologue
    .line 812
    move-object v0, p0

    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v4, v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 813
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-wide v3, v3, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 814
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v4, v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 815
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-wide v3, v3, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 816
    return-void
.end method
