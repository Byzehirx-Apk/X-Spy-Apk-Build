.class final Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsentFormLoadSuccess(Lcom/google/android/ump/ConsentForm;)V
    .locals 8

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Lcom/google/android/ump/ConsentInformation;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 171
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3$1;-><init>(Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 182
    :cond_0
    return-void
.end method
