.class public Lcom/google/appinventor/components/runtime/NxtDrive;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS NXT robot, with functions that can move and turn the robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

.field private vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "NxtDrive"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 64
    move-object v2, v0

    const-string/jumbo v3, "CB"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->DriveMotors(Ljava/lang/String;)V

    .line 65
    move-object v2, v0

    const v3, 0x408a3d71    # 4.32f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->WheelDiameter(F)V

    .line 66
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->StopBeforeDisconnect(Z)V

    .line 67
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V
    .locals 16

    .prologue
    .line 217
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x20

    const-wide/16 v14, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 223
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v3

    neg-int v9, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x20

    const-wide/16 v14, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 225
    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V
    .locals 19

    .prologue
    .line 180
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 181
    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v7, v8

    .line 185
    move-object v8, v1

    move-object v9, v2

    move v10, v7

    move v11, v3

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x20

    move-wide/from16 v16, v4

    invoke-virtual/range {v8 .. v17}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 187
    goto :goto_1

    .line 188
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public DriveMotors()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that are used for driving: the left wheel\'s motor port followed by the right wheel\'s motor port."
        userVisible = false
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtDrive;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public DriveMotors(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "CB"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Ljava/lang/String;

    .line 97
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    .line 98
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 99
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 101
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/NxtDrive;->convertMotorPortLetterToNumber(C)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 105
    .line 98
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "DriveMotors"

    const/16 v7, 0x197

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v3

    .line 104
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v9, v10

    .line 103
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_0
    return-void
.end method

.method public MoveBackward(ID)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward the given distance, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, v2

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-long v6, v6

    move-wide v4, v6

    .line 176
    move-object v6, v0

    const-string/jumbo v7, "MoveBackward"

    move v8, v1

    neg-int v8, v8

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 177
    return-void
.end method

.method public MoveBackwardIndefinitely(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward indefinitely, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .prologue
    .line 160
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    const-string/jumbo v4, "MoveBackwardIndefinitely"

    move v5, v2

    neg-int v5, v5

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 161
    return-void
.end method

.method public MoveForward(ID)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward the given distance, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, v2

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-long v6, v6

    move-wide v4, v6

    .line 168
    move-object v6, v0

    const-string/jumbo v7, "MoveForward"

    move v8, v1

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 169
    return-void
.end method

.method public MoveForwardIndefinitely(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward indefinitely, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .prologue
    .line 154
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    const-string/jumbo v4, "MoveForwardIndefinitely"

    move v5, v2

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 155
    return-void
.end method

.method public Stop()V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the drive motors of the robot."
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    const-string/jumbo v4, "Stop"

    move-object v1, v4

    .line 235
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 240
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 242
    goto :goto_1

    .line 243
    :cond_1
    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/NxtDrive;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    .line 149
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the drive motors before disconnecting."
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtDrive;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    move v0, v1

    return v0
.end method

.method public TurnClockwiseIndefinitely(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power, by powering the left drive motor forward and the right drive motor backward."
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    .line 195
    move v2, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 197
    add-int/lit8 v2, v2, -0x1

    .line 198
    move-object v3, v0

    const-string/jumbo v4, "TurnClockwiseIndefinitely"

    move v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V

    .line 200
    :cond_0
    return-void
.end method

.method public TurnCounterClockwiseIndefinitely(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power, by powering the right drive motor forward and the left drive motor backward."
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    .line 207
    move v2, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 208
    add-int/lit8 v2, v2, -0x1

    .line 210
    move-object v3, v0

    const-string/jumbo v4, "TurnCounterClockwiseIndefinitely"

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V

    .line 213
    :cond_0
    return-void
.end method

.method public WheelDiameter()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels used for driving."
        userVisible = false
    .end annotation

    .prologue
    .line 115
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    double-to-float v2, v2

    move v1, v2

    return v1
.end method

.method public WheelDiameter(F)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 127
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    .line 128
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 14

    .prologue
    .line 71
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Z

    if-eqz v4, :cond_0

    .line 72
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    .line 73
    move-object v4, v1

    const-string/jumbo v5, "Disconnect"

    move v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 75
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method
