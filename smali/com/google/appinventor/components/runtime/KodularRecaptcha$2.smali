.class final Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularRecaptcha;->Prompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 7
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v3, :cond_0

    .line 120
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/api/ApiException;

    .line 121
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v3

    move v6, v3

    move v3, v6

    move v4, v6

    .line 122
    move v1, v4

    invoke-static {v3}, Lcom/google/android/gms/safetynet/SafetyNetStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptErrored(ILjava/lang/String;)V

    .line 124
    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    const/4 v4, -0x1

    const-string/jumbo v5, "Unknown ApiException"

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptErrored(ILjava/lang/String;)V

    .line 128
    goto :goto_0
.end method
