.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "NxtDirectCommands"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 696
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 697
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, -0x7c

    aput-byte v6, v4, v5

    .line 698
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 699
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v2, v4

    .line 700
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    .line 701
    return-void
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .prologue
    .line 705
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "DeleteFile"

    move-object v2, v4

    .line 706
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 707
    .line 721
    :goto_0
    return-void

    .line 709
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 710
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x196

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 712
    goto :goto_0

    .line 715
    :cond_1
    const/16 v4, 0x16

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 716
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 717
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, -0x7b

    aput-byte v6, v4, v5

    .line 718
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x2

    const/16 v8, 0x13

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 719
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v1, v4

    .line 720
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    .line 721
    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .prologue
    .line 594
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const-string/jumbo v18, "DownloadFile"

    move-object/from16 v5, v18

    .line 595
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 596
    .line 643
    :goto_0
    return-void

    .line 598
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    .line 599
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/16 v21, 0x19e

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 601
    goto :goto_0

    .line 603
    :cond_1
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2

    .line 604
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/16 v21, 0x19f

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 606
    goto :goto_0

    .line 610
    :cond_2
    move-object/from16 v18, v2

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    move-object/from16 v3, v18

    .line 612
    :try_start_1
    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v20

    const/16 v21, 0x400

    invoke-direct/range {v19 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v6, v18

    .line 614
    move-object/from16 v18, v3

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 615
    move-object/from16 v18, v4

    const-string/jumbo v19, ".rxe"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v18, v4

    const-string/jumbo v19, ".ric"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    .line 616
    move-object/from16 v14, v20

    move-object/from16 v11, v19

    move-object/from16 v10, v18

    .line 1780
    const/16 v18, 0x1a

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 1781
    move-object/from16 v15, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    .line 1782
    move-object/from16 v18, v15

    const/16 v19, 0x1

    const/16 v20, -0x77

    aput-byte v20, v18, v19

    .line 1783
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v21, 0x2

    const/16 v22, 0x13

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 1784
    move-object/from16 v18, v10

    move-wide/from16 v19, v8

    move-object/from16 v21, v15

    const/16 v22, 0x16

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 1785
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v18

    move-object/from16 v14, v18

    .line 1786
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    const/16 v22, 0x1

    aget-byte v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1787
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1788
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v18

    .line 617
    :goto_1
    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 618
    move-object/from16 v4, v19

    if-nez v18, :cond_9

    .line 635
    move-object/from16 v18, v6

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 638
    move-object/from16 v18, v3

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v18

    .line 619
    goto/16 :goto_0

    .line 1790
    :cond_4
    move-object/from16 v18, v10

    :try_start_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": unexpected return package length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " (expected 4)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1794
    :cond_5
    const/16 v18, 0x0

    .line 616
    goto :goto_1

    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    .line 617
    move-object/from16 v14, v20

    move-object/from16 v11, v19

    move-object/from16 v10, v18

    .line 2648
    const/16 v18, 0x1a

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 2649
    move-object/from16 v15, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    .line 2650
    move-object/from16 v18, v15

    const/16 v19, 0x1

    const/16 v20, -0x7f

    aput-byte v20, v18, v19

    .line 2651
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v21, 0x2

    const/16 v22, 0x13

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 2652
    move-object/from16 v18, v10

    move-wide/from16 v19, v8

    move-object/from16 v21, v15

    const/16 v22, 0x16

    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 2653
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v18

    move-object/from16 v14, v18

    .line 2654
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    const/16 v22, 0x1

    aget-byte v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2655
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2656
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_1

    .line 2658
    :cond_7
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": unexpected return package length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " (expected 4)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v18

    .line 2662
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 623
    :cond_9
    const/16 v18, 0x20

    :try_start_6
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 624
    const-wide/16 v18, 0x0

    move-wide/from16 v12, v18

    .line 625
    :goto_2
    move-wide/from16 v18, v12

    move-wide/from16 v20, v8

    cmp-long v18, v18, v20

    if-gez v18, :cond_e

    .line 626
    const-wide/16 v18, 0x20

    move-wide/from16 v20, v8

    move-wide/from16 v22, v12

    sub-long v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 627
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/16 v20, 0x0

    move/from16 v21, v10

    invoke-virtual/range {v18 .. v21}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    .line 628
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v21, v7

    move/from16 v22, v10

    move/from16 v17, v22

    move-object/from16 v16, v21

    move/from16 v14, v20

    move-object/from16 v11, v19

    move-object/from16 v10, v18

    .line 2667
    move/from16 v18, v17

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 2668
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    const-string/jumbo v20, "length must be <= 32"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 632
    :catchall_0
    move-exception v18

    move-object/from16 v7, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)V

    .line 633
    move-object/from16 v18, v7

    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 635
    :catchall_1
    move-exception v18

    move-object/from16 v4, v18

    move-object/from16 v18, v6

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 636
    move-object/from16 v18, v4

    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 638
    :catchall_2
    move-exception v18

    move-object/from16 v4, v18

    move-object/from16 v18, v3

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v18

    .line 639
    move-object/from16 v18, v4

    throw v18
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 640
    :catch_0
    move-exception v18

    move-object/from16 v3, v18

    .line 641
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/16 v21, 0x1a0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v27, v25

    move-object/from16 v25, v27

    move-object/from16 v26, v27

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    .line 642
    invoke-virtual/range {v26 .. v26}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 641
    invoke-virtual/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 643
    goto/16 :goto_0

    .line 2671
    :cond_a
    move/from16 v18, v17

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    :try_start_a
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    .line 2672
    move-object/from16 v15, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    .line 2673
    move-object/from16 v18, v15

    const/16 v19, 0x1

    const/16 v20, -0x7d

    aput-byte v20, v18, v19

    .line 2674
    move-object/from16 v18, v10

    move/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v21, 0x2

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 2675
    move-object/from16 v18, v16

    const/16 v19, 0x0

    move-object/from16 v20, v15

    const/16 v21, 0x3

    move/from16 v22, v17

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2676
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v18

    move-object/from16 v14, v18

    .line 2677
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    const/16 v22, 0x1

    aget-byte v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2678
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2679
    move-object/from16 v18, v10

    move-object/from16 v19, v14

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v18

    move/from16 v27, v18

    move/from16 v18, v27

    move/from16 v19, v27

    .line 2680
    move/from16 v14, v19

    move/from16 v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 2681
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": only "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " bytes were written (expected "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 2683
    new-instance v18, Ljava/io/IOException;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    const-string/jumbo v20, "Unable to write file on robot"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2685
    :cond_b
    move/from16 v18, v14

    .line 628
    :goto_3
    move/from16 v10, v18

    .line 629
    move-wide/from16 v18, v12

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 630
    goto/16 :goto_2

    .line 2687
    :cond_c
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": unexpected return package length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " (expected 6)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v18

    .line 2691
    :cond_d
    const/16 v18, 0x0

    goto :goto_3

    .line 632
    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 633
    .line 635
    move-object/from16 v18, v6

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 636
    .line 638
    move-object/from16 v18, v3

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    move-result v18

    .line 639
    goto/16 :goto_0
