.class final Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/appinventor/components/runtime/Form;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    move-object v1, v0

    const-string/jumbo v2, "KodularAdManagerTask"

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;-><init>()V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    :try_start_0
    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 76
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 77
    move-object v1, v3

    if-nez v2, :cond_0

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "No bundle!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 79
    const/4 v2, 0x0

    move-object v0, v2

    .line 92
    :goto_0
    return-object v0

    .line 82
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "KADM_CN_ADUNIT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 84
    move-object v1, v3

    if-nez v2, :cond_1

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "No AD_UNIT!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 86
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 89
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not find PackageManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 92
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 1098
    move-object v1, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v3, v4

    .line 1099
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1100
    move-object v4, v3

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/KodularAdManager$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".kadm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    :cond_0
    return-void
.end method
