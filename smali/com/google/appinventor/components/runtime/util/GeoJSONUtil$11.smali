.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;
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
    .line 130
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    if-eqz v3, :cond_0

    .line 134
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    :goto_0
    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor(I)V

    .line 137
    :cond_0
    return-void

    .line 134
    :cond_1
    move-object v4, v2

    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method
