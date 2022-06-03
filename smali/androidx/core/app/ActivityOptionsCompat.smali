.class public Landroidx/core/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method public static makeBasic()Landroidx/core/app/ActivityOptionsCompat;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 247
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 249
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "source":Landroid/view/View;
    move v1, p1

    .local v1, "startX":I
    move v2, p2

    .local v2, "startY":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 123
    new-instance v5, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v5

    .line 126
    .end local v0    # "source":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "source":Landroid/view/View;
    :cond_0
    new-instance v5, Landroidx/core/app/ActivityOptionsCompat;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v5

    goto :goto_0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "enterResId":I
    move v2, p2

    .local v2, "exitResId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 69
    new-instance v3, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v3

    .line 72
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v3, Landroidx/core/app/ActivityOptionsCompat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "source":Landroid/view/View;
    move v1, p1

    .local v1, "startX":I
    move v2, p2

    .local v2, "startY":I
    move/from16 v3, p3

    .local v3, "startWidth":I
    move/from16 v4, p4

    .local v4, "startHeight":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 99
    new-instance v5, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v5

    .line 102
    .end local v0    # "source":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "source":Landroid/view/View;
    :cond_0
    new-instance v5, Landroidx/core/app/ActivityOptionsCompat;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v5

    goto :goto_0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 9
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "sharedElement":Landroid/view/View;
    move-object v2, p2

    .local v2, "sharedElementName":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 180
    new-instance v3, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v3

    .line 183
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v3, Landroidx/core/app/ActivityOptionsCompat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 10
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/app/ActivityOptionsCompat;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "sharedElements":[Landroidx/core/util/Pair;, "[Landroidx/core/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 208
    const/4 v4, 0x0

    move-object v2, v4

    .line 209
    .local v2, "pairs":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 210
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Landroid/util/Pair;

    move-object v2, v4

    .line 211
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 212
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    move v8, v3

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "i":I
    :cond_0
    new-instance v4, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    .line 217
    invoke-static {v6, v7}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v4

    .line 219
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "pairs":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    new-instance v4, Landroidx/core/app/ActivityOptionsCompat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v4

    goto :goto_1
.end method

.method public static makeTaskLaunchBehind()Landroidx/core/app/ActivityOptionsCompat;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 235
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/app/ActivityOptionsCompat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidx/core/app/ActivityOptionsCompat;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "source":Landroid/view/View;
    move-object v1, p1

    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    move v2, p2

    .local v2, "startX":I
    move v3, p3

    .local v3, "startY":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 152
    new-instance v4, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v4

    .line 155
    .end local v0    # "source":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "source":Landroid/view/View;
    :cond_0
    new-instance v4, Landroidx/core/app/ActivityOptionsCompat;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ActivityOptionsCompat;
    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 374
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat;
    move-object v1, p1

    .local v1, "screenSpacePixelRect":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ActivityOptionsCompat;
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ActivityOptionsCompat;
    return-object v0
.end method

.method public update(Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 0
    .param p1, "otherOptions"    # Landroidx/core/app/ActivityOptionsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 346
    return-void
.end method
