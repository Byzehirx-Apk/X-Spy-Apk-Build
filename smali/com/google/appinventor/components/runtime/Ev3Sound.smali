.class public Lcom/google/appinventor/components/runtime/Ev3Sound;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to sound functionalities on LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
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
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "Ev3Sound"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public PlayTone(III)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 52
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    const/16 v6, 0x64

    if-gt v5, v6, :cond_0

    move v5, v2

    const/16 v6, 0xfa

    if-lt v5, v6, :cond_0

    move v5, v2

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_0

    move v5, v3

    if-ltz v5, :cond_0

    move v5, v3

    const v6, 0xffff

    if-le v5, v6, :cond_1

    .line 53
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Ev3Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v4

    const/16 v8, 0xc1f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 54
    .line 67
    :goto_0
    return-void

    .line 57
    :cond_1
    const/16 v5, -0x6c

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "cccc"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 62
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v1

    int-to-byte v13, v13

    .line 63
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v2

    int-to-short v13, v13

    .line 64
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move v13, v3

    int-to-short v13, v13

    .line 65
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    aput-object v13, v11, v12

    .line 57
    invoke-static/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v5

    move-object v1, v5

    .line 66
    move-object v5, v0

    move-object v6, v4

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Ev3Sound;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v5

    .line 67
    goto :goto_0
.end method

.method public StopSound()V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop any sound on the robot."
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 75
    const/16 v3, -0x6c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "c"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 80
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    .line 75
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    move-object v2, v3

    .line 81
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Sound;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v3

    .line 82
    return-void
.end method
