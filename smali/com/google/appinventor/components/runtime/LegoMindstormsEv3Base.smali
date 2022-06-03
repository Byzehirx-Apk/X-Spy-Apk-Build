.class public Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected commandCount:I

.field protected final logTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->logTag:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->logTag:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v0, v1

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_0

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;)V

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 58
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    const/16 v4, 0x804

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    move-result v2

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->addBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 67
    :cond_1
    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method protected final bitFieldToMotorPortLetters(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 187
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 188
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Invalid bit field number "

    move v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_1
    const-string/jumbo v3, ""

    move-object v2, v3

    .line 192
    move v3, v1

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 195
    :cond_2
    move v3, v1

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 198
    :cond_3
    move v3, v1

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 201
    :cond_4
    move v3, v1

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 204
    :cond_5
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected final isBluetoothConnected(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-nez v2, :cond_0

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0xc1c

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 72
    const/4 v2, 0x0

    move v0, v2

    .line 80
    :goto_0
    return v0

    .line 75
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0xc1d

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 77
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 80
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method protected final motorPortLettersToBitField(Ljava/lang/String;)I
    .locals 13

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 143
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Malformed motor port letters \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    .line 146
    const/4 v7, 0x0

    move v3, v7

    .line 147
    const/4 v7, 0x0

    move v4, v7

    .line 148
    const/4 v7, 0x0

    move v5, v7

    .line 150
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 152
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 179
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Malformed motor port letters \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 155
    :pswitch_0
    move v7, v2

    if-eqz v7, :cond_1

    .line 156
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Malformed motor port letters \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 157
    :cond_1
    const/4 v7, 0x1

    move v2, v7

    .line 150
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    :pswitch_1
    move v7, v3

    if-eqz v7, :cond_2

    .line 162
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Malformed motor port letters \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 163
    :cond_2
    const/4 v7, 0x2

    move v3, v7

    .line 164
    goto :goto_1

    .line 167
    :pswitch_2
    move v7, v4

    if-eqz v7, :cond_3

    .line 168
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Malformed motor port letters \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 169
    :cond_3
    const/4 v7, 0x4

    move v4, v7

    .line 170
    goto :goto_1

    .line 173
    :pswitch_3
    move v7, v5

    if-eqz v7, :cond_4

    .line 174
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Malformed motor port letters \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    :cond_4
    const/16 v7, 0x8

    move v5, v7

    .line 176
    goto/16 :goto_1

    .line 183
    :cond_5
    move v7, v2

    move v8, v3

    or-int/2addr v7, v8

    move v8, v4

    or-int/2addr v7, v8

    move v8, v5

    or-int/2addr v7, v8

    move v0, v7

    return v0

    .line 152
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_0

    .line 221
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 222
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;)V

    .line 223
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 225
    :cond_0
    return-void
.end method

.method protected final portNumberToSensorPortLetter(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not a valid port number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    const/16 v4, 0x31

    add-int/lit8 v3, v3, 0x31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final sendCommand(Ljava/lang/String;[BZ)[B
    .locals 12

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->isBluetoothConnected(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    const/4 v5, 0x0

    move-object v0, v5

    .line 118
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-string/jumbo v5, "hh"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v2

    array-length v9, v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->commandCount:I

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->pack(Ljava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v5

    move-object v4, v5

    .line 90
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->commandCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->commandCount:I

    .line 92
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 93
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 96
    move v5, v3

    if-eqz v5, :cond_3

    .line 97
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v6, v1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 99
    move-object v4, v6

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 100
    const-string/jumbo v5, "hh"

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 101
    move-object v2, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v3, v5

    .line 102
    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v6, v1

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 105
    move-object v2, v6

    array-length v5, v5

    move v6, v3

    if-ne v5, v6, :cond_1

    .line 106
    move-object v5, v2

    move-object v0, v5

    goto/16 :goto_0

    .line 109
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0xc1e

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 110
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0

    .line 115
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    move-object v7, v1

    const/16 v8, 0xc1e

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 116
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0

    .line 118
    :cond_3
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0
.end method

.method protected final sensorPortLetterToPortNumber(Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "String \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" is not a valid sensor port letter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    add-int/lit8 v3, v3, -0x31

    move v8, v3

    move v3, v8

    move v4, v8

    .line 128
    move v2, v4

    if-ltz v3, :cond_1

    move v3, v2

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 129
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "String \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" is not a valid sensor port letter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_2
    move v3, v2

    move v0, v3

    return v0
.end method
