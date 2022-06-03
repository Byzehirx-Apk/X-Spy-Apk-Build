.class public Lcom/google/appinventor/components/runtime/DeviceTools;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/devicetools.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_PHONE_STATE"
    }
.end annotation


# instance fields
.field private YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

.field private context:Landroid/content/Context;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:J

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 69
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 64
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    .line 66
    move-object v3, v1

    const-wide/32 v4, 0x100000

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:J

    .line 70
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    .line 71
    const-string/jumbo v3, "DeviceTools"

    const-string/jumbo v4, "Device Tools Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 72
    return-void
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 20

    .prologue
    .line 585
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    move-object v1, v14

    .line 586
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

    .line 587
    move-object v1, v15

    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    move-wide v2, v14

    .line 588
    move-object v14, v1

    invoke-virtual {v14}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v14, v14

    move-wide v4, v14

    .line 590
    move-object v14, v1

    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    int-to-long v14, v14

    move-wide v6, v14

    .line 591
    move-wide v14, v4

    move-wide/from16 v16, v2

    mul-long v14, v14, v16

    const-wide/32 v16, 0x100000

    div-long v14, v14, v16

    move-wide v8, v14

    .line 592
    move-wide v14, v6

    move-wide/from16 v16, v2

    mul-long v14, v14, v16

    const-wide/32 v16, 0x100000

    div-long v14, v14, v16

    move-wide/from16 v18, v14

    move-wide/from16 v14, v18

    move-wide/from16 v16, v18

    .line 593
    move-wide/from16 v10, v16

    move-wide/from16 v16, v8

    sub-long v14, v14, v16

    move-wide v12, v14

    .line 595
    sget-object v14, Lcom/google/appinventor/components/runtime/DeviceTools$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[I

    move-object v15, v0

    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 603
    const/4 v14, 0x0

    move v0, v14

    :goto_0
    return v0

    .line 597
    :pswitch_0
    move-wide v14, v10

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v0, v14

    goto :goto_0

    .line 599
    :pswitch_1
    move-wide v14, v8

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v0, v14

    goto :goto_0

    .line 601
    :pswitch_2
    move-wide v14, v12

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    move v0, v14

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/DeviceTools;)V
    .locals 7

    .prologue
    .line 1240
    move-object v0, p0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 1241
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/DeviceTools;->GotSerial(Ljava/lang/String;)V

    .line 1250
    :goto_0
    return-void

    .line 1243
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/DeviceTools;->GotSerial(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1250
    goto :goto_0

    .line 1245
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1246
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DeviceTools;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "GetSerial"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 1247
    const-string/jumbo v2, "DeviceTools"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1250
    goto :goto_0

    .line 1248
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1249
    const-string/jumbo v2, "DeviceTools"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 59
    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 23

    .prologue
    .line 558
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "mounted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 559
    const/16 v18, 0x0

    move/from16 v3, v18

    .line 580
    :goto_0
    return v3

    .line 562
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v5, v18

    .line 563
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

    .line 564
    move-object/from16 v5, v19

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .line 565
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 566
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 568
    move-wide/from16 v18, v8

    move-wide/from16 v20, v6

    mul-long v18, v18, v20

    const-wide/32 v20, 0x100000

    div-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 569
    move-wide/from16 v18, v10

    move-wide/from16 v20, v6

    mul-long v18, v18, v20

    const-wide/32 v20, 0x100000

    div-long v18, v18, v20

    move-wide/from16 v14, v18

    .line 570
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    sub-long v18, v18, v20

    move-wide/from16 v16, v18

    .line 572
    sget-object v18, Lcom/google/appinventor/components/runtime/DeviceTools$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[I

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 580
    const/16 v18, 0x0

    move/from16 v3, v18

    goto :goto_0

    .line 574
    :pswitch_0
    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a0000    # 1000.0f

    div-float v18, v18, v19

    move/from16 v3, v18

    goto/16 :goto_0

    .line 576
    :pswitch_1
    move-wide/from16 v18, v14

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a0000    # 1000.0f

    div-float v18, v18, v19

    move/from16 v3, v18

    goto/16 :goto_0

    .line 578
    :pswitch_2
    move-wide/from16 v18, v16

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a0000    # 1000.0f

    div-float v18, v18, v19

    move/from16 v3, v18

    goto/16 :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 346
    move-object v2, v8

    if-eqz v7, :cond_0

    .line 347
    move-object v7, v2

    move-object v0, v7

    .line 400
    :goto_0
    return-object v0

    .line 351
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 352
    move-object v2, v8

    if-eqz v7, :cond_8

    .line 353
    const/4 v7, 0x0

    move-object v1, v7

    .line 356
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v8, v2

    const-string/jumbo v9, "text/*"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 357
    move-object v3, v8

    if-eqz v7, :cond_1

    .line 358
    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v1, v7

    .line 361
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_2

    .line 362
    new-instance v7, Ljava/io/InputStreamReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v3, v7

    .line 368
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v7

    .line 369
    const/16 v7, 0x2000

    new-array v7, v7, [C

    move-object v5, v7

    .line 371
    :goto_2
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v6, v8

    if-lez v7, :cond_3

    .line 372
    move-object v7, v4

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_2

    .line 364
    :cond_2
    new-instance v7, Ljava/io/InputStreamReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v7

    goto :goto_1

    .line 374
    :cond_3
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 383
    move-object v7, v1

    if-eqz v7, :cond_4

    .line 385
    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    .line 374
    :cond_4
    :goto_3
    move-object v7, v3

    move-object v0, v7

    goto :goto_0

    .line 386
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 387
    const-string/jumbo v7, "DeviceTools"

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    .line 375
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 377
    :try_start_2
    const-string/jumbo v7, "DeviceTools"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Unable to open content URI as text, ignoring... "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    invoke-static {v7, v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 383
    move-object v7, v1

    if-eqz v7, :cond_5

    .line 385
    move-object v7, v1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 388
    .line 391
    :cond_5
    :goto_4
    const-string/jumbo v7, "DeviceTools"

    const-string/jumbo v8, "Couldn\'t open the URI as a stream, then the URI itself probably serves fairly well as a textual representation"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 392
    move-object v7, v2

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 386
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 387
    const-string/jumbo v7, "DeviceTools"

    move-object v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 388
    goto :goto_4

    .line 378
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 380
    :try_start_4
    const-string/jumbo v7, "DeviceTools"

    const-string/jumbo v8, "Failure loading text"

    move-object v9, v3

    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 383
    move-object v7, v1

    if-eqz v7, :cond_6

    .line 385
    move-object v7, v1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 388
    .line 381
    :cond_6
    :goto_5
    move-object v7, v3

    move-object v0, v7

    goto/16 :goto_0

    .line 386
    :catch_4
    move-exception v7

    move-object v4, v7

    .line 387
    const-string/jumbo v7, "DeviceTools"

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 383
    :catchall_0
    move-exception v7

    move-object v2, v7

    move-object v7, v1

    if-eqz v7, :cond_7

    .line 385
    move-object v7, v1

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 388
    .line 390
    :cond_7
    :goto_6
    move-object v7, v2

    throw v7

    .line 386
    :catch_5
    move-exception v7

    move-object v1, v7

    .line 387
    const-string/jumbo v7, "DeviceTools"

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 394
    :cond_8
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 395
    move-object v1, v8

    if-eqz v7, :cond_9

    .line 396
    const-string/jumbo v7, "DeviceTools"

    const-string/jumbo v8, "all we have is an Intent, then we can just turn that into text"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 397
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 400
    :cond_9
    const-string/jumbo v7, ""

    move-object v0, v7

    goto/16 :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/DeviceTools;)V
    .locals 7

    .prologue
    .line 1162
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/DeviceTools;->GotIMEI(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1168
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1164
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DeviceTools;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "GetIMEI"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 1165
    const-string/jumbo v2, "DeviceTools"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1168
    goto :goto_0

    .line 1166
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1167
    const-string/jumbo v2, "DeviceTools"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 59
    goto :goto_0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 16

    .prologue
    .line 608
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v10, Landroid/app/ActivityManager$MemoryInfo;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object v3, v10

    .line 609
    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    const-string/jumbo v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 610
    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 612
    move-object v10, v3

    iget-wide v10, v10, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    move-wide v4, v10

    .line 613
    move-object v10, v3

    iget-wide v10, v10, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    move-wide v14, v10

    move-wide v10, v14

    move-wide v12, v14

    .line 614
    move-wide v6, v12

    move-wide v12, v4

    sub-long/2addr v10, v12

    move-wide v8, v10

    .line 615
    sget-object v10, Lcom/google/appinventor/components/runtime/DeviceTools$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[I

    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 623
    const/4 v10, 0x0

    move v1, v10

    :goto_0
    return v1

    .line 617
    :pswitch_0
    move-wide v10, v6

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    move v1, v10

    goto :goto_0

    .line 619
    :pswitch_1
    move-wide v10, v4

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    move v1, v10

    goto :goto_0

    .line 621
    :pswitch_2
    move-wide v10, v8

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    move v1, v10

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public AndroidVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the android version of device."
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ApiVersion()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The user-visible SDK version of the framework."
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    return v0
.end method

.method public Board()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The name of the underlying board, like \"goldfish\"."
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public BootloaderVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The system bootloader version number."
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Brand()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The consumer-visible brand with which the product/hardware will be associated, if any."
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public BuildNumber()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the build number(Software) of the device."
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public CheckForDangerousAPK()Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if one of 12 known patching or root emulating packages is installed. The name of the package is not returned, so the user does not know which package name to change. Developed by Cian."
    .end annotation

    .prologue
    .line 489
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 490
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 491
    move-object v2, v4

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "cc.madkite.freedom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "devadvance.rootcloak"

    .line 492
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".robv.android.xposed.installer"

    .line 493
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".saurik.substrate"

    .line 494
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".devadvance.rootcloakplus"

    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".zachspong.temprootremovejb"

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".amphoras.hidemyroot"

    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".formyhm.hideroot"

    .line 498
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".koushikdutta.rommanager"

    .line 499
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".dimonvideo.luckypatcher"

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".chelpus.lackypatch"

    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, ".ramdroid.appquarantine"

    .line 502
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 506
    :goto_1
    return v0

    .line 505
    :cond_1
    goto/16 :goto_0

    .line 506
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public Copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Copy text to clipboard. In case \'Show Success Toast\' is true, the toast with your message will be shown after copying a text to the clipboard."
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    const-string/jumbo v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    move-object v3, v5

    .line 308
    const-string/jumbo v5, "Copied text"

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    move-object v4, v5

    .line 309
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 310
    const-string/jumbo v5, "DeviceTools"

    const-string/jumbo v6, "Text copied: "

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 311
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/DeviceTools;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    if-eqz v5, :cond_0

    .line 312
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .line 317
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 315
    const-string/jumbo v5, "DeviceTools"

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 317
    goto :goto_0
.end method

.method public CountryCode()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The result is the code of your country."
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public DeviceName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The name of the industrial design."
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ExternalStorageAvailable()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Available size of external storage in Gigabytes."
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/DeviceTools;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

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
    .line 528
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/DeviceTools;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

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
    .line 538
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/DeviceTools;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public Fingerprint()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A string that uniquely identifies this build."
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public GetDeviceId()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the unique device specific \'AndroidID\'. Developed by Cian."
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetIMEI()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the IMEI of the device. The result will be then at the \'Got IMEI\' event."
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/DeviceTools$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/DeviceTools$1;-><init>(Lcom/google/appinventor/components/runtime/DeviceTools;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public GetSerial()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "A hardware serial number, if available. Alphanumeric only, case-insensitive. For apps targeting SDK higher than N_MR1 this field is set to UNKNOWN."
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/DeviceTools$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/DeviceTools$2;-><init>(Lcom/google/appinventor/components/runtime/DeviceTools;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public GotIMEI(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get the IMEI after it was requested."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "GotIMEI"

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

    .line 174
    return-void
.end method

.method public GotSerial(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get the serial number after it was requested."
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "GotSerial"

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

    .line 256
    return-void
.end method

.method public Hardware()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The name of the hardware (from the kernel command line or /proc)."
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Id()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Either a changelist number, or a label like \"M4-rc20\"."
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public InternalStorageAvailable()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of available internal storage in Gigabytes."
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/DeviceTools;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

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
    .line 544
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/DeviceTools;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

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
    .line 554
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/DeviceTools;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public LanguageCode()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The result is the code of your device language."
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Manufacturer()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The manufacturer of the product/hardware."
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public MemoryFree()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total free RAM size in Gigabytes."
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/DeviceTools;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

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
    .line 512
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/DeviceTools;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

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
    .line 522
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/DeviceTools;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public ModelName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The end-user-visible name for the end product."
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Parse a text between two strings. Example: text = abcdef, start = a, end = d, result = bc. If there is a problem the \'if Text Not Found\' will be returned."
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "text not found"

    :goto_0
    move-object v4, v5

    .line 287
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 288
    move-object v1, v6

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 289
    move-object v0, v5

    .line 292
    :goto_1
    return-object v0

    .line 285
    :cond_0
    move-object v5, v4

    goto :goto_0

    .line 290
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 291
    const-string/jumbo v5, "DeviceTools"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 292
    move-object v5, v4

    move-object v0, v5

    goto :goto_1
.end method

.method public Paste(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Paste text from clipboard. In case \'Show Success Toast\' is true, the toast with your message will be shown after pasting a text from the clipboard."
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 328
    move-object v2, v4

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    :goto_0
    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 329
    move-object v2, v4

    if-eqz v3, :cond_2

    .line 331
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    move-object v2, v3

    .line 332
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/DeviceTools;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 334
    const-string/jumbo v3, "DeviceTools"

    const-string/jumbo v4, "Text pasted: "

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 335
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    if-eqz v3, :cond_0

    .line 336
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 338
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .line 340
    :goto_1
    return-object v0

    .line 328
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 340
    :cond_2
    const-string/jumbo v3, ""

    move-object v0, v3

    goto :goto_1
.end method

.method public Product()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The name of the overall product."
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public RadioVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the version string for the radio firmware. May return null (if, for instance, the radio is not currently on)."
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Serial()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "DEPRECATED. DO NOT USE THIS ANYMORE. USE \'Get Serial\' INSTEAD!"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 212
    :goto_0
    return-object v0

    .line 204
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 207
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DeviceTools;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Serial"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 208
    const-string/jumbo v2, "DeviceTools"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 210
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 211
    const-string/jumbo v2, "DeviceTools"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public ShowSuccessToast(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/DeviceTools;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    .line 272
    return-void
.end method

.method public ShowSuccessToast()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if \'Show Success Toast\' is enabled."
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    move v0, v1

    return v0
.end method

.method public Tags()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Comma-separated tags describing the build, like \"unsigned,debug\"."
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Type()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The type of build, like \"user\" or \"eng\"."
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isADBDebuggingEnabled()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This returns TRUE if ADB debugging is enabled, which could be a sign of hacking your app, or a compromised device. Developed by Cian."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "adb_enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    .line 412
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/DeviceTools;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:I

    if-lez v1, :cond_0

    .line 413
    const/4 v1, 0x1

    move v0, v1

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isEmulator()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the device operating on an emulator. Developed by Cian."
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "generic"

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "generic_x86"

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "TTVM"

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "Andy"

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 426
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 427
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "generic_x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "Andy"

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "ttVM_Hdragon"

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "Droid4X"

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "nox"

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "generic_x86_64"

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "vbox86p"

    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "generic"

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "generic/sdk/generic"

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "generic_x86/sdk_x86/generic_x86"

    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "Andy"

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "ttVM_Hdragon"

    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "generic_x86_64"

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "generic/google_sdk/generic"

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "vbox86p"

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "generic/vbox86p/vbox86p"

    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "unknown"

    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v2, "goldfish"

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v2, "vbox86"

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v2, "nox"

    .line 446
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v2, "ttVM_x86"

    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "unknown"

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "Genymotion"

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "Andy"

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "MIT"

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "nox"

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "TiantianVM"

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "sdk"

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "google_sdk"

    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Droid4X"

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "TiantianVM"

    .line 457
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Andy"

    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Android SDK built for x86_64"

    .line 459
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Android SDK built for x86"

    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Emulator"

    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "sdk"

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "Andy"

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "ttVM_Hdragon"

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "google_sdk"

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "Droid4X"

    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "nox"

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "sdk_x86"

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "sdk_google"

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "vbox86p"

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string/jumbo v2, "nox"

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 474
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isPlayStoreInstalled()Z
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the app was installed from Play Store. Developed by Cian."
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "com.android.vending"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "com.google.android.feedback"

    aput-object v6, v4, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 480
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/DeviceTools;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 481
    move-object v2, v4

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 482
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 484
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method
