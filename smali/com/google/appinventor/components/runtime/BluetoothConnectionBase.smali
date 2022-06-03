.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private connectedBluetoothSocket:Ljava/lang/Object;

.field private delimiter:B

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field protected secure:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 61
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 66
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    .line 69
    move-object v3, v0

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    .line 71
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    .line 72
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 79
    move-object v3, v0

    const-string/jumbo v4, "Not Null"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 80
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 81
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 82
    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    .line 104
    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    .line 110
    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method private prepareToDie()V
    .locals 2

    .prologue
    .line 807
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 808
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 810
    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v1

    .line 139
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

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 124
    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    const-string/jumbo v3, "BytesAvailableToReceive"

    move-object v1, v3

    .line 530
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 531
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x203

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 533
    const/4 v3, 0x0

    move v0, v3

    .line 541
    :goto_0
    return v0

    .line 537
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    goto :goto_0

    .line 538
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 539
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x205

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    .line 540
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 539
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 541
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    const-string/jumbo v2, "check"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 254
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v2

    move-object v2, v0

    const-string/jumbo v3, "CharacterEncoding"

    const/16 v4, 0x207

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 259
    goto :goto_0
.end method

.method public DelimiterByte()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-byte v1, v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    move v0, v1

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move v1, p1

    const-string/jumbo v5, "DelimiterByte"

    move-object v2, v5

    .line 280
    move v5, v1

    int-to-byte v5, v5

    move v4, v5

    .line 281
    move v5, v1

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    move v12, v5

    move v5, v12

    move v6, v12

    .line 282
    move v3, v6

    if-eqz v5, :cond_0

    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 283
    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x1ff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    .line 284
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 283
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 285
    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    move-object v5, v0

    move v6, v4

    iput-byte v6, v5, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    .line 288
    goto :goto_0
.end method

