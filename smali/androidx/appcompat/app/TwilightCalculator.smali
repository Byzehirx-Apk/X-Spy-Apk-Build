.class Landroidx/appcompat/app/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L

.field private static sInstance:Landroidx/appcompat/app/TwilightCalculator;


# instance fields
.field public state:I

.field public sunrise:J

.field public sunset:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/TwilightCalculator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Landroidx/appcompat/app/TwilightCalculator;
    .locals 3

    .prologue
    .line 31
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroidx/appcompat/app/TwilightCalculator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 34
    :cond_0
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    return-object v0
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 37

    .prologue
    .line 89
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/appcompat/app/TwilightCalculator;
    move-wide/from16 v4, p1

    .local v4, "time":J
    move-wide/from16 v6, p3

    .local v6, "latitude":D
    move-wide/from16 v8, p5

    .local v8, "longitude":D
    move-wide/from16 v28, v4

    const-wide v30, 0xdc6d62da00L

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x4ca4cb80    # 8.64E7f

    div-float v28, v28, v29

    move/from16 v10, v28

    .line 92
    .local v10, "daysSince2000":F
    const v28, 0x40c7ae92

    move/from16 v29, v10

    const v30, 0x3c8ceb25

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v11, v28

    .line 95
    .local v11, "meanAnomaly":F
    move/from16 v28, v11

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fa11c5fc0000000L    # 0.03341960161924362

    move/from16 v32, v11

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    const-wide v30, 0x3f36e05b00000000L    # 3.4906598739326E-4

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v33, v11

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    .line 96
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    const-wide v30, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    const/high16 v32, 0x40400000    # 3.0f

    move/from16 v33, v11

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 99
    .local v12, "trueAnomaly":D
    move-wide/from16 v28, v12

    const-wide v30, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double v28, v28, v30

    const-wide v30, 0x400921fb54442d18L    # Math.PI

    add-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 102
    .local v14, "solarLng":D
    move-wide/from16 v28, v8

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x4076800000000000L    # 360.0

    div-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 103
    .local v16, "arcLongitude":D
    move/from16 v28, v10

    const v29, 0x3a6bedfa    # 9.0E-4f

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v16

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    move/from16 v18, v28

    .line 104
    .local v18, "n":F
    move/from16 v28, v18

    const v29, 0x3a6bedfa    # 9.0E-4f

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v16

    add-double v28, v28, v30

    const-wide v30, 0x3f75b573eab367a1L    # 0.0053

    move/from16 v32, v11

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    const-wide v30, -0x4083bcd35a858794L    # -0.0069

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-wide/from16 v34, v14

    mul-double v32, v32, v34

    .line 105
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v19, v28

    .line 108
    .local v19, "solarTransitJ2000":D
    move-wide/from16 v28, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide v30, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->asin(D)D

    move-result-wide v28

    move-wide/from16 v21, v28

    .line 110
    .local v21, "solarDec":D
    move-wide/from16 v28, v6

    const-wide v30, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v28, v28, v30

    move-wide/from16 v23, v28

    .line 112
    .local v23, "latRad":D
    const-wide v28, -0x4045311600000000L    # -0.10471975803375244

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v30, v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-wide/from16 v32, v21

    .line 113
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v30, v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    move-wide/from16 v32, v21

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    div-double v28, v28, v30

    move-wide/from16 v25, v28

    .line 116
    .local v25, "cosHourAngle":D
    move-wide/from16 v28, v25

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_0

    .line 117
    move-object/from16 v28, v3

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 118
    move-object/from16 v28, v3

    const-wide/16 v29, -0x1

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 119
    move-object/from16 v28, v3

    const-wide/16 v29, -0x1

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 120
    .line 138
    :goto_0
    return-void

    .line 121
    :cond_0
    move-wide/from16 v28, v25

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_1

    .line 122
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 123
    move-object/from16 v28, v3

    const-wide/16 v29, -0x1

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 124
    move-object/from16 v28, v3

    const-wide/16 v29, -0x1

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    move-wide/from16 v28, v25

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->acos(D)D

    move-result-wide v28

    const-wide v30, 0x401921fb54442d18L    # 6.283185307179586

    div-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v27, v28

    .line 130
    .local v27, "hourAngle":F
    move-object/from16 v28, v3

    move-wide/from16 v29, v19

    move/from16 v31, v27

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    add-double v29, v29, v31

    const-wide v31, 0x4194997000000000L    # 8.64E7

    mul-double v29, v29, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->round(D)J

    move-result-wide v29

    const-wide v31, 0xdc6d62da00L

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 131
    move-object/from16 v28, v3

    move-wide/from16 v29, v19

    move/from16 v31, v27

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    sub-double v29, v29, v31

    const-wide v31, 0x4194997000000000L    # 8.64E7

    mul-double v29, v29, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->round(D)J

    move-result-wide v29

    const-wide v31, 0xdc6d62da00L

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 133
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v28, v0

    move-wide/from16 v30, v4

    cmp-long v28, v28, v30

    if-gez v28, :cond_2

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    move-wide/from16 v28, v0

    move-wide/from16 v30, v4

    cmp-long v28, v28, v30

    if-lez v28, :cond_2

    .line 134
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 138
    :goto_1
    goto/16 :goto_0

    .line 136
    :cond_2
    move-object/from16 v28, v3

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    goto :goto_1
.end method
