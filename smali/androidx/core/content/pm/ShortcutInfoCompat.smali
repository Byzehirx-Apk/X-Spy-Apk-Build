.class public Landroidx/core/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    }
.end annotation


# instance fields
.field mActivity:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field mDisabledMessage:Ljava/lang/CharSequence;

.field mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field mId:Ljava/lang/String;

.field mIntents:[Landroid/content/Intent;

.field mIsAlwaysBadged:Z

.field mLabel:Ljava/lang/CharSequence;

.field mLongLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, p1

    .local v1, "outIntent":Landroid/content/Intent;
    move-object v5, v1

    const-string/jumbo v6, "android.intent.extra.shortcut.INTENT"

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.shortcut.NAME"

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 78
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 79
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v5, :cond_2

    .line 80
    const/4 v5, 0x0

    move-object v2, v5

    .line 81
    .local v2, "badge":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    if-eqz v5, :cond_1

    .line 82
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v3, v5

    .line 83
    .local v3, "pm":Landroid/content/pm/PackageManager;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 85
    move-object v5, v3

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 88
    .line 90
    :cond_0
    :goto_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 91
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 94
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/core/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    .line 96
    .end local v2    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0

    .line 86
    .restart local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    .restart local v2    # "badge":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method

.method public getActivity()Landroid/content/ComponentName;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method

.method public toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x19
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    move-object v1, v2

    .line 61
    .local v1, "builder":Landroid/content/pm/ShortcutInfo$Builder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v2, :cond_0

    .line 62
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 64
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 67
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 70
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    .line 71
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 73
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat;
    return-object v0
.end method
