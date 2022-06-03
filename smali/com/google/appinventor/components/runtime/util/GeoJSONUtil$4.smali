.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    if-eqz v3, :cond_0

    .line 190
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth(I)V

    .line 192
    :cond_0
    return-void
.end method
