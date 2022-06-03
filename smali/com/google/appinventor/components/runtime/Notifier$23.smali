.class final Lcom/google/appinventor/components/runtime/Notifier$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->CustomChooseDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

.field private synthetic lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Notifier$23;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/appinventor/components/runtime/Notifier$23;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Notifier$23;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier$23;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Notifier$23;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier$23;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->GotCustomChooseDialog(ILjava/lang/String;)V

    .line 252
    return-void
.end method
