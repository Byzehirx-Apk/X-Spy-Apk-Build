.class public final Landroidx/core/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/TaskStackBuilder$SupportParentable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, p1

    .local v1, "a":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 83
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/core/app/TaskStackBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, p1

    .local v1, "nextIntent":Landroid/content/Intent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 122
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, p1

    .local v1, "nextIntent":Landroid/content/Intent;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 140
    .local v2, "target":Landroid/content/ComponentName;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 141
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 143
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 144
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    .line 146
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    .line 147
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, p1

    .local v1, "sourceActivity":Landroid/app/Activity;
    const/4 v4, 0x0

    move-object v2, v4

    .line 160
    .local v2, "parent":Landroid/content/Intent;
    move-object v4, v1

    instance-of v4, v4, Landroidx/core/app/TaskStackBuilder$SupportParentable;

    if-eqz v4, :cond_0

    .line 161
    move-object v4, v1

    check-cast v4, Landroidx/core/app/TaskStackBuilder$SupportParentable;

    invoke-interface {v4}, Landroidx/core/app/TaskStackBuilder$SupportParentable;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 163
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 164
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 167
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 170
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object v3, v4

    .line 171
    .local v3, "target":Landroid/content/ComponentName;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 172
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    move-object v3, v4

    .line 174
    :cond_2
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    .line 175
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    .line 177
    .end local v3    # "target":Landroid/content/ComponentName;
    :cond_3
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;
    .locals 8

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, p1

    .local v1, "sourceActivityName":Landroid/content/ComponentName;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 203
    .local v2, "insertAt":I
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    move-object v3, v4

    .line 204
    .local v3, "parent":Landroid/content/Intent;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 205
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 211
    .line 212
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0

    .line 208
    .end local v3    # "parent":Landroid/content/Intent;
    .restart local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 209
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "TaskStackBuilder"

    const-string/jumbo v5, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 210
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;
    .locals 8
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroidx/core/app/TaskStackBuilder;"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, p1

    .local v1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    new-instance v3, Landroid/content/ComponentName;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public getIntentCount()I
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    move-object v1, v3

    .line 358
    .local v1, "intents":[Landroid/content/Intent;
    move-object v3, v1

    array-length v3, v3

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v0, v3

    .line 365
    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    :goto_0
    return-object v0

    .line 360
    .restart local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v6, 0x1000c000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v3, v4

    .line 362
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 363
    move-object v3, v1

    move v4, v2

    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v5, v3, v4

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move v1, p1

    .local v1, "requestCode":I
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 12
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move v1, p1

    .local v1, "requestCode":I
    move v2, p2

    .local v2, "flags":I
    move-object v3, p3

    .local v3, "options":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 336
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/Intent;

    move-object v4, v5

    .line 337
    .local v4, "intents":[Landroid/content/Intent;
    move-object v5, v4

    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v8, 0x1000c000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    aput-object v7, v5, v6

    .line 340
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 341
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move v6, v1

    move-object v7, v4

    move v8, v2

    move-object v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, v5

    .line 344
    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move v6, v1

    move-object v7, v4

    move v8, v2

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/TaskStackBuilder;
    return-object v0
.end method

.method public startActivities()V
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/TaskStackBuilder;
    move-object v1, p1

    .local v1, "options":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/Intent;

    move-object v2, v4

    .line 289
    .local v2, "intents":[Landroid/content/Intent;
    move-object v4, v2

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v7, 0x1000c000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v4, v5

    .line 291
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move-object v5, v2

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroidx/core/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    new-instance v4, Landroid/content/Intent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v3, v4

    .line 293
    .local v3, "topIntent":Landroid/content/Intent;
    move-object v4, v3

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 294
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    .end local v3    # "topIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
