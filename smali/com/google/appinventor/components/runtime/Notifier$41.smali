.class final Lcom/google/appinventor/components/runtime/Notifier$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Notifier$41;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Notifier$41;->FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier$41;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier$41;->FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->access$000(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    .line 328
    return-void
.end method
