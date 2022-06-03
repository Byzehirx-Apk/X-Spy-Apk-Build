.class public final Landroidx/core/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# static fields
.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NavUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 9
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "sourceActivity":Landroid/app/Activity;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 132
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v1, v4

    .line 133
    .local v1, "result":Landroid/content/Intent;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 134
    move-object v4, v1

    move-object v0, v4

    .line 150
    .end local v0    # "sourceActivity":Landroid/app/Activity;
    .local v1, "parentName":Ljava/lang/String;
    .local v2, "target":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    .line 137
    .end local v1    # "parentName":Ljava/lang/String;
    .end local v2    # "target":Landroid/content/ComponentName;
    .restart local v0    # "sourceActivity":Landroid/app/Activity;
    :cond_0
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 138
    .restart local v1    # "parentName":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 141
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v4

    .line 143
    .restart local v2    # "target":Landroid/content/ComponentName;
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v4, v5}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 144
    .local v3, "grandparent":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_2

    move-object v4, v2

    .line 145
    invoke-static {v4}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 146
    :goto_1
    move-object v0, v4

    goto :goto_0

    .line 145
    :cond_2
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v5, v2

    .line 146
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 147
    .end local v3    # "grandparent":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 148
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "NavUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 150
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "componentName":Landroid/content/ComponentName;
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 196
    .local v2, "parentActivity":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 205
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 199
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    .line 200
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 201
    .local v3, "target":Landroid/content/ComponentName;
    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 202
    .local v4, "grandparent":Ljava/lang/String;
    move-object v6, v4

    if-nez v6, :cond_1

    move-object v6, v3

    .line 203
    invoke-static {v6}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 204
    :goto_1
    move-object v5, v6

    .line 205
    .local v5, "parentIntent":Landroid/content/Intent;
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 203
    .end local v5    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v7, v3

    .line 204
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_1
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v6, v7}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 170
    .local v2, "parentActivity":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 178
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 173
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v6

    .line 174
    .local v3, "target":Landroid/content/ComponentName;
    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 175
    .local v4, "grandparent":Ljava/lang/String;
    move-object v6, v4

    if-nez v6, :cond_1

    move-object v6, v3

    .line 176
    invoke-static {v6}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 177
    :goto_1
    move-object v5, v6

    .line 178
    .local v5, "parentIntent":Landroid/content/Intent;
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 176
    .end local v5    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v7, v3

    .line 177
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_1
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "sourceActivity":Landroid/app/Activity;
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "sourceActivity":Landroid/app/Activity;
    return-object v0

    .line 221
    .restart local v0    # "sourceActivity":Landroid/app/Activity;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 223
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "componentName":Landroid/content/ComponentName;
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v2, v5

    .line 241
    .local v2, "pm":Landroid/content/pm/PackageManager;
    move-object v5, v2

    move-object v6, v1

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object v3, v5

    .line 242
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 243
    move-object v5, v3

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object v4, v5

    .line 244
    .local v4, "result":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 245
    move-object v5, v4

    move-object v0, v5

    .line 258
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 248
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v5, v3

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    .line 249
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 251
    :cond_1
    move-object v5, v3

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "android.support.PARENT_ACTIVITY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 252
    .local v4, "parentActivity":Ljava/lang/String;
    move-object v5, v4

    if-nez v5, :cond_2

    .line 253
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 255
    :cond_2
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 258
    :cond_3
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
    .locals 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "sourceActivity":Landroid/app/Activity;
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 83
    .local v1, "upIntent":Landroid/content/Intent;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not have a parent activity name specified."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " element in your manifest?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "sourceActivity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "upIntent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 109
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v2

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    move-object v2, v1

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 112
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "sourceActivity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "targetIntent":Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 61
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v3

    move v0, v3

    .line 64
    .end local v0    # "sourceActivity":Landroid/app/Activity;
    :goto_0
    return v0

    .line 63
    .restart local v0    # "sourceActivity":Landroid/app/Activity;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 64
    .local v2, "action":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
