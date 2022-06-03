.class final Lcom/google/appinventor/components/runtime/GoogleMap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

.field final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

.field final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;

.field wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;DFII)V
    .locals 17

    .prologue
    .line 1625
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, v1

    move-object v10, v2

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;

    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1626
    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/GoogleMap$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    .line 1627
    move-object v9, v1

    move-object v10, v2

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v10

    new-instance v11, Lcom/google/android/gms/maps/model/MarkerOptions;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    move-object v12, v3

    .line 1628
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v11

    const/4 v12, 0x1

    .line 1629
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v11

    .line 1627
    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v10

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1630
    move-object v9, v1

    move-object v10, v2

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v10

    new-instance v11, Lcom/google/android/gms/maps/model/MarkerOptions;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    move-object v12, v3

    move-wide v13, v4

    .line 1631
    invoke-static {v12, v13, v14}, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v11

    const/4 v12, 0x1

    .line 1632
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v11

    const/high16 v12, 0x43520000    # 210.0f

    .line 1633
    invoke-static {v12}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v11

    .line 1630
    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v10

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 1635
    move-object v9, v1

    move-object v10, v2

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v10

    new-instance v11, Lcom/google/android/gms/maps/model/CircleOptions;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    move-object v12, v3

    .line 1636
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v11

    move-wide v12, v4

    .line 1637
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v11

    move v12, v6

    .line 1638
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v11

    move v12, v7

    .line 1639
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v11

    move v12, v8

    .line 1640
    invoke-virtual {v11, v12}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v11

    .line 1635
    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v10

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

    .line 1642
    return-void
.end method


# virtual methods
.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 8

    .prologue
    .line 1676
    move-object v1, p0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1677
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1678
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    move-object v5, v1

    iget-wide v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1679
    const/4 v3, 0x1

    move v1, v3

    .line 1686
    :goto_0
    return v1

    .line 1681
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1682
    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    .line 1683
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/GoogleMap$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 1684
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0

    .line 1686
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0
.end method
