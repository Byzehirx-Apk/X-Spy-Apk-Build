.class Landroidx/appcompat/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Landroidx/appcompat/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/TwilightManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "locationManager":Landroid/location/LocationManager;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/app/TwilightManager$TwilightState;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/appcompat/app/TwilightManager$TwilightState;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 70
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 71
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroidx/appcompat/app/TwilightManager;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget-object v1, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    if-nez v1, :cond_0

    .line 51
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 52
    new-instance v1, Landroidx/appcompat/app/TwilightManager;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    move-object v4, v0

    const-string/jumbo v5, "location"

    .line 53
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    .line 55
    :cond_0
    sget-object v1, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/TwilightManager;
    const/4 v4, 0x0

    move-object v1, v4

    .line 108
    .local v1, "coarseLoc":Landroid/location/Location;
    const/4 v4, 0x0

    move-object v2, v4

    .line 110
    .local v2, "fineLoc":Landroid/location/Location;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 112
    .local v3, "permission":I
    move v4, v3

    if-nez v4, :cond_0

    .line 113
    move-object v4, v0

    const-string/jumbo v5, "network"

    invoke-direct {v4, v5}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    move-object v1, v4

    .line 116
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 118
    move v4, v3

    if-nez v4, :cond_1

    .line 119
    move-object v4, v0

    const-string/jumbo v5, "gps"

    invoke-direct {v4, v5}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    move-object v2, v4

    .line 122
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v1

    if-eqz v4, :cond_3

    .line 124
    move-object v4, v2

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move-object v4, v2

    :goto_0
    move-object v0, v4

    .line 127
    .end local v0    # "this":Landroidx/appcompat/app/TwilightManager;
    :goto_1
    return-object v0

    .line 124
    .restart local v0    # "this":Landroidx/appcompat/app/TwilightManager;
    :cond_2
    move-object v4, v1

    goto :goto_0

    .line 127
    :cond_3
    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v2

    :goto_2
    move-object v0, v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    goto :goto_2
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 6
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/TwilightManager;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 140
    .end local v0    # "this":Landroidx/appcompat/app/TwilightManager;
    :goto_0
    return-object v0

    .line 139
    .line 140
    .restart local v0    # "this":Landroidx/appcompat/app/TwilightManager;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TwilightManager"

    const-string/jumbo v4, "Failed to get last known location"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private isStateValid()Z
    .locals 6

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/app/TwilightManager;
    move-object v2, v1

    iget-object v2, v2, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    iget-wide v2, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Landroidx/appcompat/app/TwilightManager;
    return v1

    .restart local v1    # "this":Landroidx/appcompat/app/TwilightManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static setInstance(Landroidx/appcompat/app/TwilightManager;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "twilightManager":Landroidx/appcompat/app/TwilightManager;
    move-object v1, v0

    sput-object v1, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    .line 61
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .locals 27
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/appcompat/app/TwilightManager;
    move-object/from16 v4, p1

    .local v4, "location":Landroid/location/Location;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 149
    .local v5, "state":Landroidx/appcompat/app/TwilightManager$TwilightState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 150
    .local v6, "now":J
    invoke-static {}, Landroidx/appcompat/app/TwilightCalculator;->getInstance()Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v20

    move-object/from16 v8, v20

    .line 153
    .local v8, "calculator":Landroidx/appcompat/app/TwilightCalculator;
    move-object/from16 v20, v8

    move-wide/from16 v21, v6

    const-wide/32 v23, 0x5265c00

    sub-long v21, v21, v23

    move-object/from16 v23, v4

    .line 154
    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    .line 153
    invoke-virtual/range {v20 .. v26}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 155
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    move-wide/from16 v20, v0

    move-wide/from16 v9, v20

    .line 158
    .local v9, "yesterdaySunset":J
    move-object/from16 v20, v8

    move-wide/from16 v21, v6

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    invoke-virtual/range {v20 .. v26}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 159
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    :goto_0
    move/from16 v11, v20

    .line 160
    .local v11, "isNight":Z
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    move-wide/from16 v12, v20

    .line 161
    .local v12, "todaySunrise":J
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    move-wide/from16 v20, v0

    move-wide/from16 v14, v20

    .line 164
    .local v14, "todaySunset":J
    move-object/from16 v20, v8

    move-wide/from16 v21, v6

    const-wide/32 v23, 0x5265c00

    add-long v21, v21, v23

    move-object/from16 v23, v4

    .line 165
    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    .line 164
    invoke-virtual/range {v20 .. v26}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 166
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    move-wide/from16 v16, v20

    .line 169
    .local v16, "tomorrowSunrise":J
    const-wide/16 v20, 0x0

    move-wide/from16 v18, v20

    .line 170
    .local v18, "nextUpdate":J
    move-wide/from16 v20, v12

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_0

    move-wide/from16 v20, v14

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    .line 172
    :cond_0
    move-wide/from16 v20, v6

    const-wide/32 v22, 0x2932e00

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    .line 186
    :goto_1
    move-object/from16 v20, v5

    move/from16 v21, v11

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 187
    move-object/from16 v20, v5

    move-wide/from16 v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 188
    move-object/from16 v20, v5

    move-wide/from16 v21, v12

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 189
    move-object/from16 v20, v5

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunset:J

    .line 190
    move-object/from16 v20, v5

    move-wide/from16 v21, v16

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 191
    move-object/from16 v20, v5

    move-wide/from16 v21, v18

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 192
    return-void

    .line 159
    .end local v11    # "isNight":Z
    .end local v12    # "todaySunrise":J
    .end local v14    # "todaySunset":J
    .end local v16    # "tomorrowSunrise":J
    .end local v18    # "nextUpdate":J
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 174
    .restart local v11    # "isNight":Z
    .restart local v12    # "todaySunrise":J
    .restart local v14    # "todaySunset":J
    .restart local v16    # "tomorrowSunrise":J
    .restart local v18    # "nextUpdate":J
    :cond_2
    move-wide/from16 v20, v6

    move-wide/from16 v22, v14

    cmp-long v20, v20, v22

    if-lez v20, :cond_3

    .line 175
    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    .line 182
    :goto_2
    move-wide/from16 v20, v18

    const-wide/32 v22, 0xea60

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    goto :goto_1

    .line 176
    :cond_3
    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    .line 177
    move-wide/from16 v20, v18

    move-wide/from16 v22, v14

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    goto :goto_2

    .line 179
    :cond_4
    move-wide/from16 v20, v18

    move-wide/from16 v22, v12

    add-long v20, v20, v22

    move-wide/from16 v18, v20

    goto :goto_2
.end method


# virtual methods
.method isNight()Z
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/TwilightManager;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    move-object v1, v5

    .line 82
    .local v1, "state":Landroidx/appcompat/app/TwilightManager$TwilightState;
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/app/TwilightManager;->isStateValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    move v0, v5

    .line 102
    .end local v0    # "this":Landroidx/appcompat/app/TwilightManager;
    :goto_0
    return v0

    .line 88
    .restart local v0    # "this":Landroidx/appcompat/app/TwilightManager;
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v5

    move-object v2, v5

    .line 89
    .local v2, "location":Landroid/location/Location;
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 90
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/appcompat/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 91
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    move v0, v5

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v5, "TwilightManager"

    const-string/jumbo v6, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move-object v3, v5

    .line 101
    .local v3, "calendar":Ljava/util/Calendar;
    move-object v5, v3

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v4, v5

    .line 102
    .local v4, "hour":I
    move v5, v4

    const/4 v6, 0x6

    if-lt v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0x16

    if-lt v5, v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
