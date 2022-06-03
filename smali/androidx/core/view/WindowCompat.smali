.class public final Landroidx/core/view/WindowCompat;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# static fields
.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requireViewById(Landroid/view/Window;I)Landroid/view/View;
    .locals 7
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/Window;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "window":Landroid/view/Window;
    move v1, p1

    .local v1, "id":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 86
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 93
    .end local v0    # "window":Landroid/view/Window;
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "window":Landroid/view/Window;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 90
    .local v2, "view":Landroid/view/View;, "TT;"
    move-object v3, v2

    if-nez v3, :cond_1

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ID does not reference a View inside this Window"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
