.class final Lcom/google/appinventor/components/runtime/util/b$d;
.super Lorg/osmdroid/views/overlay/Polygon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

.field private pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 1323
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1325
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1353
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 1354
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 1355
    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1356
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    goto :goto_0

    .line 1358
    :cond_0
    :goto_1
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1359
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1360
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1362
    :cond_1
    :goto_2
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1363
    new-instance v3, Lorg/osmdroid/views/overlay/Polygon;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 1364
    move-object v2, v4

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1365
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/b$d;->getStrokeColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1366
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/b$d;->getFillColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1367
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/b$d;->getStrokeWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1368
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/b$d;->getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1369
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1370
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1371
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1372
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1373
    goto :goto_2

    .line 1374
    :cond_2
    return-void
.end method

.method public final contains(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 1480
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1481
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1482
    const/4 v3, 0x1

    move v0, v3

    .line 1485
    :goto_1
    return v0

    .line 1484
    :cond_0
    goto :goto_0

    .line 1485
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 9

    .prologue
    .line 1339
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    :goto_0
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/views/overlay/Polygon;

    .line 1340
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lorg/osmdroid/views/overlay/Polygon;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 1341
    goto :goto_0

    .line 1342
    :cond_0
    return-void
.end method

.method public final finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 9

    .prologue
    .line 1519
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    :goto_0
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/views/overlay/Polygon;

    .line 1520
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lorg/osmdroid/views/overlay/Polygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1521
    goto :goto_0

    .line 1522
    :cond_0
    return-void
.end method

.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 1378
    move-object v0, p0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 1379
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/Polygon;

    move-object v3, v4

    .line 1380
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/Polygon;->getHoles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1381
    goto :goto_0

    .line 1382
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public final moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 9

    .prologue
    .line 1512
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    :goto_0
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/views/overlay/Polygon;

    .line 1513
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1514
    goto :goto_0

    .line 1515
    :cond_0
    return-void
.end method

.method public final onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 11

    .prologue
    .line 1490
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/b$d;->contains(Landroid/view/MotionEvent;)Z

    move-result v4

    move v10, v4

    move v4, v10

    move v5, v10

    .line 1491
    move v3, v5

    if-eqz v4, :cond_1

    .line 1492
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mDraggable:Z

    if-eqz v4, :cond_2

    .line 1493
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mIsDragged:Z

    .line 1494
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/b$d;->closeInfoWindow()V

    .line 1495
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 1496
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v4, :cond_0

    .line 1497
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    move-object v5, v0

    invoke-interface {v4, v5}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1499
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/b$d;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1506
    :cond_1
    :goto_0
    move v4, v3

    move v0, v4

    return v0

    .line 1500
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-eqz v4, :cond_1

    .line 1501
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    move-object v5, v0

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 1502
    invoke-virtual {v7}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v1

    .line 1503
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    .line 1502
    invoke-virtual {v7, v8, v9}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/util/GeoPoint;

    .line 1501
    invoke-interface {v4, v5, v6, v7}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v4

    goto :goto_0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 7

    .prologue
    .line 1470
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/Polygon;

    .line 1471
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/views/overlay/Polygon;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1472
    const/4 v4, 0x1

    move v0, v4

    .line 1475
    :goto_1
    return v0

    .line 1474
    :cond_0
    goto :goto_0

    .line 1475
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 8

    .prologue
    .line 1526
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->mDraggable:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->mIsDragged:Z

    if-eqz v3, :cond_3

    .line 1527
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1528
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/b$d;->mIsDragged:Z

    .line 1529
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/b$d;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1530
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v3, :cond_0

    .line 1531
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    move-object v4, v0

    invoke-interface {v3, v4}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1533
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 1542
    :goto_0
    return v0

    .line 1534
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1535
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/b$d;->mDragStartPoint:Landroid/view/MotionEvent;

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/b$d;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1536
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v3, :cond_2

    .line 1537
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    move-object v4, v0

    invoke-interface {v3, v4}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1539
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1542
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public final setDraggable(Z)V
    .locals 5

    .prologue
    .line 1403
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1404
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/b$d;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    .line 1405
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1406
    move v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1407
    goto :goto_0

    .line 1408
    :cond_0
    return-void
.end method

.method public final setFillColor(I)V
    .locals 5

    .prologue
    .line 1446
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1447
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1448
    move v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1449
    goto :goto_0

    .line 1450
    :cond_0
    return-void
.end method

.method public final setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 5

    .prologue
    .line 1412
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1413
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/b$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1414
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1415
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1416
    goto :goto_0

    .line 1417
    :cond_0
    return-void
.end method

.method public final setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V
    .locals 5

    .prologue
    .line 1421
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1422
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/b$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1423
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1424
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1425
    goto :goto_0

    .line 1426
    :cond_0
    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1462
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1463
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1464
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1465
    goto :goto_0

    .line 1466
    :cond_0
    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 5

    .prologue
    .line 1438
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1439
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1440
    move v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1441
    goto :goto_0

    .line 1442
    :cond_0
    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 5

    .prologue
    .line 1430
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1431
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1432
    move v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1433
    goto :goto_0

    .line 1434
    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1454
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1455
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1456
    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1457
    goto :goto_0

    .line 1458
    :cond_0
    return-void
.end method

.method public final showInfoWindow()V
    .locals 3

    .prologue
    .line 1332
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1333
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow()V

    .line 1335
    :cond_0
    return-void
.end method

.method public final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1386
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1387
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    .line 1388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    .line 1389
    goto :goto_0

    .line 1399
    :cond_1
    :goto_1
    return-void

    .line 1390
    :cond_2
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1391
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Holes and points are not of the same arity."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1393
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 1394
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 1395
    :goto_2
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1396
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_2

    .line 1399
    :cond_4
    goto :goto_1
.end method
