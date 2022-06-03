.class final Lcom/google/appinventor/components/runtime/FingerPrint$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FingerPrint$1;->onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FingerPrint$1;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x616162

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V

    .line 155
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FingerPrint;->Authenticate()V

    .line 156
    return-void
.end method
