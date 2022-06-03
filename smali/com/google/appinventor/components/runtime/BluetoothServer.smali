.class public final Lcom/google/appinventor/components/runtime/BluetoothServer;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth server component"
    iconName = "images/bluetoothServer.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.BLUETOOTH",
        "android.permission.BLUETOOTH_ADMIN"
    }
.end annotation


# static fields
.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private final arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "BluetoothServer"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 50
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    .line 51
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    return-void
.end method

.method private accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 72
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 73
    move-object v4, v7

    if-nez v6, :cond_0

    .line 74
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1f5

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 76
    .line 154
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v6, v4

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1f6

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 82
    goto :goto_0

    .line 87
    :cond_1
    move-object v6, v3

    :try_start_0
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v5, v6

    .line 92
    .line 96
    move-object v6, v0

    :try_start_1
    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/BluetoothServer;->secure:Z

    if-nez v6, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_2

    .line 98
    move-object v6, v4

    move-object v7, v2

    move-object v8, v5

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/Object;Ljava/lang/String;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 104
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 111
    new-instance v6, Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothServer$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 154
    goto :goto_0

    .line 89
    :catch_0
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

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

    .line 91
    goto :goto_0

    .line 101
    :cond_2
    move-object v6, v4

    move-object v7, v2

    move-object v8, v5

    :try_start_2
    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->listenUsingRfcommWithServiceRecord(Ljava/lang/Object;Ljava/lang/String;Ljava/util/UUID;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move-object v2, v6

    goto :goto_1

    .line 106
    :catch_1
    move-exception v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x1fc

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 108
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final AcceptConnection(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Accept an incoming connection with the Serial Port Profile (SPP)."
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AcceptConnection"

    move-object v4, v1

    const-string/jumbo v5, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final AcceptConnectionWithUUID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Accept an incoming connection with a specific UUID."
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "AcceptConnectionWithUUID"

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public final ConnectionAccepted()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a bluetooth connection has been accepted."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer;->logTag:Ljava/lang/String;

    const-string/jumbo v2, "Successfully accepted bluetooth connection."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 186
    move-object v1, v0

    const-string/jumbo v2, "ConnectionAccepted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 187
    return-void
.end method

.method public final IsAccepting()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final StopAccepting()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop accepting an incoming connection."
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 171
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 173
    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothServerSocket(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 178
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 175
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothServer;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Error while closing bluetooth server socket: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 178
    :cond_0
    goto :goto_0
.end method
