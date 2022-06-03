.class public Lcom/google/appinventor/components/runtime/MemoryInfo;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/devicetools.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private final context:Landroid/content/Context;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 47
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    move-object v3, v1

    const-wide/32 v4, 0x100000

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:J

    .line 49
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MemoryInfo;->context:Landroid/content/Context;

    .line 50
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MemoryInfo;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 51
    return-void
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 20

    .prologue
    .line 134
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    move-object v1, v14

    .line 135
    new-instance v14, Landroid/os/StatFs;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    .line 136
    move-object v1, v15

    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    move-wide v2, v14

    .line 137
    move-object v14, v1

    invoke-virtual {v14}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v14, v14

    move-wide v4, v14

    .line 139
    move-object v14, v1

    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    int-to-long v14, v14

    move-wide v6, v14

    .line 140
    move-wide v14, v4

    move-wide/from16 v16, v2

    mul-long v14, v14, v16

    const-wide/32 v16, 0x100000

    div-long v14, v14, v16

    move-wide v8, v14

    .line 141
    move-wide v14, v6

    move-wide/from16 v16, v2

    mul-long v14, v14, v16

    const-wide/32 v16, 0x100000

    div-long v14, v14, v16

    move-wide/from16 v18, v14

    move-wide/from16 v14, v18

    move-wide/from16 v16, v18

    .line 142
    move-wide/from16 v10, v16

    move-wide/from16 v16, v8

    sub-long v14, v14, v16

    move-wide v12, v14

    .line 144
    sget-object v14, Lcom/google/appinventor/components/runtime/MemoryInfo$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[I

    move-object v15, v0

    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 152
    const/4 v14, 0x0

    move v0, v14

    :goto_0
    return v0

    .line 146
    :pswitch_0
    move-wide v14, v10

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v0, v14

    goto :goto_0

    .line 148
    :pswitch_1
    move-wide v14, v8

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v0, v14

    goto :goto_0

    .line 150
    :pswitch_2
    move-wide v14, v12

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v0, v14

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 23

    .prologue
    .line 102
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "mounted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 103
    const/16 v18, 0x0

    move/from16 v3, v18

    .line 124
    :goto_0
    return v3

    .line 106
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/MemoryInfo;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v5, v18

    .line 107
    new-instance v18, Landroid/os/StatFs;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    .line 108
    move-object/from16 v5, v19

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .line 109
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 110
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 112
    move-wide/from16 v18, v8

    move-wide/from16 v20, v6

    mul-long v18, v18, v20

    const-wide/32 v20, 0x100000

    div-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 113
    move-wide/from16 v18, v10

    move-wide/from16 v20, v6

    mul-long v18, v18, v20

    const-wide/32 v20, 0x100000

    div-long v18, v18, v20

    move-wide/from16 v14, v18

    .line 114
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    sub-long v18, v18, v20

    move-wide/from16 v16, v18

    .line 116
    sget-object v18, Lcom/google/appinventor/components/runtime/MemoryInfo$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[I

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 124
    const/16 v18, 0x0

    move/from16 v3, v18

    goto :goto_0

    .line 118
    :pswitch_0
    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a0000    # 1000.0f

    div-float v18, v18, v19

    move/from16 v3, v18

    goto/16 :goto_0

    .line 120
    :pswitch_1
    move-wide/from16 v18, v14

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a0000    # 1000.0f

    div-float v18, v18, v19

    move/from16 v3, v18

    goto/16 :goto_0

    .line 122
    :pswitch_2
    move-wide/from16 v18, v16

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a0000    # 1000.0f

    div-float v18, v18, v19

    move/from16 v3, v18

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 16

    .prologue
    .line 157
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v10, Landroid/app/ActivityManager$MemoryInfo;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object v3, v10

    .line 158
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/MemoryInfo;->context:Landroid/content/Context;

    const-string/jumbo v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 159
    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 161
    move-object v10, v3

    iget-wide v10, v10, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    move-wide v4, v10

    .line 162
    move-object v10, v3

    iget-wide v10, v10, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    move-wide v14, v10

    move-wide v10, v14

    move-wide v12, v14

    .line 163
    move-wide v6, v12

    move-wide v12, v4

    sub-long/2addr v10, v12

    move-wide v8, v10

    .line 164
    sget-object v10, Lcom/google/appinventor/components/runtime/MemoryInfo$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[I

    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 172
    const/4 v10, 0x0

    move v1, v10

    :goto_0
    return v1

    .line 166
    :pswitch_0
    move-wide v10, v6

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    move v1, v10

    goto :goto_0

    .line 168
    :pswitch_1
    move-wide v10, v4

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    move v1, v10

    goto :goto_0

    .line 170
    :pswitch_2
    move-wide v10, v8

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    move v1, v10

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public ExternalStorageAvailable()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Available size of external storage in Gigabytes."
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public ExternalStorageTotal()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total external storage size in Gigabytes."
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public ExternalStorageUsed()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of used-external-storage in Gigabytes."
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public InternalStorageAvailable()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of available internal storage in Gigabytes."
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/MemoryInfo;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public InternalStorageTotal()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total size of internal storage in Gigabytes."
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/MemoryInfo;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public InternalStorageUsed()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of used-internal-storage in Gigabytes."
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/MemoryInfo;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public MemoryFree()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total free RAM size in Gigabytes."
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/MemoryInfo;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public MemoryTotal()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total RAM size in Gigabytes."
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/MemoryInfo;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public MemoryUsed()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of used-memory in Gigabytes."
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/MemoryInfo;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method
