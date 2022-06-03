.class public final Landroidx/core/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/SharedPreferencesCompat$EditorCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v1, v0

    new-instance v2, Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;-><init>()V

    iput-object v2, v1, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    .line 59
    return-void
.end method

.method public static getInstance()Landroidx/core/content/SharedPreferencesCompat$EditorCompat;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    sget-object v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;-><init>()V

    sput-object v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    .line 69
    :cond_0
    sget-object v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/SharedPreferencesCompat$EditorCompat;
    move-object v1, p1

    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 81
    return-void
.end method
