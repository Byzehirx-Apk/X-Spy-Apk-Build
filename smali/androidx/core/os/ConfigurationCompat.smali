.class public final Landroidx/core/os/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/ConfigurationCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "configuration":Landroid/content/res/Configuration;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 38
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    move-object v0, v1

    .line 40
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :goto_0
    return-object v0

    .restart local v0    # "configuration":Landroid/content/res/Configuration;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
