.class Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/SharedPreferencesCompat$EditorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;
    move-object v1, p1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 50
    .local v2, "unused":Ljava/lang/AbstractMethodError;
    move-object v3, v1

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    goto :goto_0
.end method
