.class public Lcom/google/appinventor/components/runtime/Map;
.super Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional container that renders map tiles in the background and allows for multiple Marker elements to identify points on the map. Map tiles are supplied by OpenStreetMap contributors and the United States Geological Survey.</p><p>The Map component provides three utilities for manipulating its boundaries within App Inventor. First, a locking mechanism is provided to allow the map to be moved relative to other components on the Screen. Second, when unlocked, the user can pan the Map to any location. At this new location, the &quot;Set Initial Boundary&quot; button can be pressed to save the current Map coordinates to its properties. Lastly, if the Map is moved to a different location, for example to add Markers off-screen, then the &quot;Reset Map to Initial Bounds&quot; button can be used to re-center the Map at the starting location.</p>"
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "location.png, marker.svg"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.aar",
        "osmdroid.jar",
        "androidsvg.jar",
        "jts.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_FINE_LOCATION",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 106
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 108
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 109
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Map;->havePermission:Z

    .line 110
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Map;->androidUIHandler:Landroid/os/Handler;

    .line 120
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Map;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 121
    sget-object v2, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Map.<init>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 122
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 123
    move-object v2, v0

    const/16 v3, 0xb0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->Width(I)V

    .line 124
    move-object v2, v0

    const/16 v3, 0x90

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->Height(I)V

    .line 125
    move-object v2, v0

    const-string/jumbo v3, "42.359144, -71.093612"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->CenterFromString(Ljava/lang/String;)V

    .line 126
    move-object v2, v0

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->ZoomLevel(I)V

    .line 127
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->EnableZoom(Z)V

    .line 128
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->EnablePan(Z)V

    .line 129
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->MapType(I)V

    .line 130
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->ShowCompass(Z)V

    .line 131
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 132
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->ShowUser(Z)V

    .line 133
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->ShowZoom(Z)V

    .line 134
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->EnableRotation(Z)V

    .line 135
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->ShowScale(Z)V

    .line 136
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Map;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Map;Z)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Map;Z)Z
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Map;->havePermission:Z

    move v0, v2

    return v0
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Z)V
    .locals 7

    .prologue
    .line 412
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setShowUserEnabled(Z)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    .line 418
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 414
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "ShowUser"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 417
    goto :goto_0

    .line 415
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 416
    sget-object v2, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 418
    goto :goto_0
.end method


# virtual methods
.method public BoundingBox()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bounding box for the map stored as [[North, West], [South, East]]."
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v3

    move-object v1, v3

    .line 480
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Double;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v2, v3

    .line 481
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Double;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v1, v3

    .line 482
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v2

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public BoundingBox(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 22
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v10

    move-wide v2, v10

    .line 470
    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v10

    move-wide v4, v10

    .line 471
    move-object v10, v1

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v10

    move-wide v6, v10

    .line 472
    move-object v10, v1

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v10

    move-wide v8, v10

    .line 473
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    new-instance v11, Lorg/osmdroid/util/BoundingBox;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-wide v13, v2

    move-wide v15, v8

    move-wide/from16 v17, v6

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v20}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    invoke-interface {v10, v11}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V

    .line 474
    return-void
.end method

.method public BoundsChange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the map bounds by panning or zooming the map."
    .end annotation

    .prologue
    .line 620
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "BoundsChange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 621
    return-void
.end method

.method public CenterFromString(Ljava/lang/String;)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "42.359144, -71.093612"
        editorType = "geographic_point"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>Set the initial center coordinate of the map. The value is specified as a comma-separated pair of decimal latitude and longitude coordinates, for example, <code>42.359144, -71.093612</code>.</p><p>In blocks code, it is recommended for performance reasons to use SetCenter with numerical latitude and longitude rather than convert to the string representation for use with this property.</p>"
    .end annotation

    .prologue
    .line 167
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v8, v2

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    .line 168
    move-object v3, v9

    array-length v8, v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 169
    sget-object v8, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not a valid point."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 170
    move-object v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not a valid point."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    .line 171
    .line 197
    :goto_0
    return-void

    .line 176
    :cond_0
    move-object v8, v3

    const/4 v9, 0x0

    :try_start_0
    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    move-wide v4, v8

    .line 181
    .line 183
    move-object v8, v3

    const/4 v9, 0x1

    :try_start_1
    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    move-wide v6, v8

    .line 188
    .line 189
    move-wide v8, v4

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_1

    move-wide v8, v4

    const-wide v10, -0x3fa9800000000000L    # -90.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 190
    :cond_1
    move-object v8, v1

    const-string/jumbo v9, "Latitude %f is out of bounds."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :catch_0
    move-exception v8

    sget-object v8, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "%s is not a valid number."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v3

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 179
    move-object v8, v1

    const-string/jumbo v9, "%s is not a valid number."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v3

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    .line 180
    goto :goto_0

    .line 185
    :catch_1
    move-exception v8

    sget-object v8, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "%s is not a valid number."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 186
    move-object v8, v1

    const-string/jumbo v9, "%s is not a valid number."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    .line 187
    goto/16 :goto_0

    .line 191
    :cond_2
    move-wide v8, v6

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_3

    move-wide v8, v6

    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    .line 192
    :cond_3
    move-object v8, v1

    const-string/jumbo v9, "Longitude %f is out of bounds."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-wide v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_4
    sget-object v8, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "Setting center to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 195
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-wide v9, v4

    move-wide v11, v6

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCenter(DD)V

    .line 197
    goto/16 :goto_0
