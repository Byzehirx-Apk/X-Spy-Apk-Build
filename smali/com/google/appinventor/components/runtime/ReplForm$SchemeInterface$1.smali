.class final Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->eval(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

.field private synthetic IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE()V

    .line 82
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;

    const-string/jumbo v3, "#DONE#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    .line 84
    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 88
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Exception in scheme processing"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 90
    goto :goto_0
.end method
