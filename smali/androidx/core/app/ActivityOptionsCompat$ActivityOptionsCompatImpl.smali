.class Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
.super Landroidx/core/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatImpl"
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    move-object v1, p1

    .local v1, "activityOptions":Landroid/app/ActivityOptions;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/app/ActivityOptionsCompat;-><init>()V

    .line 257
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 258
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 293
    const/4 v1, 0x0

    move-object v0, v1

    .line 295
    .end local v0    # "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    move-object v1, p1

    .local v1, "receiver":Landroid/app/PendingIntent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 277
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 279
    :cond_0
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroidx/core/app/ActivityOptionsCompat;
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    move-object v1, p1

    .local v1, "screenSpacePixelRect":Landroid/graphics/Rect;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 284
    move-object v2, v0

    move-object v0, v2

    .line 287
    .end local v0    # "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :goto_0
    return-object v0

    .line 286
    .restart local v0    # "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :cond_0
    new-instance v2, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v5, v1

    .line 287
    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    return-object v0
.end method

.method public update(Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 5

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    move-object v1, p1

    .local v1, "otherOptions":Landroidx/core/app/ActivityOptionsCompat;
    move-object v3, v1

    instance-of v3, v3, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    if-eqz v3, :cond_0

    .line 268
    move-object v3, v1

    check-cast v3, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    move-object v2, v3

    .line 270
    .local v2, "otherImpl":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 272
    .end local v2    # "otherImpl":Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :cond_0
    return-void
.end method
