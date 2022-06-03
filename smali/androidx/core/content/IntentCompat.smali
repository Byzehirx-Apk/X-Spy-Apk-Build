.class public final Landroidx/core/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# static fields
.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_START_PLAYBACK:Ljava/lang/String; = "android.intent.extra.START_PLAYBACK"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/IntentCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "selectorAction":Ljava/lang/String;
    move-object v1, p1

    .local v1, "selectorCategory":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_0

    .line 78
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    .line 85
    .end local v0    # "selectorAction":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 83
    .restart local v0    # "selectorAction":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 84
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 85
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