.end method

.method public GetBatteryLevel()I
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    const-string/jumbo v4, "GetBatteryLevel"

    move-object v1, v4

    .line 359
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    const/4 v4, 0x0

    move v0, v4

    .line 375
    :goto_0
    return v0

    .line 363
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 364
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 365
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, 0xb

    aput-byte v6, v4, v5

    .line 366
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 367
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 369
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 371
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "GetBatteryLevel: unexpected return package length "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 375
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .prologue
    .line 818
    move-object v0, p0

    const-string/jumbo v4, "GetBrickName"

    move-object v1, v4

    .line 819
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 820
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 830
    :goto_0
    return-object v0

    .line 823
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 824
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 825
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, -0x65

    aput-byte v6, v4, v5

    .line 826
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 827
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 828
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 830
    :cond_1
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    const-string/jumbo v5, "GetCurrentProgramName"

    move-object v1, v5

    .line 519
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 520
    const-string/jumbo v5, ""

    move-object v0, v5

    .line 538
    :goto_0
    return-object v0

    .line 523
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [B

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 524
    move-object v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    .line 525
    move-object v5, v2

    const/4 v6, 0x1

    const/16 v7, 0x11

    aput-byte v7, v5, v6

    .line 526
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    move-object v3, v5

    .line 527
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v5

    move v10, v5

    move v5, v10

    move v6, v10

    .line 528
    move v4, v6

    if-nez v5, :cond_1

    .line 530
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 532
    :cond_1
    move v5, v4

    const/16 v6, 0xec

    if-ne v5, v6, :cond_2

    .line 534
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0

    .line 537
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    .line 538
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    move-object v0, p0

    const-string/jumbo v4, "GetFirmwareVersion"

    move-object v1, v4

    .line 762
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 763
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 776
    :goto_0
    return-object v0

    .line 766
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 767
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 768
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, -0x78

    aput-byte v6, v4, v5

    .line 769
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 770
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 771
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 772
    move-object v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    const/4 v7, 0x6

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 773
    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    const/4 v7, 0x4

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 774
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    .line 776
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "GetInputValues"

    move-object v2, v4

    .line 241
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 269
    :goto_0
    return-object v0

    .line 247
    :cond_0
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v4

    .line 252
    .line 254
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 255
    move-object v1, v5

    if-eqz v4, :cond_1

    .line 256
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 257
    move-object v2, v5

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 258
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 259
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 260
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 261
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 262
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 263
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0xc

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 264
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0xe

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 265
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x198

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto/16 :goto_0

    .line 269
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v5, "GetOutputState"

    move-object v2, v5

    .line 188
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 217
    :goto_0
    return-object v0

    .line 194
    :cond_0
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    .line 199
    .line 201
    move-object v5, v0

    move-object v1, v5

    .line 1221
    const/4 v5, 0x3

    new-array v5, v5, [B

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 1222
    move-object v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    .line 1223
    move-object v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x6

    aput-byte v7, v5, v6

    .line 1224
    move-object v5, v1

    move v6, v3

    move-object v7, v4

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 1225
    move-object v5, v1

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    move-object v3, v5

    .line 1226
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1227
    move-object v5, v3

    array-length v5, v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_1

    .line 1228
    move-object v5, v3

    .line 201
    :goto_1
    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 202
    move-object v1, v6

    if-eqz v5, :cond_3

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 204
    move-object v2, v6

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 205
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 206
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 207
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 208
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 209
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x9

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 210
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0xd

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 211
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x11

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 212
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0x15

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 213
    move-object v5, v2

    move-object v0, v5

    goto/16 :goto_0

    .line 196
    :catch_0
    move-exception v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x197

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    goto/16 :goto_0

    .line 1230
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (expected 25)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1234
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 217
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    const-string/jumbo v4, "KeepAlive"

    move-object v1, v4

    .line 395
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 396
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 411
    :goto_0
    return-wide v0

    .line 399
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 400
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 401
    move-object v4, v2

    const/4 v5, 0x1

    const/16 v6, 0xd

    aput-byte v6, v4, v5

    .line 402
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 403
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 405
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 407
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "KeepAlive: unexpected return package length "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 7)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 411
    :cond_2
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v6, "ListFiles"

    move-object v2, v6

    .line 727
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 728
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 754
    :goto_0
    return-object v0

    .line 731
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 733
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 734
    const-string/jumbo v6, "*.*"

    move-object v1, v6

    .line 737
    :cond_1
    const/16 v6, 0x16

    new-array v6, v6, [B

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 738
    move-object v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    .line 739
    move-object v6, v4

    const/4 v7, 0x1

    const/16 v8, -0x7a

    aput-byte v8, v6, v7

    .line 740
    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    const/4 v9, 0x2

    const/16 v10, 0x13

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 741
    move-object v6, v0

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v6

    move-object v1, v6

    .line 742
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, v4

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    move v4, v6

    .line 743
    :goto_1
    move v6, v4

    if-nez v6, :cond_2

    .line 744
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    move v5, v6

    .line 745
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 746
    move-object v6, v3

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 747
    const/4 v6, 0x3

    new-array v6, v6, [B

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 748
    move-object v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    .line 749
    move-object v6, v4

    const/4 v7, 0x1

    const/16 v8, -0x79

    aput-byte v8, v6, v7

    .line 750
    move-object v6, v0

    move v7, v5

    move-object v8, v4

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 751
    move-object v6, v0

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v6

    move-object v1, v6

    .line 752
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, v4

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    move v4, v6

    .line 753
    goto :goto_1

    .line 754
    :cond_2
    move-object v6, v3

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "LsGetStatus"

    move-object v2, v4

    .line 417
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 418
    const/4 v4, 0x0

    move v0, v4

    .line 430
    :goto_0
    return v0

    .line 423
    :cond_0
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v4

    .line 428
    .line 430
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 425
    :catch_0
    move-exception v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x198

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 427
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v6, "LsRead"

    move-object v2, v6

    .line 487
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 488
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 512
    :goto_0
    return-object v0

    .line 493
    :cond_0
    move-object v6, v0

    move-object v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v3, v6

    .line 498
    .line 500
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;I)[B

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 501
    move-object v1, v7

    if-eqz v6, :cond_2

    .line 502
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 503
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v6

    move v3, v6

    .line 504
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 505
    move-object v6, v1

    move v7, v4

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v5, v6

    .line 506
    move-object v6, v2

    move v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 504
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 495
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v2

    const/16 v9, 0x198

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 497
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    goto :goto_0

    .line 508
    :cond_1
    move-object v6, v2

    move-object v0, v6

    goto :goto_0

    .line 512
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 18
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .prologue
    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v8, "LsWrite"

    move-object v4, v8

    .line 437
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 438
    .line 480
    :goto_0
    return-void

    .line 443
    :cond_0
    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    move v5, v8

    .line 448
    .line 450
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    const/16 v9, 0x10

    if-le v8, v9, :cond_1

    .line 451
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x19b

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 453
    goto :goto_0

    .line 445
    :catch_0
    move-exception v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x198

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v1

    aput-object v15, v13, v14

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 447
    goto :goto_0

    .line 456
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    .line 457
    move-object v1, v9

    array-length v8, v8

    new-array v8, v8, [B

    move-object v2, v8

    .line 458
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_3

    .line 461
    move-object v8, v1

    move v9, v6

    aget-object v8, v8, v9

    .line 462
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 465
    move-object v8, v7

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    move v7, v8

    .line 470
    .line 471
    move-object v8, v2

    move v9, v6

    move v10, v7

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 472
    move v8, v7

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    move/from16 v17, v8

    move/from16 v8, v17

    move/from16 v9, v17

    .line 473
    move v7, v9

    if-eqz v8, :cond_2

    move v8, v7

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 474
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x19d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 475
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 474
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 476
    goto/16 :goto_0

    .line 467
    :catch_1
    move-exception v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    move-object v10, v4

    const/16 v11, 0x19c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 468
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 467
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 469
    goto/16 :goto_0

    .line 458
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 479
    :cond_3
    move-object v8, v0

    move-object v9, v4

    move v10, v5

    move-object v11, v2

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;I[BI)V

    .line 480
    goto/16 :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    move v1, p1

    const-string/jumbo v5, "MessageRead"

    move-object v2, v5

    .line 544
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 545
    const-string/jumbo v5, ""

    move-object v0, v5

    .line 580
    :goto_0
    return-object v0

    .line 551
    :cond_0
    move v5, v1

    if-lez v5, :cond_1

    move v5, v1

    const/16 v6, 0xa

    if-le v5, v6, :cond_2

    .line 552
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x199

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v1

    .line 553
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 552
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 554
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0

    .line 557
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 559
    const/4 v5, 0x5

    new-array v5, v5, [B

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 560
    move-object v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    .line 561
    move-object v5, v3

    const/4 v6, 0x1

    const/16 v7, 0x13

    aput-byte v7, v5, v6

    .line 562
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 563
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 564
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v3

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 565
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    move-object v4, v5

    .line 566
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    move-object v8, v3

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 567
    move-object v5, v4

    array-length v5, v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_4

    .line 568
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    move v13, v5

    move v5, v13

    move v6, v13

    .line 569
    move v2, v6

    move v6, v1

    if-eq v5, v6, :cond_3

    .line 570
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "MessageRead: unexpected return mailbox: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 573
    :cond_3
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v1, v5

    .line 574
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x5

    move v8, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 576
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "MessageRead: unexpected return package length "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (expected 64)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 580
    :cond_5
    const-string/jumbo v5, ""

    move-object v0, v5

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v6, "MessageWrite"

    move-object v3, v6

    .line 299
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 300
    .line 329
    :goto_0
    return-void

    .line 306
    :cond_0
    move v6, v1

    if-lez v6, :cond_1

    move v6, v1

    const/16 v7, 0xa

    if-le v6, v7, :cond_2

    .line 307
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v3

    const/16 v9, 0x199

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v1

    .line 308
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 307
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 309
    goto :goto_0

    .line 311
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v14, v6

    move v6, v14

    move v7, v14

    .line 312
    move v4, v7

    const/16 v7, 0x3a

    if-le v6, v7, :cond_3

    .line 313
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v3

    const/16 v9, 0x19a

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 315
    goto :goto_0

    .line 318
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 320
    move v6, v4

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [B

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 321
    move-object v5, v7

    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v6, v7

    .line 322
    move-object v6, v5

    const/4 v7, 0x1

    const/16 v8, 0x9

    aput-byte v8, v6, v7

    .line 323
    move-object v6, v0

    move v7, v1

    move-object v8, v5

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 325
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v5

    const/4 v9, 0x3

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 326
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    const/4 v9, 0x4

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 328
    move-object v6, v0

    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 329
    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "PlaySoundFile"

    move-object v2, v4

    .line 102
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 106
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x196

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".rso"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 114
    :cond_2
    const/16 v4, 0x17

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 115
    move-object v3, v5

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 116
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x2

    aput-byte v6, v4, v5

    .line 117
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 118
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x3

    const/16 v8, 0x13

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 119
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 120
    goto :goto_0
.end method

.method public PlayTone(II)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move v1, p1

    move v2, p2

    const-string/jumbo v5, "PlayTone"

    move-object v3, v5

    .line 125
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    .line 143
    :goto_0
    return-void

    .line 129
    :cond_0
    move v5, v1

    const/16 v6, 0xc8

    if-ge v5, v6, :cond_1

    .line 130
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "frequencyHz "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is invalid, using 200."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 131
    const/16 v5, 0xc8

    move v1, v5

    .line 133
    :cond_1
    move v5, v1

    const/16 v6, 0x36b0

    if-le v5, v6, :cond_2

    .line 134
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "frequencyHz "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is invalid, using 14000."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 135
    const/16 v5, 0x36b0

    move v1, v5

    .line 137
    :cond_2
    const/4 v5, 0x6

    new-array v5, v5, [B

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 138
    move-object v4, v6

    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v5, v6

    .line 139
    move-object v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    .line 140
    move-object v5, v0

    move v6, v1

    move-object v7, v4

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 141
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 142
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 143
    goto :goto_0
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "ResetInputScaledValue"

    move-object v2, v4

    .line 275
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 276
    .line 294
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v4

    .line 286
    .line 288
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;I)V

    .line 289
    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    .line 290
    move-object v1, v5

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 291
    move-object v4, v1

    const/4 v5, 0x1

    const/16 v6, 0x8

    aput-byte v6, v4, v5

    .line 292
    move-object v4, v0

    move v5, v3

    move-object v6, v1

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 293
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 294
    goto :goto_0

    .line 283
    :catch_0
    move-exception v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x198

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 285
    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    const-string/jumbo v5, "ResetMotorPosition"

    move-object v3, v5

    .line 334
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    .line 353
    :goto_0
    return-void

    .line 340
    :cond_0
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v4, v5

    .line 345
    .line 347
    const/4 v5, 0x4

    new-array v5, v5, [B

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 348
    move-object v1, v6

    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v5, v6

    .line 349
    move-object v5, v1

    const/4 v6, 0x1

    const/16 v7, 0xa

    aput-byte v7, v5, v6

    .line 350
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 351
    move-object v5, v0

    move v6, v2

    move-object v7, v1

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 352
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 353
    goto :goto_0

    .line 342
    :catch_0
    move-exception v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v3

    const/16 v8, 0x197

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 344
    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "SetBrickName"

    move-object v2, v4

    .line 804
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 805
    .line 814
    :goto_0
    return-void

    .line 808
    :cond_0
    const/16 v4, 0x12

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 809
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 810
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, -0x68

    aput-byte v6, v4, v5

    .line 811
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x2

    const/16 v8, 0xf

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 812
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v1, v4

    .line 813
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    .line 814
    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v6, "SetInputMode"

    move-object v4, v6

    .line 169
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 170
    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    move-object v6, v0

    move-object v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v5, v6

    .line 180
    .line 182
    move-object v6, v0

    move-object v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;III)V

    .line 183
    goto :goto_0

    .line 177
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x198

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 179
    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 23
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .prologue
    .line 148
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    const-string/jumbo v12, "SetOutputState"

    move-object v10, v12

    .line 149
    move-object v12, v1

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 150
    .line 164
    :goto_0
    return-void

    .line 155
    :cond_0
    move-object v12, v1

    move-object v13, v2

    :try_start_0
    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    move v11, v12

    .line 160
    .line 162
    move-object v12, v1

    move-object v13, v10

    move v14, v11

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v1

    move/from16 v19, v6

    .line 163
    invoke-virtual/range {v18 .. v19}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sanitizeTurnRatio(I)I

    move-result v18

    move/from16 v19, v7

    move-wide/from16 v20, v8

    .line 162
    invoke-virtual/range {v12 .. v21}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 164
    goto :goto_0

    .line 157
    :catch_0
    move-exception v12

    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v13, v1

    move-object v14, v10

    const/16 v15, 0x197

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move-object/from16 v19, v2

    aput-object v19, v17, v18

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 159
    goto :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "StartProgram"

    move-object v2, v4

    .line 66
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    .line 83
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x195

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".rxe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 78
    :cond_2
    const/16 v4, 0x16

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 79
    move-object v3, v5

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 80
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 81
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x2

    const/16 v8, 0x13

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 82
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 83
    goto :goto_0
.end method

.method public StopProgram()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    const-string/jumbo v3, "StopProgram"

    move-object v1, v3

    .line 89
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [B

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 94
    move-object v2, v4

    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    .line 95
    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    .line 96
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 97
    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    const-string/jumbo v3, "StopSoundPlayback"

    move-object v1, v3

    .line 381
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    .line 389
    :goto_0
    return-void

    .line 385
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [B

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 386
    move-object v2, v4

    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    .line 387
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0xc

    aput-byte v5, v3, v4

    .line 388
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 389
    goto :goto_0
.end method
