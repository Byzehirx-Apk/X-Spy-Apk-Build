.class final Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularRecaptcha;->Prompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;

    move-object v2, v4

    move-object v1, v3

    .line 1103
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;->getTokenResult()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1104
    move-object v2, v4

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1107
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptSucceeded(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1109
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    const/4 v4, -0x2

    const-string/jumbo v5, "No UserResponse"

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptErrored(ILjava/lang/String;)V

    .line 98
    goto :goto_0
.end method