.end method

.method public CreateMarker(DD)Lcom/google/appinventor/components/runtime/Marker;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new marker with default properties at the specified latitude and longitude."
    .end annotation

    .prologue
    .line 577
    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    new-instance v7, Lcom/google/appinventor/components/runtime/Marker;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    .line 578
    move-object v6, v8

    move-wide v8, v2

    move-wide v10, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Marker;->SetLocation(DD)V

    .line 579
    move-object v7, v6

    move-object v1, v7

    return-object v1
.end method

.method public DoubleTapAtPoint(DD)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user double-tapped at a point on the map. This event will be followed by a ZoomChanged event if zooming gestures are enabled and the map is not at the highest possible zoom level."
    .end annotation

    .prologue
    .line 643
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    const-string/jumbo v6, "DoubleTapAtPoint"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    .line 644
    return-void
.end method

.method public EnablePan(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setPanEnabled(Z)V

    .line 459
    return-void
.end method

.method public EnablePan()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable two-finger panning of the Map"
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isPanEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public EnableRotation(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotationEnabled(Z)V

    .line 441
    return-void
.end method

.method public EnableRotation()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true, the user can use multitouch gestures to rotate the map around its current center."
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isRotationEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public EnableZoom(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomEnabled(Z)V

    .line 267
    return-void
.end method

.method public EnableZoom()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If this property is set to true, multitouch zoom gestures are allowed on the map. Otherwise, the map zoom cannot be changed by the user except via the zoom control buttons."
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public InvalidPoint(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An invalid coordinate was supplied during a maps operation. The message parameter will have more details about the issue."
    .end annotation

    .prologue
    .line 631
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "InvalidPoint"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 632
    return-void
.end method

.method public Latitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the center of the map."
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLatitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public LocationSensor()Lcom/google/appinventor/components/runtime/LocationSensor;
    .locals 2

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v0, v1

    return-object v0
.end method

.method public LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "component:com.google.appinventor.components.runtime.LocationSensor"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Uses the provided LocationSensor for user location data rather than the built-in location provider."
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    move-result-object v3

    move-object v2, v3

    .line 491
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v3, :cond_0

    .line 492
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    .line 494
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 495
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v3, :cond_1

    .line 496
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor;->addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    .line 498
    :cond_1
    return-void
.end method

.method public LongPressAtPoint(DD)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed at a point on the map."
    .end annotation

    .prologue
    .line 648
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    const-string/jumbo v6, "LongPressAtPoint"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    .line 649
    return-void
.end method

.method public Longitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the center of the map."
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLongitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public MapType()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of tile layer to use as the base of the map. Valid values are: 1 (Roads), 2 (Aerial), 3 (Terrain)"
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public MapType(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    move v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v2

    move v3, v1

    aget-object v2, v2, v3

    move-object v1, v2

    .line 308
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V

    .line 309
    return-void
.end method

.method public PanTo(DDI)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pan the map center to the given latitude and longitude and adjust the zoom level to the specified zoom."
    .end annotation

    .prologue
    .line 571
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-wide v8, v2

    move-wide v10, v4

    move v12, v6

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v7 .. v14}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->panTo(DDID)V

    .line 572
    return-void
.end method

.method public Ready()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Map has been initialized and is ready for user interaction."
    .end annotation

    .prologue
    .line 615
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Ready"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 616
    return-void
.end method

.method public Rotation()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets or gets the rotation of the map in decimal degrees if any"
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getRotation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public Rotation(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotation(F)V

    .line 286
    return-void
.end method

.method public Save(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Save the contents of the Map to the specified path."
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/util/ArrayList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 585
    new-instance v3, Lcom/google/appinventor/components/runtime/Map$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Map$7;-><init>(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method

.method public ScaleUnits()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 530
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/Map$6;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 536
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    .line 532
    :pswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 534
    :pswitch_1
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ScaleUnits(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_unit_system"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-lez v2, :cond_0

    move v2, v1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 521
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v3

    move v4, v1

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "ScaleUnits"

    const/16 v5, 0xd5d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 524
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 523
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 526
    goto :goto_0
.end method

.method public ShowCompass(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCompassEnabled(Z)V

    .line 339
    return-void
.end method

.method public ShowCompass()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show a compass icon rotated based on user orientation."
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isCompassEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ShowScale(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleVisible(Z)V

    .line 508
    return-void
.end method

.method public ShowScale()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Shows a scale reference on the map."
    .end annotation

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isScaleVisible()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ShowUser(Z)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Map;->havePermission:Z

    if-nez v2, :cond_0

    .line 386
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Map$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Map$1;-><init>(Lcom/google/appinventor/components/runtime/Map;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Map;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Z)V

    .line 408
    goto :goto_0
.end method

.method public ShowUser()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show the user\'s location on the map."
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isShowUserEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ShowZoom(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomControlEnabled(Z)V

    .line 362
    return-void
.end method

.method public ShowZoom()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show zoom buttons on the map."
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomControlEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public TapAtPoint(DD)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user tapped at a point on the map."
    .end annotation

    .prologue
    .line 636
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    const-string/jumbo v6, "TapAtPoint"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    .line 637
    return-void
.end method

.method public UserLatitude()D
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s latitude if ShowUser is enabled."
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v2, :cond_0

    const-wide v2, -0x3f70c80000000000L    # -999.0

    move-wide v0, v2

    .line 550
    :goto_0
    return-wide v0

    .line 544
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Latitude()D
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 545
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 546
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "UserLatitude"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 547
    const-wide v2, -0x3f70c80000000000L    # -999.0

    move-wide v0, v2

    goto :goto_0

    .line 548
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 549
    sget-object v2, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 550
    const-wide v2, -0x3f70c80000000000L    # -999.0

    move-wide v0, v2

    goto :goto_0
.end method

.method public UserLongitude()D
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s longitude if ShowUser is enabled."
    .end annotation

    .prologue
    .line 558
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v2, :cond_0

    const-wide v2, -0x3f70c80000000000L    # -999.0

    move-wide v0, v2

    .line 564
    :goto_0
    return-wide v0

    .line 558
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Longitude()D
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 559
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 560
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "UserLongitude"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 561
    const-wide v2, -0x3f70c80000000000L    # -999.0

    move-wide v0, v2

    goto :goto_0

    .line 562
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 563
    sget-object v2, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 564
    const-wide v2, -0x3f70c80000000000L    # -999.0

    move-wide v0, v2

    goto :goto_0
.end method

.method public ZoomChange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the zoom level of the map."
    .end annotation

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "ZoomChange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 626
    return-void
.end method

.method public ZoomLevel()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The zoom level of the map. Valid values of ZoomLevel are dependent on the tile provider and the latitude and longitude of the map. For example, zoom levels are more constrained over oceans than dense city centers to conserve space for storing tiles, so valid values may be 1-7 over ocean and 1-18 over cities. Tile providers may send warning or error tiles if the zoom level is too great for the server to support."
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getZoom()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public ZoomLevel(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "13"
        editorType = "map_zoom"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoom(I)V

    .line 238
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 4

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 804
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 805
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 806
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 4

    .prologue
    .line 782
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 783
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 784
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 785
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 4

    .prologue
    .line 775
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 776
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 777
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 778
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 790
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 791
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 792
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 4

    .prologue
    .line 796
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 797
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 798
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 799
    return-void
.end method

.method public getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
    .locals 2

    .prologue
    .line 652
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v0, v1

    return-object v0
.end method

.method public getMap()Lcom/google/appinventor/components/runtime/Map;
    .locals 2

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    if-nez v1, :cond_0

    .line 141
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory;->newMap(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 142
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V

    .line 144
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public onBoundsChanged()V
    .locals 6

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Map$9;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Map$9;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method public onDoubleTap(DD)V
    .locals 15

    .prologue
    .line 698
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/Map$12;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/Map$12;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 8

    .prologue
    .line 718
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Map$14;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Map$14;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 724
    return-void
.end method

.method public onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 8

    .prologue
    .line 748
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Map$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Map$4;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 754
    return-void
.end method

.method public onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 8

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Map$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Map$2;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 734
    return-void
.end method

.method public onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 8

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Map$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Map$3;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method public onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 8

    .prologue
    .line 758
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Map$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Map$5;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method public onLongPress(DD)V
    .locals 15

    .prologue
    .line 708
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/Map$13;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/Map$13;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method public onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V
    .locals 7

    .prologue
    .line 658
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Map$8;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Map$8;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 664
    return-void
.end method

.method public onSingleTap(DD)V
    .locals 15

    .prologue
    .line 688
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/Map$11;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/Map$11;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method public onZoom()V
    .locals 6

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Map$10;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Map$10;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 684
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 4

    .prologue
    .line 810
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 811
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Map;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 812
    return-void
.end method
