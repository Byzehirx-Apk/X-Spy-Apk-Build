.class public Lcom/google/appinventor/components/runtime/MakeroidArduino;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Arduino USB Serial Component"
    iconName = "images/arduino.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "physicaloid.jar"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

.field private nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    move-object v2, v0

    const/16 v3, 0x2580

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidArduino;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    .line 41
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidArduino;->context:Landroid/content/Context;

    .line 42
    const-string/jumbo v2, "Makeroid Arduino USB Serial Component"

    const-string/jumbo v3, "Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 43
    return-void
.end method


# virtual methods
.method public AfterReadArduino(ZLjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after Read function"
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "AfterRead"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 106
    return-void
.end method

.method public BaudRate(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Default baud rate is 9600 bps"
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidArduino;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    .line 66
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/physicaloid/lib/Physicaloid;->setBaudrate(I)Z

    move-result v2

    .line 67
    const-string/jumbo v2, "Makeroid Arduino USB Serial Component"

    const-string/jumbo v3, "Baud Rate: "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 68
    return-void
.end method

.method public CloseArduino()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closes Arduino Connection"
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    const-string/jumbo v1, "Makeroid Arduino USB Serial Component"

    const-string/jumbo v2, "Closing connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 60
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v1}, Lcom/physicaloid/lib/Physicaloid;->close()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public InitializeArduino()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes Arduino Connection"
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/physicaloid/lib/Physicaloid;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidArduino;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/physicaloid/lib/Physicaloid;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    .line 48
    const-string/jumbo v1, "Makeroid Arduino USB Serial Component"

    const-string/jumbo v2, "Initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 49
    return-void
.end method

.method public IsOpenedArduino()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true when the Arduino connection is open"
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v1}, Lcom/physicaloid/lib/Physicaloid;->isOpened()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public OpenArduino()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens Arduino Connection"
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    const-string/jumbo v1, "Makeroid Arduino USB Serial Component"

    const-string/jumbo v2, "Opening connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 54
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v1}, Lcom/physicaloid/lib/Physicaloid;->open()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ReadArduino()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read from Serial"
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object v1, v4

    .line 73
    const/4 v4, 0x1

    move v2, v4

    .line 74
    const-string/jumbo v4, ""

    move-object v3, v4

    .line 76
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/physicaloid/lib/Physicaloid;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 78
    :try_start_0
    new-instance v4, Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 82
    .line 87
    :goto_0
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidArduino;->AfterReadArduino(ZLjava/lang/String;)V

    .line 88
    return-void

    .line 79
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 80
    const/4 v4, 0x0

    move v2, v4

    .line 81
    const-string/jumbo v4, "Makeroid Arduino USB Serial Component"

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0
.end method

.method public WriteArduino(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write Data to Serial"
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object v1, v2

    .line 94
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/physicaloid/lib/Physicaloid;->write([B)I

    move-result v2

    .line 96
    :cond_0
    return-void
.end method
