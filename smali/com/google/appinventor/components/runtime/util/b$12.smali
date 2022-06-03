.class final Lcom/google/appinventor/components/runtime/util/b$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polygon$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/b;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 5

    .prologue
    .line 655
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/b$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 4

    .prologue
    .line 665
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 666
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 667
    goto :goto_0

    .line 668
    :cond_0
    return-void
.end method

.method public final onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 28

    .prologue
    .line 672
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 673
    const-wide/16 v18, 0x0

    move-wide/from16 v5, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v7, v18

    .line 674
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v9, v18

    .line 676
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v10, v18

    :goto_0
    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v11, v18

    .line 677
    move-wide/from16 v18, v5

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v5, v18

    .line 678
    move-wide/from16 v18, v7

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v7, v18

    .line 679
    goto :goto_0

    .line 680
    :cond_0
    move/from16 v18, v9

    if-lez v18, :cond_1

    .line 681
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    move-wide/from16 v19, v5

    move/from16 v21, v9

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v21, v7

    move/from16 v23, v9

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    invoke-interface/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    .line 700
    :goto_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v5, v18

    :goto_2
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 701
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 702
    goto :goto_2

    .line 683
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    invoke-interface/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    .line 685
    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 686
    const-wide v18, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v5, v18

    const-wide v18, -0x3f99800000000000L    # -180.0

    move-wide/from16 v7, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    move-wide/from16 v9, v18

    const-wide v18, 0x4056800000000000L    # 90.0

    move-wide/from16 v11, v18

    .line 687
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v4, v18

    :goto_3
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 688
    move-object/from16 v13, v19

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 689
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 690
    move-wide/from16 v18, v5

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 691
    move-wide/from16 v18, v11

    move-wide/from16 v20, v14

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 692
    move-wide/from16 v18, v7

    move-wide/from16 v20, v16

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 693
    move-wide/from16 v18, v9

    move-wide/from16 v20, v16

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 694
    goto :goto_3

    .line 695
    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    move-wide/from16 v19, v5

    move-wide/from16 v21, v9

    move-wide/from16 v23, v11

    move-wide/from16 v25, v7

    invoke-interface/range {v18 .. v26}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->updateBounds(DDDD)V

    .line 696
    goto/16 :goto_1

    .line 697
    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-object/from16 v19, v4

    check-cast v19, Lcom/google/appinventor/components/runtime/util/b$d;

    move-object/from16 v5, v19

    .line 2345
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v19

    .line 2346
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$d;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v5, v19

    :goto_4
    move-object/from16 v19, v5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v19, v5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/osmdroid/views/overlay/Polygon;

    move-object/from16 v7, v19

    .line 2347
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 2348
    goto :goto_4

    .line 2349
    :cond_5
    move-object/from16 v19, v6

    .line 697
    invoke-interface/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updatePoints(Ljava/util/List;)V

    .line 698
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-object/from16 v19, v4

    check-cast v19, Lcom/google/appinventor/components/runtime/util/b$d;

    invoke-virtual/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/b$d;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updateHolePoints(Ljava/util/List;)V

    goto/16 :goto_1

    .line 703
    :cond_6
    return-void
.end method

.method public final onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 4

    .prologue
    .line 658
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/b$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/b;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/b;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 659
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/b$12;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 660
    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method
