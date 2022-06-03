.class final Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->getDeviceDefaultOrientation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->access$002(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)I

    move-result v1

    .line 301
    const-string/jumbo v1, "AccelerometerSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "deviceDefaultOrientation = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->access$000(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 302
    const-string/jumbo v1, "AccelerometerSensor"

    const-string/jumbo v2, "Configuration.ORIENTATION_LANDSCAPE = 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 303
    const-string/jumbo v1, "AccelerometerSensor"

    const-string/jumbo v2, "Configuration.ORIENTATION_PORTRAIT = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 305
    return-void
.end method
