.class final Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInSilently(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

.field private synthetic jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Z)V
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v1, v2

    .line 276
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->access$200(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 277
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->SignedIn(Z)V

    .line 278
    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z

    if-eqz v2, :cond_1

    .line 280
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->access$300(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    .line 281
    goto :goto_0

    .line 285
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->SignedIn(Z)V

    .line 287
    goto :goto_0
.end method
