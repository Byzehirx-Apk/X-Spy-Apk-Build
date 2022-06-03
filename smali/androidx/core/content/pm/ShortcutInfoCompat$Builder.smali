.class public Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "id":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 185
    move-object v3, v0

    new-instance v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v4, v3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 186
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 187
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/content/pm/ShortcutInfoCompat;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Shortcut must have a non-empty label"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 306
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Shortcut must have an intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 4
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "activity":Landroid/content/ComponentName;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 276
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setAlwaysBadged()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 3

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    .line 293
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "disabledMessage":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 228
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "icon":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 263
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 8
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 4
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "intents":[Landroid/content/Intent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 254
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "longLabel":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 216
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    move-object v1, p1

    .local v1, "shortLabel":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 202
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    return-object v0
.end method
