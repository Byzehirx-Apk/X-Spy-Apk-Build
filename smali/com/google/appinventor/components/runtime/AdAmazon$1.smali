.class final Lcom/google/appinventor/components/runtime/AdAmazon$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdAmazon;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazon;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdAmazon;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazon;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_0

    move v4, v2

    if-eqz v4, :cond_0

    .line 89
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazon$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazon;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdAmazon$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazon;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;Z)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-nez v4, :cond_1

    .line 91
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazon$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazon;

    const-string/jumbo v5, "101"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    move v4, v1

    if-nez v4, :cond_2

    .line 93
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazon$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazon;

    const-string/jumbo v5, "102"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazon$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazon;

    const-string/jumbo v5, "103"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    goto :goto_0
.end method
