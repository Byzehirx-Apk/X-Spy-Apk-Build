.class public Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;
.super Ljava/lang/Object;
.source "SharedPreferencesManager.java"


# static fields
.field private static final PREFERENCES_NAME:Ljava/lang/String; = "AppCenter"

.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 277
    sget-object v1, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object v0, v1

    .line 278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 279
    move-object v1, v0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "defValue":Z
    sget-object v2, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getFloat(Ljava/lang/String;F)F

    move-result v1

    move v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "defValue":F
    sget-object v2, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    move v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "defValue":I
    sget-object v2, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-wide v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    move-object v1, p0

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p1

    .local v2, "defValue":J
    sget-object v4, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    move-object v5, v1

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "key":Ljava/lang/String;
    return-wide v1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "defValue":Ljava/lang/String;
    sget-object v2, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static getStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    const-class v4, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;

    monitor-enter v4

    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 44
    move-object v1, v0

    sput-object v1, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sContext:Landroid/content/Context;

    .line 45
    sget-object v1, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sContext:Landroid/content/Context;

    const-string/jumbo v2, "AppCenter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v4

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "context":Landroid/content/Context;
    throw v0
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "value":Z
    sget-object v3, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v2, v3

    .line 79
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 80
    move-object v3, v2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "value":F
    sget-object v3, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v2, v3

    .line 115
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 116
    move-object v3, v2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "value":I
    sget-object v3, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v2, v3

    .line 151
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 152
    move-object v3, v2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "value":J
    sget-object v4, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move-object v3, v4

    .line 187
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v4, v3

    move-object v5, v0

    move-wide v6, v1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 188
    move-object v4, v3

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    sget-object v3, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v2, v3

    .line 222
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 223
    move-object v3, v2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    return-void
.end method

.method public static putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v2, v3

    .line 258
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 259
    move-object v3, v2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object v1, v2

    .line 269
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 270
    move-object v2, v1

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    return-void
.end method
