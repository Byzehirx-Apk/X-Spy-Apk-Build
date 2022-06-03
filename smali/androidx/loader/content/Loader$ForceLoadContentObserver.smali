.class public final Landroidx/loader/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/loader/content/Loader;


# direct methods
.method public constructor <init>(Landroidx/loader/content/Loader;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader$ForceLoadContentObserver;, "Landroidx/loader/content/Loader<TD;>.ForceLoadContentObserver;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/loader/content/Loader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Landroidx/loader/content/Loader;

    .line 59
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader$ForceLoadContentObserver;, "Landroidx/loader/content/Loader<TD;>.ForceLoadContentObserver;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/loader/content/Loader$ForceLoadContentObserver;, "Landroidx/loader/content/Loader<TD;>.ForceLoadContentObserver;"
    return v0
.end method

.method public onChange(Z)V
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/Loader$ForceLoadContentObserver;, "Landroidx/loader/content/Loader<TD;>.ForceLoadContentObserver;"
    move v1, p1

    .local v1, "selfChange":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Landroidx/loader/content/Loader;

    invoke-virtual {v2}, Landroidx/loader/content/Loader;->onContentChanged()V

    .line 70
    return-void
.end method
