.class public Lcom/google/appinventor/components/runtime/NxtSoundSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a sound sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;
    }
.end annotation


# instance fields
.field private final Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

.field private d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

.field private handler:Landroid/os/Handler;

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

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

    const-string/jumbo v4, "NxtSoundSensor"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    .line 56
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    .line 57
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    .line 92
    move-object v2, v0

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->SensorPort(Ljava/lang/String;)V

    .line 93
    move-object v2, v0

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->BottomOfRange(I)V

    .line 94
    move-object v2, v0

    const/16 v3, 0x2ff

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->TopOfRange(I)V

    .line 95
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->BelowRangeEventEnabled(Z)V

    .line 96
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->WithinRangeEventEnabled(Z)V

    .line 97
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->AboveRangeEventEnabled(Z)V

    .line 98
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;I)I
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

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    move v0, v2

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    move v0, v1

    return v0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    move v0, v1

    return v0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    .locals 7
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
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->port:I

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 135
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->getBooleanValueFromBytes([BI)Z

    move-result v2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->getUWORDValueFromBytes([BI)I

    move-result v2

    move v1, v2

    .line 139
    new-instance v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    move-object v0, v2

    .line 144
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;-><init>(ZLjava/lang/Object;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

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

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AboveRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sound level has gone above the range."
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AboveRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 302
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
    .line 285
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v2, v3

    .line 287
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    .line 289
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v1, v3

    .line 290
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    .line 291
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    .line 294
    move-object v3, v0

    sget v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    .line 295
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 297
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the sound level goes above the TopOfRange."
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    move v0, v1

    return v0
.end method

.method public BelowRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sound level has gone below the range."
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "BelowRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 228
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
    .line 211
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v2, v3

    .line 213
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    .line 215
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v1, v3

    .line 216
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    .line 217
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    .line 220
    move-object v3, v0

    sget v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    .line 221
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 223
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the sound level goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

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
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    move v0, v1

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:I

    .line 167
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    .line 168
    return-void
.end method

.method public GetSoundLevel()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current sound level as a value between 0 and 1023, or -1 if the sound level can not be read."
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    const-string/jumbo v2, "GetSoundLevel"

    move-object v1, v2

    .line 120
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    const/4 v2, -0x1

    move v0, v2

    .line 130
    :goto_0
    return v0

    .line 124
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 125
    move-object v1, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-eqz v2, :cond_1

    .line 126
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 130
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->setSensorPort(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public TopOfRange()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    move v0, v1

    return v0
.end method

.method public TopOfRange(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "767"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:I

    .line 190
    move-object v2, v0

    sget v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    .line 191
    return-void
.end method

.method public WithinRange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Sound level has gone within the range."
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "WithinRange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 265
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
    .line 248
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v2, v3

    .line 250
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    .line 252
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()Z

    move-result v3

    move v1, v3

    .line 253
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    .line 254
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_1

    .line 257
    move-object v3, v0

    sget v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:I

    iput v4, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:I

    .line 258
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 260
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the sound level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Z

    move v0, v1

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->port:I

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->setInputMode(Ljava/lang/String;III)V

    .line 104
    return-void
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->handler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    move-object v1, v0

    invoke-super {v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 314
    return-void
.end method
