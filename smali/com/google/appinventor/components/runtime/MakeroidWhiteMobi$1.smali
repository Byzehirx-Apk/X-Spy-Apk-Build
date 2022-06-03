.class final Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/white/mobi/sdk/IRewardsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewarded(I)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->OfferCompleted(I)V

    .line 60
    return-void
.end method
