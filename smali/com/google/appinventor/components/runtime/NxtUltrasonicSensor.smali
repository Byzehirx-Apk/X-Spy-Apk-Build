.class public Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;
    }
.end annotation


# instance fields
.field private final Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

.field private handler:Landroid/os/Handler;

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

.field private t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "NxtUltrasonicSensor"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    .line 56
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    .line 57
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    .line 92
    move-object v2, v0

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->SensorPort(Ljava/lang/String;)V

    .line 93
    move-object v2, v0

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BottomOfRange(I)V

    .line 94
    move-object v2, v0

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->TopOfRange(I)V

    .line 95
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 96
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 97
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 98
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    move v0, v1

    return v0
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x2

    new-array v3, v3, [B

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 145
    move-object v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    .line 146
    move-object v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x42

    aput-byte v5, v3, v4

    .line 147
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    .line 150
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 151
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsGetStatus(Ljava/lang/String;I)I

    move-result v3

    .line 152
    if-lez v3, :cond_1

    .line 154
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsRead(Ljava/lang/String;I)[B

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 155
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getUBYTEValueFromBytes([BI)I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    .line 157
    move v1, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/16 v4, 0xfe

    if-gt v3, v4, :cond_0

    .line 158
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    move-object v0, v3

    .line 166
    :goto_1
    return-object v0

    .line 160
    .line 166
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    move-object v0, v3

    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;I)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    move v0, v2

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    move v0, v1

    return v0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    move v0, v1

    return v0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AboveRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone above the range."
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AboveRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 324
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v2, v3

    .line 309
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    .line 311
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v1, v3

    .line 312
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    .line 313
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    .line 316
    move-object v3, v0

    sget v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    .line 317
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 319
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    move v0, v1

    return v0
.end method

.method public BelowRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone below the range."
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "BelowRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 250
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v2, v3

    .line 235
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    .line 237
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v1, v3

    .line 238
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    .line 239
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    .line 242
    move-object v3, v0

    sget v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    .line 243
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 245
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    move v0, v1

    return v0
.end method

.method public BottomOfRange()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    move v0, v1

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    .line 189
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    .line 190
    return-void
.end method

.method public GetDistance()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    const-string/jumbo v2, "GetDistance"

    move-object v1, v2

    .line 129
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const/4 v2, -0x1

    move v0, v2

    .line 139
    :goto_0
    return v0

    .line 133
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 134
    move-object v1, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-eqz v2, :cond_1

    .line 135
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 139
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setSensorPort(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public TopOfRange()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    move v0, v1

    return v0
.end method

.method public TopOfRange(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    .line 212
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    .line 213
    return-void
.end method

.method public WithinRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone within the range."
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "WithinRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 287
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v2, v3

    .line 272
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    .line 274
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v1, v3

    .line 275
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    .line 276
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    .line 279
    move-object v3, v0

    sget v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:I

    .line 280
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 282
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    move v0, v1

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setInputMode(Ljava/lang/String;III)V

    .line 103
    move-object v4, v0

    move-object v5, v1

    move-object v2, v5

    move-object v1, v4

    .line 1108
    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1109
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput-byte v6, v4, v5

    .line 1110
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, 0x41

    aput-byte v6, v4, v5

    .line 1111
    move-object v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x2

    aput-byte v6, v4, v5

    .line 1112
    move-object v4, v1

    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    .line 104
    return-void
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 336
    return-void
.end method
