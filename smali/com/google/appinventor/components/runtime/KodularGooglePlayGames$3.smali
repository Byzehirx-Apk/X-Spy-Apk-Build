.class final Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->GetPlayer()V
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
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    move-object v1, p0

    move-object v2, p1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/games/Player;

    move-object v2, v6

    .line 202
    const/4 v6, 0x0

    move v3, v6

    .line 203
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 206
    move-object v6, v2

    :try_start_0
    invoke-interface {v6}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentLevel()Lcom/google/android/gms/games/PlayerLevel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v3, v6

    .line 207
    .line 210
    :goto_0
    move-object v6, v2

    :try_start_1
    invoke-interface {v6}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentXpTotal()J
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    move-wide v4, v6

    .line 211
    .line 213
    :goto_1
    move-object v6, v2

    invoke-interface {v6}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v6

    .line 219
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    move-object v7, v2

    invoke-interface {v7}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    invoke-interface {v8}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v8

    move v9, v3

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->GotPlayer(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 221
    :cond_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1
.end method
