.class public Lcom/google/appinventor/components/runtime/util/crypt/CryptoPref;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSalt(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 18
    move-object v0, p0

    move-object v4, v0

    const-string/jumbo v5, "CRYPTO_PREF"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 19
    move-object v0, v5

    const-string/jumbo v5, "TAG_SALT"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 20
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 21
    move-object v4, v1

    move-object v0, v4

    .line 36
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v4, Ljava/util/Random;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move-object v1, v4

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    .line 29
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    .line 30
    move-object v4, v2

    const-string/jumbo v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz|!\u00a3$%&/=@#"

    move-object v6, v1

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 33
    :cond_1
    move-object v4, v0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 34
    move-object v3, v5

    const-string/jumbo v5, "TAG_SALT"

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 35
    move-object v4, v3

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    .line 36
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
