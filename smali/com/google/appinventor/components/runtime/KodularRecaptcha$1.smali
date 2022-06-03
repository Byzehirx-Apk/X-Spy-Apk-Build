.class final Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularRecaptcha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 66
    move-object v2, v0

    const-string/jumbo v3, "missing-input-secret"

    const-string/jumbo v4, "The secret parameter is missing."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    move-object v2, v0

    const-string/jumbo v3, "invalid-input-secret"

    const-string/jumbo v4, "The secret parameter is invalid or malformed."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    move-object v2, v0

    const-string/jumbo v3, "missing-input-response"

    const-string/jumbo v4, "The response parameter is missing."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    move-object v2, v0

    const-string/jumbo v3, "invalid-input-response"

    const-string/jumbo v4, "The response parameter is invalid or malformed."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    move-object v2, v0

    const-string/jumbo v3, "bad-request"

    const-string/jumbo v4, "The request is invalid or malformed."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    move-object v2, v0

    const-string/jumbo v3, "timeout-or-duplicate"

    const-string/jumbo v4, "The response is no longer valid: either is too old or has been used previously."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    return-void
.end method
