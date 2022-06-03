.class final Lcom/google/appinventor/components/runtime/Notifier$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->ShowLinearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

.field private synthetic cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

.field private synthetic d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

.field private synthetic rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

.field private synthetic z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:I

.field private synthetic zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 10

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/Notifier$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/Notifier$3;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/Notifier$3;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Lcom/google/appinventor/components/runtime/Notifier$3;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    move-object v8, v0

    move v9, v5

    iput-boolean v9, v8, Lcom/google/appinventor/components/runtime/Notifier$3;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Z

    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/google/appinventor/components/runtime/Notifier$3;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:I

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/Notifier$3;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 499
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier$3;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier$3;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Notifier$3;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Notifier$3;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Z

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Notifier$3;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier$3;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/Notifier;->access$200(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    .line 500
    return-void
.end method
