.class public final Lcom/google/appinventor/components/runtime/BluetoothClient;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth client component"
    iconName = "images/bluetoothClient.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.BLUETOOTH",
        "android.permission.BLUETOOTH_ADMIN"
    }
.end annotation


# instance fields
.field private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "BluetoothClient"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 39
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothClient;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/List;

    .line 47
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 167
    const/4 v2, 0x1

    move v0, v2

    .line 177
    :goto_0
    return v0

    .line 170
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 171
    move-object v1, v3

    if-nez v2, :cond_1

    .line 173
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 176
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getDeviceClass(Ljava/lang/Object;)I

    move-result v2

    move v1, v2

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    .prologue
    .line 232
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 233
    move-object v4, v7

    if-nez v6, :cond_0

    .line 234
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1f5

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 236
    const/4 v6, 0x0

    move v0, v6

    .line 289
    :goto_0
    return v0

    .line 239
    :cond_0
    move-object v6, v4

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 240
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1f6

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 242
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 247
    :cond_1
    move-object v6, v2

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v14, v6

    move v6, v14

    move v7, v14

    .line 248
    move v5, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 249
    move-object v6, v2

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 252
    :cond_2
    move-object v6, v4

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 253
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1f7

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 255
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 258
    :cond_3
    move-object v6, v4

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 259
    move-object v2, v7

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 260
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1f8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 262
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 265
    :cond_4
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 266
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1f9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 268
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 273
    :cond_5
    move-object v6, v3

    :try_start_0
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 278
    .line 280
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 283
    move-object v6, v0

    move-object v7, v2

    move-object v3, v7

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 1295
    move-object v2, v7

    :try_start_1
    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->secure:Z

    if-nez v6, :cond_6

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    .line 1297
    move-object v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createInsecureRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 1303
    :goto_1
    move-object v6, v4

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->connectToBluetoothSocket(Ljava/lang/Object;)V

    .line 1304
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothClient;->setConnection(Ljava/lang/Object;)V

    .line 1305
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "Connected to Bluetooth device "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v3

    .line 1306
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    .line 1307
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1305
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 284
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1fa

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 277
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1300
    :cond_6
    move-object v6, v3

    move-object v7, v4

    :try_start_2
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 286
    :catch_1
    move-exception v6

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 287
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1fb

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 289
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public final AddressesAndNames()Ljava/util/List;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The addresses and names of paired Bluetooth devices"
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
    .line 141
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 143
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 144
    move-object v2, v6

    if-eqz v5, :cond_1

    .line 145
    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBondedDevices(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 147
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    move-object v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 149
    move-object v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 150
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 152
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public final Connect(Ljava/lang/String;)Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "Connect"

    move-object v4, v1

    const-string/jumbo v5, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final ConnectWithUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "ConnectWithUUID"

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public final IsDevicePaired(Ljava/lang/String;)Z
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the Bluetooth device with the specified address is paired."
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v5, "IsDevicePaired"

    move-object v2, v5

    .line 97
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 98
    move-object v3, v6

    if-nez v5, :cond_0

    .line 99
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x1f5

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 101
    const/4 v5, 0x0

    move v0, v5

    .line 124
    :goto_0
    return v0

    .line 104
    :cond_0
    move-object v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x1f6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 107
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 112
    :cond_1
    move-object v5, v1

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v10, v5

    move v5, v10

    move v6, v10

    .line 113
    move v4, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 114
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 117
    :cond_2
    move-object v5, v3

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 118
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x1f7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 120
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 123
    :cond_3
    move-object v5, v3

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 124
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public final RemoveNameFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the Name from a Bluetooth Address and Name String."
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v6, v3

    move v3, v6

    move v4, v6

    .line 214
    move v2, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 215
    move-object v3, v1

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 217
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothClient;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 82
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothClient;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;

    .line 85
    :cond_0
    return-void
.end method

.method final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothClient;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    move-object v3, v0

    move-object v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;

    .line 76
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothClient;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 77
    const/4 v3, 0x1

    move v0, v3

    :goto_1
    return v0

    .line 52
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 59
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 60
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 61
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 64
    :cond_3
    move-object v3, v2

    if-nez v3, :cond_4

    .line 65
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 67
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 68
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 70
    :cond_5
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method