.method public final Disconnect()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 174
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    .line 176
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothSocket(Ljava/lang/Object;)V

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string/jumbo v3, "Disconnected from Bluetooth device."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 180
    .line 181
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 183
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 184
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 185
    return-void

    .line 178
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Error while disconnecting: "

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

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 151
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 152
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const/4 v2, 0x1

    move v0, v2

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public HighByteFirst(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    .line 243
    return-void

    .line 242
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method

.method public HighByteFirst()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final IsConnected()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

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

.method public ReceiveSigned1ByteNumber()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    .line 576
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "ReceiveSigned1ByteNumber"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 577
    move-object v1, v3

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 578
    const/4 v2, 0x0

    move v0, v2

    .line 581
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "ReceiveSigned2ByteNumber"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 605
    move-object v1, v3

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 606
    const/4 v2, 0x0

    move v0, v2

    .line 612
    :goto_0
    return v0

    .line 609
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 610
    move-object v2, v1

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v1

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 612
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v1

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    .line 640
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "ReceiveSigned4ByteNumber"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 641
    move-object v1, v3

    array-length v2, v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 642
    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 651
    :goto_0
    return-wide v0

    .line 645
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 646
    move-object v2, v1

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v1

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object v3, v1

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    move-object v3, v1

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 651
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v1

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object v3, v1

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    move-object v3, v1

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    const-string/jumbo v6, "ReceiveSignedBytes"

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v5

    move-object v1, v5

    .line 697
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 698
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 699
    move-object v5, v1

    move v6, v3

    aget-byte v5, v5, v6

    move v4, v5

    .line 700
    move-object v5, v2

    move v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    :cond_0
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const-string/jumbo v4, "ReceiveText"

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v3

    move-object v2, v3

    .line 558
    move v3, v1

    if-gez v3, :cond_0

    .line 560
    :try_start_0
    new-instance v3, Ljava/lang/String;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v3

    .line 566
    :goto_0
    return-object v0

    .line 562
    :cond_0
    new-instance v3, Ljava/lang/String;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 564
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 565
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "UnsupportedEncodingException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 566
    new-instance v3, Ljava/lang/String;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    goto :goto_0
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    .line 590
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "ReceiveUnsigned1ByteNumber"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 591
    move-object v1, v3

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 592
    const/4 v2, 0x0

    move v0, v2

    .line 595
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v0, v2

    goto :goto_0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    .line 622
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "ReceiveUnsigned2ByteNumber"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 623
    move-object v1, v3

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 624
    const/4 v2, 0x0

    move v0, v2

    .line 630
    :goto_0
    return v0

    .line 627
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 628
    move-object v2, v1

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v1

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 630
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v1

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    .line 664
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "ReceiveUnsigned4ByteNumber"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v2

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 665
    move-object v1, v3

    array-length v2, v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 666
    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 675
    :goto_0
    return-wide v0

    .line 669
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 670
    move-object v2, v1

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    move-object v4, v1

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-object v4, v1

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v0, v2

    goto :goto_0

    .line 675
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-object v4, v1

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-object v4, v1

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move-wide v0, v2

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    const-string/jumbo v6, "ReceiveUnsignedBytes"

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v5

    move-object v1, v5

    .line 720
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 721
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 722
    move-object v5, v1

    move v6, v3

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 723
    move-object v5, v2

    move v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 721
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 725
    :cond_0
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public Secure(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    .line 217
    return-void
.end method

.method public Secure()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    move v0, v1

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v5, "Send1ByteNumber"

    move-object v2, v5

    .line 336
    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    .line 341
    .line 342
    move v5, v3

    int-to-byte v5, v5

    move v4, v5

    .line 343
    move v5, v3

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    move v12, v5

    move v5, v12

    move v6, v12

    .line 344
    move v3, v6

    if-eqz v5, :cond_0

    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 345
    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x1ff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 347
    .line 350
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v5

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x1fe

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 340
    goto :goto_0

    .line 349
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    .line 350
    goto :goto_0
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v5, "Send2ByteNumber"

    move-object v2, v5

    .line 367
    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    .line 372
    .line 373
    const/4 v5, 0x2

    new-array v5, v5, [B

    move-object v4, v5

    .line 374
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_0

    .line 375
    move-object v5, v4

    const/4 v6, 0x1

    move v7, v3

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 376
    move v5, v3

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    move v3, v5

    .line 377
    move-object v5, v4

    const/4 v6, 0x0

    move v7, v3

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 383
    :goto_0
    move v5, v3

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    move v12, v5

    move v5, v12

    move v6, v12

    .line 384
    move v3, v6

    if-eqz v5, :cond_1

    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 385
    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x200

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const/4 v11, 0x2

    .line 386
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 385
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 387
    .line 390
    :goto_1
    return-void

    .line 369
    :catch_0
    move-exception v5

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x1fe

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 371
    goto :goto_1

    .line 379
    :cond_0
    move-object v5, v4

    const/4 v6, 0x0

    move v7, v3

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 380
    move v5, v3

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    move v3, v5

    .line 381
    move-object v5, v4

    const/4 v6, 0x1

    move v7, v3

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto :goto_0

    .line 389
    :cond_1
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 390
    goto :goto_1
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v6, "Send4ByteNumber"

    move-object v2, v6

    .line 407
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    move-wide v3, v6

    .line 412
    .line 413
    const/4 v6, 0x4

    new-array v6, v6, [B

    move-object v5, v6

    .line 414
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_0

    .line 415
    move-object v6, v5

    const/4 v7, 0x3

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 416
    move-wide v6, v3

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v3, v6

    .line 417
    move-object v6, v5

    const/4 v7, 0x2

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 418
    move-wide v6, v3

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v3, v6

    .line 419
    move-object v6, v5

    const/4 v7, 0x1

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 420
    move-wide v6, v3

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v3, v6

    .line 421
    move-object v6, v5

    const/4 v7, 0x0

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 431
    :goto_0
    move-wide v6, v3

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v13, v6

    move-wide v6, v13

    move-wide v8, v13

    .line 432
    move-wide v3, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move-wide v6, v3

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 433
    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x200

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const/4 v12, 0x4

    .line 434
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 433
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 435
    .line 438
    :goto_1
    return-void

    .line 409
    :catch_0
    move-exception v6

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x1fe

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 411
    goto :goto_1

    .line 423
    :cond_0
    move-object v6, v5

    const/4 v7, 0x0

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 424
    move-wide v6, v3

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v3, v6

    .line 425
    move-object v6, v5

    const/4 v7, 0x1

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 426
    move-wide v6, v3

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v3, v6

    .line 427
    move-object v6, v5

    const/4 v7, 0x2

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 428
    move-wide v6, v3

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v3, v6

    .line 429
    move-object v6, v5

    const/4 v7, 0x3

    move-wide v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    goto :goto_0

    .line 437
    :cond_1
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 438
    goto :goto_1
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v6, "SendBytes"

    move-object v2, v6

    .line 453
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 454
    move-object v1, v7

    array-length v6, v6

    new-array v6, v6, [B

    move-object v3, v6

    .line 455
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 458
    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    .line 459
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 462
    move-object v6, v5

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v5, v6

    .line 467
    .line 468
    move-object v6, v3

    move v7, v4

    move v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 469
    move v6, v5

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    move v14, v6

    move v6, v14

    move v7, v14

    .line 470
    move v5, v7

    if-eqz v6, :cond_0

    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 471
    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x202

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 472
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 471
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 473
    .line 477
    :goto_1
    return-void

    .line 464
    :catch_0
    move-exception v6

    move-object v6, v0

    move-object v7, v2

    const/16 v8, 0x201

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 465
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 464
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 466
    goto :goto_1

    .line 455
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 476
    :cond_1
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 477
    goto :goto_1
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .line 313
    .line 314
    :goto_0
    move-object v3, v0

    const-string/jumbo v4, "SendText"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 315
    return-void

    .line 310
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 311
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "UnsupportedEncodingException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 312
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method addBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 91
    return-void
.end method

.method protected varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 804
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 796
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 797
    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 16

    .prologue
    .line 739
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 740
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x203

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 742
    const/4 v7, 0x0

    new-array v7, v7, [B

    move-object v0, v7

    .line 789
    :goto_0
    return-object v0

    .line 745
    :cond_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v7

    .line 747
    move v7, v2

    if-ltz v7, :cond_3

    .line 749
    move v7, v2

    new-array v7, v7, [B

    move-object v4, v7

    .line 750
    const/4 v7, 0x0

    move v5, v7

    .line 751
    :goto_1
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 753
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    move-object v8, v4

    move v9, v5

    move v10, v2

    move v11, v5

    sub-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v15, v7

    move v7, v15

    move v8, v15

    .line 754
    move v6, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 755
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x206

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .line 766
    :cond_1
    :goto_2
    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 767
    .line 789
    :goto_3
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 759
    :cond_2
    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    move v5, v7

    .line 764
    goto :goto_1

    .line 760
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 761
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x205

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v6

    .line 762
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 761
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 785
    .line 771
    :cond_3
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    move v15, v7

    move v7, v15

    move v8, v15

    .line 772
    move v4, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 773
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x206

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 775
    goto :goto_3

    .line 777
    :cond_4
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 778
    move v7, v4

    move-object v8, v0

    iget-byte v8, v8, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v7, v8, :cond_3

    .line 779
    goto :goto_3

    .line 781
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 782
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0x205

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    .line 783
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 782
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 100
    return-void
.end method

.method protected final setConnection(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 161
    move-object v2, v0

    new-instance v3, Ljava/io/BufferedInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 162
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 163
    move-object v2, v0

    new-instance v3, Ljava/io/BufferedOutputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 164
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 165
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireAfterConnectEvent()V

    .line 166
    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 12

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 487
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x203

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 489
    .line 499
    :goto_0
    return-void

    .line 493
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 494
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    goto :goto_0

    .line 495
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 496
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x204

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    .line 497
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 496
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 499
    goto :goto_0
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 12

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 509
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x203

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 511
    .line 521
    :goto_0
    return-void

    .line 515
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 516
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    goto :goto_0

    .line 517
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 518
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x204

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    .line 519
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 518
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 521
    goto :goto_0
.end method
