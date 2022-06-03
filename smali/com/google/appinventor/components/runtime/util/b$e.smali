.class final Lcom/google/appinventor/components/runtime/util/b$e;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/b;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/b$e;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    move-object v2, v0

    invoke-direct {v2}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 213
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/b$e;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/b;B)V
    .locals 5

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/b$e;-><init>(Lcom/google/appinventor/components/runtime/util/b;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b$e;)Z
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/b$e;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b$e;Z)Z
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/b$e;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    move v0, v2

    return v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 7

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/util/b$e;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 14

    .prologue
    .line 230
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v8, v3

    invoke-virtual {v8}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 231
    move-object v2, v9

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v8

    move-wide v4, v8

    .line 232
    move-object v8, v2

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v8

    move-wide v6, v8

    .line 233
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/b$e;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 234
    move-wide v9, v4

    move-wide v11, v6

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onLongPress(DD)V

    .line 235
    goto :goto_0

    .line 236
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    return v1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 7

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/util/b$e;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method
